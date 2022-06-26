/**
 *  dpdk学习demo
 */

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include <errno.h>
#include <sys/queue.h>

#include <rte_memory.h>
#include <rte_launch.h>
#include <rte_eal.h>
#include <rte_per_lcore.h>
#include <rte_lcore.h>
#include <rte_debug.h>
#include <rte_ethdev.h>
#include <rte_cycles.h>
#include <rte_mbuf.h>

#define RX_RING_SIZE 1024
#define TX_RING_SIZE 1024

#define NUM_MBUFS 8191
#define MBUF_CACHE_SIZE 250
#define BURST_SIZE 32
/**
 * @berif dump dev info
 *
 */
void dump_eth_dev_info(uint16_t port, struct rte_eth_dev_info *dev_info)
{
	printf("-------------dump port:%hu-----------------\n", port);
	// struct rte_device *device; /**< Generic device information */
	printf("name:%s\n", dev_info->driver_name);
	printf("if_index:%u\n", dev_info->if_index);

	// if_indextoname()
	printf("min_mtu:%hu max_mtu:%hu\n", dev_info->min_mtu, dev_info->max_mtu);

	// const uint32_t *dev_flags; /**< Device flags */
	printf("min_rx_bufsize:%u max_rx_pktlen:%u\n", dev_info->min_rx_bufsize, dev_info->max_rx_pktlen);

	printf("max_lro_pkt_size:%u\n", dev_info->max_lro_pkt_size);
	printf("max_lro_pkt_size:%u\n", dev_info->max_lro_pkt_size);
	printf("max_rx_queues:%hu max_tx_queues:%hu\n", dev_info->max_rx_queues, dev_info->max_rx_queues);

	uint32_t max_mac_addrs; /**< Maximum number of MAC addresses. */
	/** Maximum number of hash MAC addresses for MTA and UTA. */
	printf("max_hash_mac_addrs:%u\n", dev_info->max_hash_mac_addrs);
	printf("max_vfs:%hu\n", dev_info->max_vfs);
	printf("max_vmdq_pools:%hu\n", dev_info->max_vmdq_pools);

	// struct rte_eth_rxseg_capa rx_seg_capa; /**< Segmentation capability.*/
	/** All Rx offload capabilities including all per-queue ones */
	printf("rx_offload_capa:%lu tx_offload_capa:%lu\n", dev_info->rx_offload_capa, dev_info->tx_offload_capa);

	/** Device per-queue Rx offload capabilities. */
	printf("rx_queue_offload_capa:%lu tx_queue_offload_capa:%lu\n", dev_info->rx_queue_offload_capa, dev_info->tx_queue_offload_capa);

	/** Device redirection table size, the total number of entries. */
	printf("reta_size:%hu\n", dev_info->reta_size);

	printf("hash_key_size:%hhu\n", dev_info->hash_key_size);

	printf("flow_type_rss_offloads:%lu\n", dev_info->flow_type_rss_offloads);

	// struct rte_eth_rxconf default_rxconf; /**< Default Rx configuration */
	// struct rte_eth_txconf default_txconf; /**< Default Tx configuration */
	printf("vmdq_queue_base:%hu vmdq_queue_num:%hu vmdq_pool_base:%hu\n", dev_info->vmdq_queue_base, dev_info->vmdq_queue_num, dev_info->vmdq_pool_base);

	// struct rte_eth_desc_lim rx_desc_lim; /**< Rx descriptors limits */
	// struct rte_eth_desc_lim tx_desc_lim; /**< Tx descriptors limits */
	uint32_t speed_capa; /**< Supported speeds bitmap (RTE_ETH_LINK_SPEED_). */
	printf("speed_capa:%u\n", dev_info->speed_capa);
	/** Configured number of Rx/Tx queues */
	printf("nb_rx_queues:%hu nb_tx_queues:%hu\n", dev_info->nb_rx_queues, dev_info->nb_tx_queues);

	/** Rx parameter recommendations */
	// struct rte_eth_dev_portconf default_rxportconf;
	/** Tx parameter recommendations */
	// struct rte_eth_dev_portconf default_txportconf;
	/** Generic device capabilities (RTE_ETH_DEV_CAPA_). */
	printf("dev_capa:%lu\n", dev_info->dev_capa);
	/**
	 * Switching information for ports on a device with a
	 * embedded managed interconnect/switch.s
	 */
	// struct rte_eth_switch_info switch_info;
	printf("------------------------------------\n");
}

static inline int
port_init(uint16_t port, struct rte_mempool *mbuf_pool)
{
	printf("start to init port:%hu\n", port);

	if (!rte_eth_dev_is_valid_port(port))
	{
		printf("port %hu is unuseable\n", port);
		return -1;
	}

	struct rte_eth_dev_info dev_info;
	int retval = rte_eth_dev_info_get(port, &dev_info);
	if (retval != 0)
	{
		printf("Error during getting device (port %u) info: %s\n", port, strerror(-retval));
		return retval;
	}
	else
	{
		dump_eth_dev_info(port, &dev_info);
	}

	struct rte_eth_conf port_conf;
	memset(&port_conf, 0, sizeof(struct rte_eth_conf));
	if (dev_info.tx_offload_capa & RTE_ETH_TX_OFFLOAD_MBUF_FAST_FREE)
		port_conf.txmode.offloads |= RTE_ETH_TX_OFFLOAD_MBUF_FAST_FREE;

	const uint16_t rx_rings = 1, tx_rings = 1;
	retval = rte_eth_dev_configure(port, rx_rings, tx_rings, &port_conf);
	if (retval != 0)
		return retval;

	uint16_t nb_rxd = RX_RING_SIZE;
	uint16_t nb_txd = TX_RING_SIZE;
	retval = rte_eth_dev_adjust_nb_rx_tx_desc(port, &nb_rxd, &nb_txd);
	if (retval != 0)
		return retval;

	/* Allocate and set up 1 RX queue per Ethernet port. */
	for (uint16_t q = 0; q < rx_rings; q++)
	{
		retval = rte_eth_rx_queue_setup(port, q, nb_rxd, rte_eth_dev_socket_id(port), NULL, mbuf_pool);
		if (retval < 0)
			return retval;
	}

	struct rte_eth_txconf txconf = dev_info.default_txconf;
	txconf.offloads = port_conf.txmode.offloads;

	/* Allocate and set up 1 TX queue per Ethernet port. */
	for (uint16_t q = 0; q < tx_rings; q++)
	{
		retval = rte_eth_tx_queue_setup(port, q, nb_txd, rte_eth_dev_socket_id(port), &txconf);
		if (retval < 0)
			return retval;
	}

	/* Starting Ethernet port. 8< */
	retval = rte_eth_dev_start(port); //启动网口
	/* >8 End of starting of ethernet port. */
	if (retval < 0)
		return retval;

	/* Display the port MAC address. */
	struct rte_ether_addr addr;
	retval = rte_eth_macaddr_get(port, &addr); //获取网口mac地址
	if (retval != 0)
		return retval;

	printf("Port %u MAC: %02" PRIx8 " %02" PRIx8 " %02" PRIx8
		   " %02" PRIx8 " %02" PRIx8 " %02" PRIx8 "\n",
		   port, RTE_ETHER_ADDR_BYTES(&addr));

	/* Enable RX in promiscuous mode for the Ethernet device. */
	retval = rte_eth_promiscuous_enable(port); //开启混杂模式
	/* End of setting RX port in promiscuous mode. */
	if (retval != 0)
		return retval;

	return 0;
}

static __rte_noreturn void
lcore_rcv(void)
{

	unsigned lcore_id;
	lcore_id = rte_lcore_id();
	printf("hello from core %u\n", lcore_id);

	uint16_t port;

	/*
	 * Check that the port is on the same NUMA node as the polling thread
	 * for best performance.
	 */
	RTE_ETH_FOREACH_DEV(port)
	if (rte_eth_dev_socket_id(port) >= 0 &&
		rte_eth_dev_socket_id(port) !=
			(int)rte_socket_id())
		printf("WARNING, port %u is on remote NUMA node to "
			   "polling thread.\n\tPerformance will "
			   "not be optimal.\n",
			   port);

	printf("\nCore %u forwarding packets. [Ctrl+C to quit]\n",
		   rte_lcore_id());

	/* Main work of application loop. 8< */
	for (;;)
	{
		/*
		 * Receive packets on a port and forward them on the paired
		 * port. The mapping is 0 -> 1, 1 -> 0, 2 -> 3, 3 -> 2, etc.
		 */
		RTE_ETH_FOREACH_DEV(port)
		{

			/* Get burst of RX packets, from first port of pair. */
			struct rte_mbuf *bufs[BURST_SIZE];
			const uint16_t nb_rx = rte_eth_rx_burst(port, 0,
													bufs, BURST_SIZE);

			if (unlikely(nb_rx == 0)) //收包个数为0，继续
				continue;

			/* Send burst of TX packets, to second port of pair. */
			const uint16_t nb_tx = rte_eth_tx_burst(port ^ 1, 0,
													bufs, nb_rx);

			/* Free any unsent packets. */
			if (unlikely(nb_tx < nb_rx))
			{
				uint16_t buf;
				for (buf = nb_tx; buf < nb_rx; buf++)
					rte_pktmbuf_free(bufs[buf]);
			}
		}
	}
	/* >8 End of loop. */
}

static __rte_noreturn void
lcore_snd(void)
{
}

int main(int argc, char **argv)
{
	int ret;
	ret = rte_eal_init(argc, argv);
	if (ret < 0)
		rte_panic("Cannot init EAL\n");

	argc -= ret;
	argv += ret;

	// socket ID
	uint32_t socket_id = rte_socket_id();
	printf("socket-id: %u\n", socket_id);

	// locres num
	unsigned lcores;
	lcores = rte_lcore_count();
	printf("lcores:%u\n", lcores);

	// nic ports
	uint16_t nb_ports;
	nb_ports = rte_eth_dev_count_avail();
	printf("number of ports:%hu\n", nb_ports);

	// mempool
	struct rte_mempool *mbuf_pool;
	mbuf_pool = rte_pktmbuf_pool_create("MBUF_POOL", NUM_MBUFS * nb_ports,
										MBUF_CACHE_SIZE, 0, RTE_MBUF_DEFAULT_BUF_SIZE, rte_socket_id());
	if (mbuf_pool == NULL)
		rte_exit(EXIT_FAILURE, "Cannot create mbuf pool\n");
	else
		printf("create mempool\n");

	// init port
	uint16_t portid;
	RTE_ETH_FOREACH_DEV(portid)
	if (port_init(portid, mbuf_pool) != 0)
		rte_exit(EXIT_FAILURE, "Cannot init port %" PRIu16 "\n", portid);

	//	unsigned lcore_id;
	//	RTE_LCORE_FOREACH_WORKER(lcore_id)
	//	{
	//		rte_eal_remote_launch(lcore_snd, NULL, lcore_id); //每个从核上启动任务
	//	}

	//	lcore_rcv(); //主核也启动任务

	// rte_eal_mp_wait_lcore(); //主核任务结束后，等待从核任务结束，类似于父进程等待子进程的wait

	rte_eal_cleanup(); //清理eal

	return 0;
}