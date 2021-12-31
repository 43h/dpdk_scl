#! /bin/sh

DPDK_PATH=/code/dpdk-21.11

DPDK_BUILD=$DPDK_PATH/build

#dpdk sdk
DPDK_SDK=$DPDK_PATH/sdk
DPDK_INCLUDE=$DPDK_SDK/include/
DPDK_INCLUDE_GENERIC=$DPDK_INCLUDE/generic/
DPDK_LIB=$DPDK_SDK/lib
DPDK_BIN=$DPDK_SDK/bin

#check dpdk
if [ ! -d $DPDK_PATH ]; then
  echo "dpdk path is wrong"
  exit 1
fi

#check build
if [ ! -d $DPDK_BUILD ]; then
  echo "please compile dpdk"
  exit 1
fi

#mkdir sdk
if [ -d $DPDK_SDK ]; then
  rm -rf $DPDK_SDK
fi

mkdir $DPDK_SDK
mkdir $DPDK_INCLUDE
mkdir $DPDK_INCLUDE_GENERIC
mkdir $DPDK_BIN
mkdir $DPDK_LIB

cp -f $DPDK_PATH/config/rte_config.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/kvargs/rte_kvargs.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/telemetry/rte_telemetry.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/generic/rte_atomic.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_byteorder.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_cpuflags.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_cycles.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_io.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_mcslock.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_memcpy.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_pause.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_power_intrinsics.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_prefetch.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_rwlock.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_spinlock.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_ticketlock.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/include/generic/rte_vect.h $DPDK_INCLUDE_GENERIC
cp -f $DPDK_PATH/lib/eal/x86/include/rte_atomic.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_byteorder.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_cpuflags.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_cycles.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_io.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_mcslock.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_memcpy.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_pause.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_pflock.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_power_intrinsics.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_prefetch.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_rtm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_rwlock.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_spinlock.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_ticketlock.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_vect.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_atomic_32.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_atomic_64.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_byteorder_32.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/x86/include/rte_byteorder_64.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_alarm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_bitmap.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_bitops.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_branch_prediction.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_bus.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_class.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_common.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_compat.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_debug.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_dev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_devargs.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_eal.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_eal_memconfig.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_eal_trace.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_errno.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_epoll.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_fbarray.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_hexdump.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_hypervisor.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_interrupts.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_keepalive.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_launch.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_lcore.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_log.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_malloc.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_memory.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_memzone.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_pci_dev_feature_defs.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_pci_dev_features.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_per_lcore.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_random.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_reciprocal.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_service.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_service_component.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_string_fns.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_tailq.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_thread.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_time.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_trace.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_trace_point.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_trace_point_register.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_uuid.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_version.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/include/rte_vfio.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eal/linux/include/rte_os.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_elem.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_elem_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_c11_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_generic_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_hts.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_hts_elem_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_peek.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_peek_elem_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_peek_zc.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_rts.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ring/rte_ring_rts_elem_pvt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/rcu/rte_rcu_qsbr.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mempool/rte_mempool.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mempool/rte_mempool_trace.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mempool/rte_mempool_trace_fp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mbuf/rte_mbuf.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mbuf/rte_mbuf_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mbuf/rte_mbuf_ptype.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mbuf/rte_mbuf_pool_ops.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/mbuf/rte_mbuf_dyn.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_ip.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_tcp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_udp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_esp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_sctp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_icmp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_arp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_ether.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_vxlan.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_gre.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_gtp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_net.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_net_crc.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_mpls.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_higig.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_ecpri.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_geneve.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_l2tpv2.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/net/rte_ppp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/meter/rte_meter.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_ethdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_ethdev_trace.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_ethdev_trace_fp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_dev_info.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_flow.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_flow_driver.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_mtr.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_mtr_driver.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_tm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_tm_driver.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_ethdev_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ethdev/rte_eth_ctrl.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pci/rte_pci.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse_num.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse_ipaddr.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse_etheraddr.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse_string.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_rdline.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_vt100.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_socket.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_cirbuf.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cmdline/cmdline_parse_portlist.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/metrics/rte_metrics.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/metrics/rte_metrics_telemetry.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_fbk_hash.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_hash_crc.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_hash.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_jhash.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_thash.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_thash_gfni.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_crc_arm64.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/hash/rte_thash_x86_gfni.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/timer/rte_timer.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/acl/rte_acl.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/acl/rte_acl_osdep.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bbdev/rte_bbdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bbdev/rte_bbdev_pmd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bbdev/rte_bbdev_op.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bitratestats/rte_bitrate.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bpf/bpf_def.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bpf/rte_bpf.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/bpf/rte_bpf_ethdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cfgfile/rte_cfgfile.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/compressdev/rte_compressdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/compressdev/rte_compressdev_pmd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/compressdev/rte_compressdev_internal.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/compressdev/rte_comp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_cryptodev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_cryptodev_trace.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_cryptodev_trace_fp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_crypto.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_crypto_sym.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_crypto_asym.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/cryptodev/rte_cryptodev_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/distributor/rte_distributor.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/efd/rte_efd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_event_crypto_adapter.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_event_eth_rx_adapter.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_event_eth_tx_adapter.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_event_ring.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_event_timer_adapter.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_eventdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_eventdev_trace_fp.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/eventdev/rte_eventdev_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/gpudev/rte_gpudev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/gro/rte_gro.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/gso/rte_gso.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ip_frag/rte_ip_frag.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/jobstats/rte_jobstats.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/kni/rte_kni.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/kni/rte_kni_common.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/latencystats/rte_latencystats.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm6.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm_altivec.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm_neon.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm_sse.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/lpm/rte_lpm_sve.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/member/rte_member.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pcapng/rte_pcapng.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/power/rte_power.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/power/rte_power_empty_poll.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/power/rte_power_pmd_mgmt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/power/rte_power_guest_channel.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/rawdev/rte_rawdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/rawdev/rte_rawdev_pmd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/regexdev/rte_regexdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/regexdev/rte_regexdev_driver.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/regexdev/rte_regexdev_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/dmadev/rte_dmadev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/dmadev/rte_dmadev_core.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/rib/rte_rib.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/rib/rte_rib6.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/reorder/rte_reorder.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/sched/rte_approx.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/sched/rte_red.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/sched/rte_sched.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/sched/rte_sched_common.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/sched/rte_pie.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/security/rte_security.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/security/rte_security_driver.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/stack/rte_stack.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/stack/rte_stack_std.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/stack/rte_stack_lf.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/stack/rte_stack_lf_generic.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/stack/rte_stack_lf_c11.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/vhost/rte_vdpa.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/vhost/rte_vhost.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/vhost/rte_vhost_async.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/vhost/rte_vhost_crypto.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ipsec/rte_ipsec.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ipsec/rte_ipsec_sa.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ipsec/rte_ipsec_sad.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/ipsec/rte_ipsec_group.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/fib/rte_fib.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/fib/rte_fib6.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_ethdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_fd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_frag.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_ras.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_ring.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_sched.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_source_sink.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_sym_crypto.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_eventdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_swx_port.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_swx_port_ethdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_swx_port_fd.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_swx_port_ring.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_swx_port_source_sink.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/port/rte_port_kni.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pdump/rte_pdump.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_lru.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_swx_table.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_swx_table_em.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_swx_table_learner.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_swx_table_selector.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_swx_table_wm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_acl.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_array.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_hash.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_hash_cuckoo.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_hash_func.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_lpm.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_lpm_ipv6.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_stub.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_lru_arm64.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_lru_x86.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/table/rte_table_hash_func_arm64.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_pipeline.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_port_in_action.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_table_action.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_swx_pipeline.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_swx_extern.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/pipeline/rte_swx_ctl.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/flow_classify/rte_flow_classify.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/graph/rte_graph.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/graph/rte_graph_worker.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/node/rte_node_ip4_api.h $DPDK_INCLUDE
cp -f $DPDK_PATH/lib/node/rte_node_eth_api.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/auxiliary/rte_bus_auxiliary.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/ifpga/rte_bus_ifpga.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/pci/rte_bus_pci.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/vdev/rte_bus_vdev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/vmbus/rte_bus_vmbus.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/bus/vmbus/rte_vmbus_reg.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/mempool/dpaa2/rte_dpaa2_mempool.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/dma/cnxk/cnxk_dmadev.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/avp/rte_avp_common.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/avp/rte_avp_fifo.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/bnxt/rte_pmd_bnxt.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/bonding/rte_eth_bond.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/bonding/rte_eth_bond_8023ad.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/dpaa/rte_pmd_dpaa.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/dpaa2/rte_pmd_dpaa2.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/i40e/rte_pmd_i40e.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/iavf/rte_pmd_iavf.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/ice/rte_pmd_ice.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/ixgbe/rte_pmd_ixgbe.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/ring/rte_eth_ring.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/softnic/rte_eth_softnic.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/txgbe/rte_pmd_txgbe.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/net/vhost/rte_eth_vhost.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/raw/cnxk_bphy/rte_pmd_bphy.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/raw/dpaa2_cmdif/rte_pmd_dpaa2_cmdif.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/raw/dpaa2_qdma/rte_pmd_dpaa2_qdma.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/raw/ntb/rte_pmd_ntb.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/crypto/scheduler/rte_cryptodev_scheduler.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/crypto/scheduler/rte_cryptodev_scheduler_operations.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/event/dlb2/rte_pmd_dlb2.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/baseband/acc100/rte_acc100_cfg.h $DPDK_INCLUDE
cp -f $DPDK_PATH/drivers/baseband/fpga_5gnr_fec/rte_pmd_fpga_5gnr_fec.h $DPDK_INCLUDE
cp -f $DPDK_PATH/build/rte_build_config.h $DPDK_INCLUDE


#static library
cp -f $DPDK_BUILD/lib/*.a  $DPDK_LIB
cp -f $DPDK_BUILD/drivers/*.a $DPDK_LIB


cp -f $DPDK_PATH/usertools/dpdk-devbind.py $DPDK_BIN
cp -f $DPDK_PATH/usertools/dpdk-pmdinfo.py $DPDK_BIN
cp -f $DPDK_PATH/usertools/dpdk-telemetry.py $DPDK_BIN
cp -f $DPDK_PATH/usertools/dpdk-hugepages.py $DPDK_BIN


cp -f $DPDK_BUILD/app/dpdk-dumpcap    $DPDK_BIN
cp -f $DPDK_BUILD/app/dpdk-pdump      $DPDK_BIN
cp -f $DPDK_BUILD/app/dpdk-proc-info  $DPDK_BIN