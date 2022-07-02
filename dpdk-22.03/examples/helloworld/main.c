/* SPDX-License-Identifier: BSD-3-Clause
 * Copyright(c) 2010-2014 Intel Corporation
 */

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <errno.h>
#include <sys/queue.h>

#include <rte_memory.h>
#include <rte_launch.h>
#include <rte_eal.h>
#include <rte_per_lcore.h>
#include <rte_lcore.h>
#include <rte_debug.h>

/* Launch a function on lcore. 8< */
static int
lcore_hello(__rte_unused void *arg)
{
	unsigned lcore_id;
	lcore_id = rte_lcore_id(); //获取逻辑核ID
	printf("hello from core %u\n", lcore_id);
	return 0;
}
/* >8 End of launching function on lcore. */

/* Initialization of Environment Abstraction Layer (EAL). 8< */
int
main(int argc, char **argv)
{
	int ret;
	unsigned lcore_id;

	ret = rte_eal_init(argc, argv);	//EAL环境初始化
	if (ret < 0)
		rte_panic("Cannot init EAL\n");
	/* >8 End of initialization of Environment Abstraction Layer */

	/* Launches the function on each lcore. 8< */
	RTE_LCORE_FOREACH_WORKER(lcore_id) {
		/* Simpler equivalent. 8< */
		rte_eal_remote_launch(lcore_hello, NULL, lcore_id);  //从核上启动任务
		/* >8 End of simpler equivalent. */
	}

	/* call it on main lcore too */
	lcore_hello(NULL); //主核启动任务
	/* >8 End of launching the function on each lcore. */

	rte_eal_mp_wait_lcore(); //主核任务结束后，等待从核任务结束，类似于父进程等待子进程的wait

	/* clean up the EAL */
	rte_eal_cleanup(); //清理eal

	return 0;
}
