# dpdk源码阅读笔记

## 版本
22.03

## 源码目录
├── ABI_VERSION<br>
├── app<br>
│   ├── dumpcap<br>
│   │   ├── main.c<br>


│   ├── pdump<br>
│   │   ├── main.c<br>

│   ├── proc-info<br>
│   │   ├── main.c<br>

│   ├── test<br>
│   │   ├── commands.c<br>
│   │   ├── has_hugepage.py<br>

│   │   ├── packet_burst_generator.c<br>
│   │   ├── packet_burst_generator.h<br>
│   │   ├── process.h<br>
│   │   ├── resource.c<br>
│   │   ├── resource.h<br>
│   │   ├── sample_packet_forward.c<br>
│   │   ├── sample_packet_forward.h<br>
│   │   ├── test_acl.c<br>
│   │   ├── test_acl.h<br>
│   │   ├── test_alarm.c<br>
│   │   ├── test_atomic.c<br>
│   │   ├── test_barrier.c<br>
│   │   ├── test_bitmap.c<br>
│   │   ├── test_bitops.c<br>
│   │   ├── test_bitratestats.c<br>
│   │   ├── test_bpf.c<br>
│   │   ├── test_byteorder.c<br>
│   │   ├── test.c<br>
│   │   ├── test_cfgfile.c<br>
│   │   ├── test_cfgfiles<br>
│   │   │   └── etc<br>
│   │   │       ├── empty.ini<br>
│   │   │       ├── empty_key_value.ini<br>
│   │   │       ├── invalid_section.ini<br>
│   │   │       ├── line_too_long.ini<br>
│   │   │       ├── missing_section.ini<br>
│   │   │       ├── realloc_sections.ini<br>
│   │   │       ├── sample1.ini<br>
│   │   │       └── sample2.ini<br>
│   │   ├── test_cksum.c<br>
│   │   ├── test_cmdline.c<br>
│   │   ├── test_cmdline_cirbuf.c<br>
│   │   ├── test_cmdline_etheraddr.c<br>
│   │   ├── test_cmdline.h<br>
│   │   ├── test_cmdline_ipaddr.c<br>
│   │   ├── test_cmdline_lib.c<br>
│   │   ├── test_cmdline_num.c<br>
│   │   ├── test_cmdline_portlist.c<br>
│   │   ├── test_cmdline_string.c<br>
│   │   ├── test_common.c<br>
│   │   ├── test_compressdev.c<br>
│   │   ├── test_compressdev_test_buffer.h<br>
│   │   ├── test_cpuflags.c<br>
│   │   ├── test_crc.c<br>
│   │   ├── test_cryptodev_aead_test_vectors.h<br>
│   │   ├── test_cryptodev_aes_test_vectors.h<br>
│   │   ├── test_cryptodev_asym.c<br>
│   │   ├── test_cryptodev_asym_util.h<br>
│   │   ├── test_cryptodev_blockcipher.c<br>
│   │   ├── test_cryptodev_blockcipher.h<br>
│   │   ├── test_cryptodev.c<br>
│   │   ├── test_cryptodev_des_test_vectors.h<br>
│   │   ├── test_cryptodev_dh_test_vectors.h<br>
│   │   ├── test_cryptodev_dsa_test_vectors.h<br>
│   │   ├── test_cryptodev_ecdsa_test_vectors.h<br>
│   │   ├── test_cryptodev_ecpm_test_vectors.h<br>
│   │   ├── test_cryptodev.h<br>
│   │   ├── test_cryptodev_hash_test_vectors.h<br>
│   │   ├── test_cryptodev_hmac_test_vectors.h<br>
│   │   ├── test_cryptodev_kasumi_hash_test_vectors.h<br>
│   │   ├── test_cryptodev_kasumi_test_vectors.h<br>
│   │   ├── test_cryptodev_mixed_test_vectors.h<br>
│   │   ├── test_cryptodev_mod_test_vectors.h<br>
│   │   ├── test_cryptodev_rsa_test_vectors.h<br>
│   │   ├── test_cryptodev_security_docsis_test_vectors.h<br>
│   │   ├── test_cryptodev_security_ipsec.c<br>
│   │   ├── test_cryptodev_security_ipsec.h<br>
│   │   ├── test_cryptodev_security_ipsec_test_vectors.h<br>
│   │   ├── test_cryptodev_security_pdcp.c<br>
│   │   ├── test_cryptodev_security_pdcp_sdap_test_vectors.h<br>
│   │   ├── test_cryptodev_security_pdcp_test_func.h<br>
│   │   ├── test_cryptodev_security_pdcp_test_vectors.h<br>
│   │   ├── test_cryptodev_snow3g_hash_test_vectors.h<br>
│   │   ├── test_cryptodev_snow3g_test_vectors.h<br>
│   │   ├── test_cryptodev_zuc_test_vectors.h<br>
│   │   ├── test_cycles.c<br>
│   │   ├── test_debug.c<br>
│   │   ├── test_devargs.c<br>
│   │   ├── test_distributor.c<br>
│   │   ├── test_distributor_perf.c<br>
│   │   ├── test_dmadev_api.c<br>
│   │   ├── test_dmadev_api.h<br>
│   │   ├── test_dmadev.c<br>
│   │   ├── test_eal_flags.c<br>
│   │   ├── test_eal_fs.c<br>
│   │   ├── test_efd.c<br>
│   │   ├── test_efd_perf.c<br>
│   │   ├── test_errno.c<br>
│   │   ├── test_ethdev_link.c<br>
│   │   ├── test_event_crypto_adapter.c<br>
│   │   ├── test_eventdev.c<br>
│   │   ├── test_event_eth_rx_adapter.c<br>
│   │   ├── test_event_eth_tx_adapter.c<br>
│   │   ├── test_event_ring.c<br>
│   │   ├── test_event_timer_adapter.c<br>
│   │   ├── test_external_mem.c<br>
│   │   ├── test_fbarray.c<br>
│   │   ├── test_fib6.c<br>
│   │   ├── test_fib6_perf.c<br>
│   │   ├── test_fib.c<br>
│   │   ├── test_fib_perf.c<br>
│   │   ├── test_flow_classify.c<br>
│   │   ├── test_flow_classify.h<br>
│   │   ├── test_func_reentrancy.c<br>
│   │   ├── test_graph.c<br>
│   │   ├── test_graph_perf.c<br>
│   │   ├── test.h<br>
│   │   ├── test_hash.c<br>
│   │   ├── test_hash_functions.c<br>
│   │   ├── test_hash_multiwriter.c<br>
│   │   ├── test_hash_perf.c<br>
│   │   ├── test_hash_readwrite.c<br>
│   │   ├── test_hash_readwrite_lf_perf.c<br>
│   │   ├── test_interrupts.c<br>
│   │   ├── test_ipfrag.c<br>
│   │   ├── test_ipsec.c<br>
│   │   ├── test_ipsec_perf.c<br>
│   │   ├── test_ipsec_sad.c<br>
│   │   ├── test_kni.c<br>
│   │   ├── test_kvargs.c<br>
│   │   ├── test_latencystats.c<br>
│   │   ├── test_lcores.c<br>
│   │   ├── test_link_bonding.c<br>
│   │   ├── test_link_bonding_mode4.c<br>
│   │   ├── test_link_bonding_rssconf.c<br>
│   │   ├── test_logs.c<br>
│   │   ├── test_lpm6.c<br>
│   │   ├── test_lpm6_data.h<br>
│   │   ├── test_lpm6_perf.c<br>
│   │   ├── test_lpm.c<br>
│   │   ├── test_lpm_perf.c<br>
│   │   ├── test_malloc.c<br>
│   │   ├── test_malloc_perf.c<br>
│   │   ├── test_mbuf.c<br>
│   │   ├── test_mcslock.c<br>
│   │   ├── test_member.c<br>
│   │   ├── test_member_perf.c<br>
│   │   ├── test_memcpy.c<br>
│   │   ├── test_memcpy_perf.c<br>
│   │   ├── test_memory.c<br>
│   │   ├── test_mempool.c<br>
│   │   ├── test_mempool_perf.c<br>
│   │   ├── test_memzone.c<br>
│   │   ├── test_meter.c<br>
│   │   ├── test_metrics.c<br>
│   │   ├── test_mp_secondary.c<br>
│   │   ├── test_pcapng.c<br>
│   │   ├── test_pdump.c<br>
│   │   ├── test_pdump.h<br>
│   │   ├── test_per_lcore.c<br>
│   │   ├── test_pflock.c<br>
│   │   ├── test_pie.c<br>
│   │   ├── test_pmd_perf.c<br>
│   │   ├── test_pmd_ring.c<br>
│   │   ├── test_pmd_ring_perf.c<br>
│   │   ├── test_power.c<br>
│   │   ├── test_power_cpufreq.c<br>
│   │   ├── test_power_kvm_vm.c<br>
│   │   ├── test_prefetch.c<br>
│   │   ├── test_rand_perf.c<br>
│   │   ├── test_rawdev.c<br>
│   │   ├── test_rcu_qsbr.c<br>
│   │   ├── test_rcu_qsbr_perf.c<br>
│   │   ├── test_reciprocal_division.c<br>
│   │   ├── test_reciprocal_division_perf.c<br>
│   │   ├── test_red.c<br>
│   │   ├── test_reorder.c<br>
│   │   ├── test_resource.c<br>
│   │   ├── test_rib6.c<br>
│   │   ├── test_rib.c<br>
│   │   ├── test_ring.c<br>
│   │   ├── test_ring.h<br>
│   │   ├── test_ring_hts_stress.c<br>
│   │   ├── test_ring_mpmc_stress.c<br>
│   │   ├── test_ring_mt_peek_stress.c<br>
│   │   ├── test_ring_mt_peek_stress_zc.c<br>
│   │   ├── test_ring_perf.c<br>
│   │   ├── test_ring_rts_stress.c<br>
│   │   ├── test_ring_st_peek_stress.c<br>
│   │   ├── test_ring_st_peek_stress_zc.c<br>
│   │   ├── test_ring_stress.c<br>
│   │   ├── test_ring_stress.h<br>
│   │   ├── test_ring_stress_impl.h<br>
│   │   ├── test_rwlock.c<br>
│   │   ├── test_sched.c<br>
│   │   ├── test_security.c<br>
│   │   ├── test_service_cores.c<br>
│   │   ├── test_spinlock.c<br>
│   │   ├── test_stack.c<br>
│   │   ├── test_stack_perf.c<br>
│   │   ├── test_string_fns.c<br>
│   │   ├── test_table_acl.c<br>
│   │   ├── test_table_acl.h<br>
│   │   ├── test_table.c<br>
│   │   ├── test_table_combined.c<br>
│   │   ├── test_table_combined.h<br>
│   │   ├── test_table.h<br>
│   │   ├── test_table_pipeline.c<br>
│   │   ├── test_table_pipeline.h<br>
│   │   ├── test_table_ports.c<br>
│   │   ├── test_table_ports.h<br>
│   │   ├── test_table_tables.c<br>
│   │   ├── test_table_tables.h<br>
│   │   ├── test_tailq.c<br>
│   │   ├── test_telemetry_data.c<br>
│   │   ├── test_telemetry_json.c<br>
│   │   ├── test_thash.c<br>
│   │   ├── test_thash_perf.c<br>
│   │   ├── test_ticketlock.c<br>
│   │   ├── test_timer.c<br>
│   │   ├── test_timer_perf.c<br>
│   │   ├── test_timer_racecond.c<br>
│   │   ├── test_timer_secondary.c<br>
│   │   ├── test_trace.c<br>
│   │   ├── test_trace.h<br>
│   │   ├── test_trace_perf.c<br>
│   │   ├── test_trace_register.c<br>
│   │   ├── test_vdev.c<br>
│   │   ├── test_version.c<br>
│   │   ├── test_xmmt_ops.h<br>
│   │   ├── virtual_pmd.c<br>
│   │   └── virtual_pmd.h<br>
│   ├── test-acl<br>
│   │   ├── input<br>
│   │   │   ├── acl1v4_5_rule<br>
│   │   │   ├── acl1v4_5_trace<br>
│   │   │   ├── acl1v6_1_rule<br>
│   │   │   └── acl1v6_1_trace<br>
│   │   ├── main.c<br>
│   │   └── test-acl.sh<br>
│   ├── test-bbdev<br>
│   │   ├── ldpc_dec_default.data -> test_vectors/ldpc_dec_v2342_drop.data<br>
│   │   ├── ldpc_enc_default.data -> test_vectors/ldpc_enc_v2342.data<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── test_bbdev.c<br>
│   │   ├── test_bbdev_perf.c<br>
│   │   ├── test-bbdev.py<br>
│   │   ├── test_bbdev_vector.c<br>
│   │   ├── test_bbdev_vector.h<br>
│   │   ├── test_vectors<br>
│   │   │   ├── bbdev_null.data<br>
│   │   │   ├── ldpc_dec_HARQ_1_0.data<br>
│   │   │   ├── ldpc_dec_HARQ_1_1.data<br>
│   │   │   ├── ldpc_dec_HARQ_1_2.data<br>
│   │   │   ├── ldpc_dec_v11835.data<br>
│   │   │   ├── ldpc_dec_v2342_drop.data<br>
│   │   │   ├── ldpc_dec_v7813.data<br>
│   │   │   ├── ldpc_dec_v8480.data<br>
│   │   │   ├── ldpc_dec_v8568.data<br>
│   │   │   ├── ldpc_dec_v9503.data<br>
│   │   │   ├── ldpc_enc_v11835.data<br>
│   │   │   ├── ldpc_enc_v2342.data<br>
│   │   │   ├── ldpc_enc_v7813.data<br>
│   │   │   ├── ldpc_enc_v8568.data<br>
│   │   │   ├── ldpc_enc_v9503.data<br>
│   │   │   ├── turbo_dec_c1_k40_r0_e17280_sbd_negllr.data<br>
│   │   │   ├── turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_high_snr.data<br>
│   │   │   ├── turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_low_snr.data<br>
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_posllr.data<br>
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_sbd_negllr.data<br>
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_sbd_posllr.data<br>
│   │   │   ├── turbo_dec_c2_k3136_r0_e4920_sbd_negllr_crc24b.data<br>
│   │   │   ├── turbo_enc_c1_k40_r0_e1190_rm.data<br>
│   │   │   ├── turbo_enc_c1_k40_r0_e1194_rm.data<br>
│   │   │   ├── turbo_enc_c1_k40_r0_e1196_rm.data<br>
│   │   │   ├── turbo_enc_c1_k40_r0_e272_rm.data<br>
│   │   │   ├── turbo_enc_c1_k6144_r0_e120_rm_rvidx.data<br>
│   │   │   ├── turbo_enc_c1_k6144_r0_e18444.data<br>
│   │   │   ├── turbo_enc_c1_k6144_r0_e18448_crc24a.data<br>
│   │   │   ├── turbo_enc_c1_k6144_r0_e32256_crc24b_rm.data<br>
│   │   │   └── turbo_enc_c3_k4800_r2_e14412_crc24b.data<br>
│   │   ├── turbo_dec_default.data -> test_vectors/turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_high_snr.data<br>
│   │   └── turbo_enc_default.data -> test_vectors/turbo_enc_c1_k6144_r0_e18444.data<br>
│   ├── test-cmdline<br>
│   │   ├── cmdline_test.c<br>
│   │   ├── cmdline_test_data.py<br>
│   │   ├── cmdline_test.h<br>
│   │   ├── cmdline_test.py<br>
│   │   ├── commands.c<br>
│   ├── test-compress-perf<br>
│   │   ├── comp_perf.h<br>
│   │   ├── comp_perf_options.h<br>
│   │   ├── comp_perf_options_parse.c<br>
│   │   ├── comp_perf_test_common.c<br>
│   │   ├── comp_perf_test_common.h<br>
│   │   ├── comp_perf_test_cyclecount.c<br>
│   │   ├── comp_perf_test_cyclecount.h<br>
│   │   ├── comp_perf_test_throughput.c<br>
│   │   ├── comp_perf_test_throughput.h<br>
│   │   ├── comp_perf_test_verify.c<br>
│   │   ├── comp_perf_test_verify.h<br>
│   │   ├── main.c<br>
│   ├── test-crypto-perf<br>
│   │   ├── configs<br>
│   │   │   ├── crypto-perf-aesni-gcm.json<br>
│   │   │   ├── crypto-perf-aesni-mb.json<br>
│   │   │   └── crypto-perf-qat.json<br>
│   │   ├── cperf.h<br>
│   │   ├── cperf_ops.c<br>
│   │   ├── cperf_ops.h<br>
│   │   ├── cperf_options.h<br>
│   │   ├── cperf_options_parsing.c<br>
│   │   ├── cperf_test_common.c<br>
│   │   ├── cperf_test_common.h<br>
│   │   ├── cperf_test_latency.c<br>
│   │   ├── cperf_test_latency.h<br>
│   │   ├── cperf_test_pmd_cyclecount.c<br>
│   │   ├── cperf_test_pmd_cyclecount.h<br>
│   │   ├── cperf_test_throughput.c<br>
│   │   ├── cperf_test_throughput.h<br>
│   │   ├── cperf_test_vector_parsing.c<br>
│   │   ├── cperf_test_vector_parsing.h<br>
│   │   ├── cperf_test_vectors.c<br>
│   │   ├── cperf_test_vectors.h<br>
│   │   ├── cperf_test_verify.c<br>
│   │   ├── cperf_test_verify.h<br>
│   │   ├── data<br>
│   │   │   ├── aes_cbc_128_sha.data<br>
│   │   │   ├── aes_cbc_192_sha.data<br>
│   │   │   └── aes_cbc_256_sha.data<br>
│   │   ├── dpdk-graph-crypto-perf.py<br>
│   │   ├── main.c<br>
│   ├── test-eventdev<br>
│   │   ├── evt_common.h<br>
│   │   ├── evt_main.c<br>
│   │   ├── evt_options.c<br>
│   │   ├── evt_options.h<br>
│   │   ├── evt_test.c<br>
│   │   ├── evt_test.h<br>
│   │   ├── parser.c<br>
│   │   ├── parser.h<br>
│   │   ├── test_order_atq.c<br>
│   │   ├── test_order_common.c<br>
│   │   ├── test_order_common.h<br>
│   │   ├── test_order_queue.c<br>
│   │   ├── test_perf_atq.c<br>
│   │   ├── test_perf_common.c<br>
│   │   ├── test_perf_common.h<br>
│   │   ├── test_perf_queue.c<br>
│   │   ├── test_pipeline_atq.c<br>
│   │   ├── test_pipeline_common.c<br>
│   │   ├── test_pipeline_common.h<br>
│   │   └── test_pipeline_queue.c<br>
│   ├── test-fib<br>
│   │   ├── main.c<br>
│   ├── test-flow-perf<br>
│   │   ├── actions_gen.c<br>
│   │   ├── actions_gen.h<br>
│   │   ├── config.h<br>
│   │   ├── flow_gen.c<br>
│   │   ├── flow_gen.h<br>
│   │   ├── items_gen.c<br>
│   │   ├── items_gen.h<br>
│   │   ├── main.c<br>
│   ├── test-gpudev<br>
│   │   ├── main.c<br>
│   ├── test-pipeline<br>
│   │   ├── config.c<br>
│   │   ├── init.c<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── pipeline_acl.c<br>
│   │   ├── pipeline_hash.c<br>
│   │   ├── pipeline_lpm.c<br>
│   │   ├── pipeline_lpm_ipv6.c<br>
│   │   ├── pipeline_stub.c<br>
│   │   └── runtime.c<br>
│   ├── test-pmd<br>
│   │   ├── 5tswap.c<br>
│   │   ├── bpf_cmd.c<br>
│   │   ├── bpf_cmd.h<br>
│   │   ├── cmd_flex_item.c<br>
│   │   ├── cmdline.c<br>
│   │   ├── cmdline_flow.c<br>
│   │   ├── cmdline_mtr.c<br>
│   │   ├── cmdline_mtr.h<br>
│   │   ├── cmdline_tm.c<br>
│   │   ├── cmdline_tm.h<br>
│   │   ├── config.c<br>
│   │   ├── csumonly.c<br>
│   │   ├── flowgen.c<br>
│   │   ├── icmpecho.c<br>
│   │   ├── ieee1588fwd.c<br>
│   │   ├── iofwd.c<br>
│   │   ├── macfwd.c<br>
│   │   ├── macswap.c<br>
│   │   ├── macswap_common.h<br>
│   │   ├── macswap.h<br>
│   │   ├── macswap_neon.h<br>
│   │   ├── macswap_sse.h<br>
│   │   ├── noisy_vnf.c<br>
│   │   ├── parameters.c<br>
│   │   ├── rxonly.c<br>
│   │   ├── shared_rxq_fwd.c<br>
│   │   ├── testpmd.c<br>
│   │   ├── testpmd.h<br>
│   │   ├── txonly.c<br>
│   │   └── util.c<br>
│   ├── test-regex<br>
│   │   ├── main.c<br>
│   └── test-sad<br>
│       ├── main.c<br>
├── buildtools<br>
│   ├── binutils-avx512-check.py<br>
│   ├── call-sphinx-build.py<br>
│   ├── check-symbols.sh<br>
│   ├── chkincs<br>
│   │   ├── gen_c_file_for_header.py<br>
│   │   ├── main.c<br>
│   │   ├── main.cpp<br>
│   ├── coff.py<br>
│   ├── gen-pmdinfo-cfile.py<br>
│   ├── get-cpu-count.py<br>
│   ├── get-numa-count.py<br>
│   ├── list-dir-globs.py<br>
│   ├── map-list-symbol.sh<br>
│   ├── map_to_win.py<br>
│   ├── options-ibverbs-static.sh<br>
│   ├── pkg-config<br>
│   │   └── set-static-linker-flags.py<br>
│   ├── pmdinfogen.py<br>
│   ├── symlink-drivers-solibs.py<br>
│   └── symlink-drivers-solibs.sh<br>
├── config<br>
│   ├── arm<br>
│   │   ├── arm32_armv8_linux_gcc<br>
│   │   ├── arm64_armada_linux_gcc<br>
│   │   ├── arm64_armv8_linux_clang_ubuntu1804<br>
│   │   ├── arm64_armv8_linux_gcc<br>
│   │   ├── arm64_bluefield_linux_gcc<br>
│   │   ├── arm64_centriq2400_linux_gcc<br>
│   │   ├── arm64_cn10k_linux_gcc<br>
│   │   ├── arm64_cn9k_linux_gcc<br>
│   │   ├── arm64_dpaa_linux_gcc<br>
│   │   ├── arm64_emag_linux_gcc<br>
│   │   ├── arm64_graviton2_linux_gcc<br>
│   │   ├── arm64_kunpeng920_linux_gcc<br>
│   │   ├── arm64_kunpeng930_linux_gcc<br>
│   │   ├── arm64_n1sdp_linux_gcc<br>
│   │   ├── arm64_n2_linux_gcc<br>
│   │   ├── arm64_stingray_linux_gcc<br>
│   │   ├── arm64_thunderx2_linux_gcc<br>
│   │   ├── arm64_thunderxt88_linux_gcc<br>
│   │   ├── armv8_machine.py<br>
│   ├── ppc<br>
│   │   ├── ppc64le-power8-linux-gcc<br>
│   │   └── ppc64le-power8-linux-gcc-ubuntu1804<br>
│   ├── rte_config.h<br>
│   └── x86<br>
│       ├── cross-mingw<br>
├── devtools<br>
│   ├── build-dict.sh<br>
│   ├── build-tags.sh<br>
│   ├── check-abi.sh<br>
│   ├── check-abi-version.sh<br>
│   ├── check-doc-vs-code.sh<br>
│   ├── check-dup-includes.sh<br>
│   ├── check-forbidden-tokens.awk<br>
│   ├── check-git-log.sh<br>
│   ├── check-maintainers.sh<br>
│   ├── check-meson.py<br>
│   ├── checkpatches.sh<br>
│   ├── check-spdx-tag.sh<br>
│   ├── check-symbol-change.sh<br>
│   ├── check-symbol-maps.sh<br>
│   ├── cocci<br>
│   │   ├── mtod-offset.cocci<br>
│   │   ├── namespace_ethdev.cocci<br>
│   │   ├── nullfree.cocci<br>
│   │   ├── prefix_mbuf_offload_flags.cocci<br>
│   │   ├── strlcpy.cocci<br>
│   │   └── strlcpy-with-header.cocci<br>
│   ├── cocci.sh<br>
│   ├── gen-abi.sh<br>
│   ├── get-maintainer.sh<br>
│   ├── git-log-fixes.sh<br>
│   ├── libabigail.abignore<br>
│   ├── load-devel-config<br>
│   ├── parse-flow-support.sh<br>
│   ├── process-iwyu.py<br>
│   ├── test-null.sh<br>
│   ├── update-abi.sh<br>
│   ├── update-patches.py<br>
│   ├── update_version_map_abi.py<br>
│   └── words-case.txt<br>
├── doc<br>
│   ├── api<br>
│   │   ├── doxy-api.conf.in<br>
│   │   ├── doxy-api-index.md<br>
│   │   ├── doxy-html-custom.sh<br>
│   │   ├── generate_doxygen.sh<br>
│   │   ├── generate_examples.sh<br>
│   ├── guides<br>
│   │   ├── bbdevs<br>
│   │   │   ├── acc100.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── acc100.ini<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── fpga_5gnr_fec.ini<br>
│   │   │   │   ├── fpga_lte_fec.ini<br>
│   │   │   │   ├── la12xx.ini<br>
│   │   │   │   ├── null.ini<br>
│   │   │   │   └── turbo_sw.ini<br>
│   │   │   ├── fpga_5gnr_fec.rst<br>
│   │   │   ├── fpga_lte_fec.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── la12xx.rst<br>
│   │   │   ├── null.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   └── turbo_sw.rst<br>
│   │   ├── compressdevs<br>
│   │   │   ├── features<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── isal.ini<br>
│   │   │   │   ├── mlx5.ini<br>
│   │   │   │   ├── octeontx.ini<br>
│   │   │   │   ├── qat.ini<br>
│   │   │   │   └── zlib.ini<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── isal.rst<br>
│   │   │   ├── mlx5.rst<br>
│   │   │   ├── octeontx.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   ├── qat_comp.rst<br>
│   │   │   └── zlib.rst<br>
│   │   ├── conf.py<br>
│   │   ├── contributing<br>
│   │   │   ├── abi_policy.rst<br>
│   │   │   ├── abi_versioning.rst<br>
│   │   │   ├── cheatsheet.rst<br>
│   │   │   ├── coding_style.rst<br>
│   │   │   ├── design.rst<br>
│   │   │   ├── documentation.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── abi_stability_policy.svg<br>
│   │   │   │   ├── patch_cheatsheet.svg<br>
│   │   │   │   └── what_is_an_abi.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── patches.rst<br>
│   │   │   ├── stable.rst<br>
│   │   │   ├── unit_test.rst<br>
│   │   │   └── vulnerability.rst<br>
│   │   ├── cryptodevs<br>
│   │   │   ├── aesni_gcm.rst<br>
│   │   │   ├── aesni_mb.rst<br>
│   │   │   ├── armv8.rst<br>
│   │   │   ├── bcmfs.rst<br>
│   │   │   ├── caam_jr.rst<br>
│   │   │   ├── ccp.rst<br>
│   │   │   ├── chacha20_poly1305.rst<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── dpaa2_sec.rst<br>
│   │   │   ├── dpaa_sec.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── aesni_gcm.ini<br>
│   │   │   │   ├── aesni_mb.ini<br>
│   │   │   │   ├── armv8.ini<br>
│   │   │   │   ├── bcmfs.ini<br>
│   │   │   │   ├── caam_jr.ini<br>
│   │   │   │   ├── ccp.ini<br>
│   │   │   │   ├── chacha20_poly1305.ini<br>
│   │   │   │   ├── cn10k.ini<br>
│   │   │   │   ├── cn9k.ini<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── dpaa2_sec.ini<br>
│   │   │   │   ├── dpaa_sec.ini<br>
│   │   │   │   ├── kasumi.ini<br>
│   │   │   │   ├── mlx5.ini<br>
│   │   │   │   ├── mvsam.ini<br>
│   │   │   │   ├── nitrox.ini<br>
│   │   │   │   ├── null.ini<br>
│   │   │   │   ├── octeontx.ini<br>
│   │   │   │   ├── openssl.ini<br>
│   │   │   │   ├── qat.ini<br>
│   │   │   │   ├── snow3g.ini<br>
│   │   │   │   ├── virtio.ini<br>
│   │   │   │   └── zuc.ini<br>
│   │   │   ├── img<br>
│   │   │   │   └── scheduler-overview.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── kasumi.rst<br>
│   │   │   ├── mlx5.rst<br>
│   │   │   ├── mvsam.rst<br>
│   │   │   ├── nitrox.rst<br>
│   │   │   ├── null.rst<br>
│   │   │   ├── octeontx.rst<br>
│   │   │   ├── openssl.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   ├── qat.rst<br>
│   │   │   ├── scheduler.rst<br>
│   │   │   ├── snow3g.rst<br>
│   │   │   ├── virtio.rst<br>
│   │   │   └── zuc.rst<br>
│   │   ├── custom.css<br>
│   │   ├── dmadevs<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── dpaa.rst<br>
│   │   │   ├── hisilicon.rst<br>
│   │   │   ├── idxd.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   └── ioat.rst<br>
│   │   ├── eventdevs<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── dlb2.rst<br>
│   │   │   ├── dpaa2.rst<br>
│   │   │   ├── dpaa.rst<br>
│   │   │   ├── dsw.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── cnxk.ini<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── dlb2.ini<br>
│   │   │   │   ├── dpaa2.ini<br>
│   │   │   │   ├── dpaa.ini<br>
│   │   │   │   ├── dsw.ini<br>
│   │   │   │   ├── octeontx.ini<br>
│   │   │   │   ├── opdl.ini<br>
│   │   │   │   └── sw.ini<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── octeontx.rst<br>
│   │   │   ├── opdl.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   └── sw.rst<br>
│   │   ├── faq<br>
│   │   │   ├── faq.rst<br>
│   │   │   └── index.rst<br>
│   │   ├── freebsd_gsg<br>
│   │   │   ├── build_dpdk.rst<br>
│   │   │   ├── build_sample_apps.rst<br>
│   │   │   ├── freebsd_eal_parameters.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── install_from_ports.rst<br>
│   │   │   └── intro.rst<br>
│   │   ├── gpus<br>
│   │   │   ├── cuda.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── cuda.ini<br>
│   │   │   │   └── default.ini<br>
│   │   │   ├── index.rst<br>
│   │   │   └── overview.rst<br>
│   │   ├── howto<br>
│   │   │   ├── avx512.rst<br>
│   │   │   ├── debug_troubleshoot.rst<br>
│   │   │   ├── flow_bifurcation.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── dtg_consumer_ring.svg<br>
│   │   │   │   ├── dtg_crypto.svg<br>
│   │   │   │   ├── dtg_distributor_worker.svg<br>
│   │   │   │   ├── dtg_mempool.svg<br>
│   │   │   │   ├── dtg_pdump.svg<br>
│   │   │   │   ├── dtg_producer_ring.svg<br>
│   │   │   │   ├── dtg_qos_tx.svg<br>
│   │   │   │   ├── dtg_rx_rate.svg<br>
│   │   │   │   ├── dtg_rx_tx_drop.svg<br>
│   │   │   │   ├── dtg_sample_app_model.svg<br>
│   │   │   │   ├── dtg_service.svg<br>
│   │   │   │   ├── flow_bifurcation_overview.svg<br>
│   │   │   │   ├── lm_bond_virtio_sriov.svg<br>
│   │   │   │   ├── lm_vhost_user.svg<br>
│   │   │   │   ├── packet_capture_framework.svg<br>
│   │   │   │   ├── pvp_2nics.svg<br>
│   │   │   │   ├── use_models_for_running_dpdk_in_containers.svg<br>
│   │   │   │   ├── vf_daemon_overview.svg<br>
│   │   │   │   ├── virtio_user_as_exceptional_path.svg<br>
│   │   │   │   └── virtio_user_for_container_networking.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── lm_bond_virtio_sriov.rst<br>
│   │   │   ├── lm_virtio_vhost_user.rst<br>
│   │   │   ├── openwrt.rst<br>
│   │   │   ├── packet_capture_framework.rst<br>
│   │   │   ├── pvp_reference_benchmark.rst<br>
│   │   │   ├── rte_flow.rst<br>
│   │   │   ├── telemetry.rst<br>
│   │   │   ├── vfd.rst<br>
│   │   │   ├── virtio_user_as_exceptional_path.rst<br>
│   │   │   └── virtio_user_for_container_networking.rst<br>
│   │   ├── index.rst<br>
│   │   ├── linux_gsg<br>
│   │   │   ├── build_dpdk.rst<br>
│   │   │   ├── build_sample_apps.rst<br>
│   │   │   ├── cross_build_dpdk_for_arm64.rst<br>
│   │   │   ├── eal_args.include.rst<br>
│   │   │   ├── enable_func.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── intro.rst<br>
│   │   │   ├── linux_drivers.rst<br>
│   │   │   ├── linux_eal_parameters.rst<br>
│   │   │   ├── nic_perf_intel_platform.rst<br>
│   │   │   └── sys_reqs.rst<br>
│   │   ├── mempool<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── octeontx.rst<br>
│   │   │   ├── ring.rst<br>
│   │   │   └── stack.rst<br>

│   │   ├── nics<br>
│   │   │   ├── af_packet.rst<br>
│   │   │   ├── af_xdp.rst<br>
│   │   │   ├── ark.rst<br>
│   │   │   ├── atlantic.rst<br>
│   │   │   ├── avp.rst<br>
│   │   │   ├── axgbe.rst<br>
│   │   │   ├── bnx2x.rst<br>
│   │   │   ├── bnxt.rst<br>
│   │   │   ├── build_and_test.rst<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── cxgbe.rst<br>
│   │   │   ├── dpaa2.rst<br>
│   │   │   ├── dpaa.rst<br>
│   │   │   ├── e1000em.rst<br>
│   │   │   ├── ena.rst<br>
│   │   │   ├── enetc.rst<br>
│   │   │   ├── enetfec.rst<br>
│   │   │   ├── enic.rst<br>
│   │   │   ├── fail_safe.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── afpacket.ini<br>
│   │   │   │   ├── af_xdp.ini<br>
│   │   │   │   ├── ark.ini<br>
│   │   │   │   ├── atlantic.ini<br>
│   │   │   │   ├── avp.ini<br>
│   │   │   │   ├── axgbe.ini<br>
│   │   │   │   ├── bnx2x.ini<br>
│   │   │   │   ├── bnxt.ini<br>
│   │   │   │   ├── cnxk.ini<br>
│   │   │   │   ├── cnxk_vec.ini<br>
│   │   │   │   ├── cnxk_vf.ini<br>
│   │   │   │   ├── cxgbe.ini<br>
│   │   │   │   ├── cxgbevf.ini<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── dpaa2.ini<br>
│   │   │   │   ├── dpaa.ini<br>
│   │   │   │   ├── e1000.ini<br>
│   │   │   │   ├── ena.ini<br>
│   │   │   │   ├── enetc.ini<br>
│   │   │   │   ├── enetfec.ini<br>
│   │   │   │   ├── enic.ini<br>
│   │   │   │   ├── failsafe.ini<br>
│   │   │   │   ├── fm10k.ini<br>
│   │   │   │   ├── fm10k_vf.ini<br>
│   │   │   │   ├── hinic.ini<br>
│   │   │   │   ├── hns3.ini<br>
│   │   │   │   ├── hns3_vf.ini<br>
│   │   │   │   ├── i40e.ini<br>
│   │   │   │   ├── iavf.ini<br>
│   │   │   │   ├── ice_dcf.ini<br>
│   │   │   │   ├── ice.ini<br>
│   │   │   │   ├── igb.ini<br>
│   │   │   │   ├── igb_vf.ini<br>
│   │   │   │   ├── igc.ini<br>
│   │   │   │   ├── ionic.ini<br>
│   │   │   │   ├── ipn3ke.ini<br>
│   │   │   │   ├── ixgbe.ini<br>
│   │   │   │   ├── ixgbe_vf.ini<br>
│   │   │   │   ├── liquidio.ini<br>
│   │   │   │   ├── memif.ini<br>
│   │   │   │   ├── mlx4.ini<br>
│   │   │   │   ├── mlx5.ini<br>
│   │   │   │   ├── mvneta.ini<br>
│   │   │   │   ├── mvpp2.ini<br>
│   │   │   │   ├── netvsc.ini<br>
│   │   │   │   ├── nfb.ini<br>
│   │   │   │   ├── nfp.ini<br>
│   │   │   │   ├── ngbe.ini<br>
│   │   │   │   ├── octeontx_ep.ini<br>
│   │   │   │   ├── octeontx.ini<br>
│   │   │   │   ├── pcap.ini<br>
│   │   │   │   ├── pfe.ini<br>
│   │   │   │   ├── qede.ini<br>
│   │   │   │   ├── qede_vf.ini<br>
│   │   │   │   ├── sfc.ini<br>
│   │   │   │   ├── tap.ini<br>
│   │   │   │   ├── thunderx.ini<br>
│   │   │   │   ├── txgbe.ini<br>
│   │   │   │   ├── txgbe_vf.ini<br>
│   │   │   │   ├── vhost.ini<br>
│   │   │   │   ├── virtio.ini<br>
│   │   │   │   └── vmxnet3.ini<br>
│   │   │   ├── features.rst<br>
│   │   │   ├── fm10k.rst<br>
│   │   │   ├── hinic.rst<br>
│   │   │   ├── hns3.rst<br>
│   │   │   ├── i40e.rst<br>
│   │   │   ├── ice.rst<br>
│   │   │   ├── igb.rst<br>
│   │   │   ├── igc.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── console.png<br>
│   │   │   │   ├── fast_pkt_proc.png<br>
│   │   │   │   ├── forward_stats.png<br>
│   │   │   │   ├── host_vm_comms.png<br>
│   │   │   │   ├── host_vm_comms_qemu.png<br>
│   │   │   │   ├── ice_dcf.svg<br>
│   │   │   │   ├── intel_perf_test_setup.svg<br>
│   │   │   │   ├── inter_vm_comms.png<br>
│   │   │   │   ├── mvpp2_tm.svg<br>
│   │   │   │   ├── perf_benchmark.png<br>
│   │   │   │   ├── single_port_nic.png<br>
│   │   │   │   ├── vm_vm_comms.png<br>
│   │   │   │   ├── vmxnet3_int.png<br>
│   │   │   │   └── vswitch_vm.png<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── intel_vf.rst<br>
│   │   │   ├── ionic.rst<br>
│   │   │   ├── ipn3ke.rst<br>
│   │   │   ├── ixgbe.rst<br>
│   │   │   ├── kni.rst<br>
│   │   │   ├── liquidio.rst<br>
│   │   │   ├── memif.rst<br>
│   │   │   ├── mlx4.rst<br>
│   │   │   ├── mlx5.rst<br>
│   │   │   ├── mvneta.rst<br>
│   │   │   ├── mvpp2.rst<br>
│   │   │   ├── netvsc.rst<br>
│   │   │   ├── nfb.rst<br>
│   │   │   ├── nfp.rst<br>
│   │   │   ├── ngbe.rst<br>
│   │   │   ├── null.rst<br>
│   │   │   ├── octeontx_ep.rst<br>
│   │   │   ├── octeontx.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   ├── pcap_ring.rst<br>
│   │   │   ├── pfe.rst<br>
│   │   │   ├── qede.rst<br>
│   │   │   ├── sfc_efx.rst<br>
│   │   │   ├── softnic.rst<br>
│   │   │   ├── tap.rst<br>
│   │   │   ├── thunderx.rst<br>
│   │   │   ├── txgbe.rst<br>
│   │   │   ├── vdev_netvsc.rst<br>
│   │   │   ├── vhost.rst<br>
│   │   │   ├── virtio.rst<br>
│   │   │   └── vmxnet3.rst<br>
│   │   ├── platform<br>
│   │   │   ├── bluefield.rst<br>
│   │   │   ├── cnxk.rst<br>
│   │   │   ├── dpaa2.rst<br>
│   │   │   ├── dpaa.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── cnxk_packet_flow_hw_accelerators.svg<br>
│   │   │   │   └── cnxk_resource_virtualization.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── mlx5.rst<br>
│   │   │   └── octeontx.rst<br>
│   │   ├── prog_guide<br>
│   │   │   ├── asan.rst<br>
│   │   │   ├── bbdev.rst<br>
│   │   │   ├── bpf_lib.rst<br>
│   │   │   ├── build_app.rst<br>
│   │   │   ├── build-sdk-meson.rst<br>
│   │   │   ├── compressdev.rst<br>
│   │   │   ├── cryptodev_lib.rst<br>
│   │   │   ├── dmadev.rst<br>
│   │   │   ├── efd_lib.rst<br>
│   │   │   ├── env_abstraction_layer.rst<br>
│   │   │   ├── event_crypto_adapter.rst<br>
│   │   │   ├── eventdev.rst<br>
│   │   │   ├── event_ethernet_rx_adapter.rst<br>
│   │   │   ├── event_ethernet_tx_adapter.rst<br>
│   │   │   ├── event_timer_adapter.rst<br>
│   │   │   ├── fib_lib.rst<br>
│   │   │   ├── flow_classify_lib.rst<br>
│   │   │   ├── generic_receive_offload_lib.rst<br>
│   │   │   ├── generic_segmentation_offload_lib.rst<br>
│   │   │   ├── glossary.rst<br>
│   │   │   ├── gpudev.rst<br>
│   │   │   ├── graph_lib.rst<br>
│   │   │   ├── hash_lib.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── anatomy_of_a_node.svg<br>
│   │   │   │   ├── architecture-overview.svg<br>
│   │   │   │   ├── blk_diag_dropper.png<br>
│   │   │   │   ├── bond-mode-0.svg<br>
│   │   │   │   ├── bond-mode-1.svg<br>
│   │   │   │   ├── bond-mode-2.svg<br>
│   │   │   │   ├── bond-mode-3.svg<br>
│   │   │   │   ├── bond-mode-4.svg<br>
│   │   │   │   ├── bond-mode-5.svg<br>
│   │   │   │   ├── bond-overview.svg<br>
│   │   │   │   ├── cryptodev_sym_sess.svg<br>
│   │   │   │   ├── crypto_op.svg<br>
│   │   │   │   ├── crypto_xform_chain.svg<br>
│   │   │   │   ├── data_struct_per_port.png<br>
│   │   │   │   ├── dir_24_8_alg.svg<br>
│   │   │   │   ├── dmadev.svg<br>
│   │   │   │   ├── drop_probability_eq3.png<br>
│   │   │   │   ├── drop_probability_eq4.png<br>
│   │   │   │   ├── drop_probability_graph.png<br>
│   │   │   │   ├── efd_i10.svg<br>
│   │   │   │   ├── efd_i11.svg<br>
│   │   │   │   ├── efd_i12.svg<br>
│   │   │   │   ├── efd_i1.svg<br>
│   │   │   │   ├── efd_i2.svg<br>
│   │   │   │   ├── efd_i3.svg<br>
│   │   │   │   ├── efd_i4.svg<br>
│   │   │   │   ├── efd_i5.svg<br>
│   │   │   │   ├── efd_i6.svg<br>
│   │   │   │   ├── efd_i7.svg<br>
│   │   │   │   ├── efd_i8.svg<br>
│   │   │   │   ├── efd_i9.svg<br>
│   │   │   │   ├── eq2_expression.png<br>
│   │   │   │   ├── eq2_factor.png<br>
│   │   │   │   ├── event_crypto_adapter_op_forward.svg<br>
│   │   │   │   ├── event_crypto_adapter_op_new.svg<br>
│   │   │   │   ├── eventdev_usage.svg<br>
│   │   │   │   ├── ewma_filter_eq_1.png<br>
│   │   │   │   ├── ewma_filter_eq_2.png<br>
│   │   │   │   ├── ex_data_flow_tru_dropper.png<br>
│   │   │   │   ├── figure32.png<br>
│   │   │   │   ├── figure33.png<br>
│   │   │   │   ├── figure34.png<br>
│   │   │   │   ├── figure35.png<br>
│   │   │   │   ├── figure37.png<br>
│   │   │   │   ├── figure38.png<br>
│   │   │   │   ├── figure39.png<br>
│   │   │   │   ├── flow_tru_dropper.png<br>
│   │   │   │   ├── graph_mem_layout.svg<br>
│   │   │   │   ├── gro-key-algorithm.svg<br>
│   │   │   │   ├── gso-output-segment-format.svg<br>
│   │   │   │   ├── gso-three-seg-mbuf.svg<br>
│   │   │   │   ├── hier_sched_blk.png<br>
│   │   │   │   ├── kernel_nic_intf.png<br>
│   │   │   │   ├── kni_traffic_flow.png<br>
│   │   │   │   ├── link_the_nodes.svg<br>
│   │   │   │   ├── linuxapp_launch.svg<br>
│   │   │   │   ├── malloc_heap.svg<br>
│   │   │   │   ├── mbuf1.svg<br>
│   │   │   │   ├── mbuf2.svg<br>
│   │   │   │   ├── m_definition.png<br>
│   │   │   │   ├── member_i1.svg<br>
│   │   │   │   ├── member_i2.svg<br>
│   │   │   │   ├── member_i3.svg<br>
│   │   │   │   ├── member_i4.svg<br>
│   │   │   │   ├── member_i5.svg<br>
│   │   │   │   ├── member_i6.svg<br>
│   │   │   │   ├── member_i7.svg<br>
│   │   │   │   ├── memory-management2.svg<br>
│   │   │   │   ├── memory-management.svg<br>
│   │   │   │   ├── mempool.svg<br>
│   │   │   │   ├── multi_process_memory.svg<br>
│   │   │   │   ├── packet_distributor1.png<br>
│   │   │   │   ├── packet_distributor2.png<br>
│   │   │   │   ├── pipe_prefetch_sm.png<br>
│   │   │   │   ├── pkt_drop_probability.png<br>
│   │   │   │   ├── pkt_flow_kni.png<br>
│   │   │   │   ├── pkt_proc_pipeline_qos.png<br>
│   │   │   │   ├── predictable_snat_1.svg<br>
│   │   │   │   ├── predictable_snat_2.svg<br>
│   │   │   │   ├── prefetch_pipeline.png<br>
│   │   │   │   ├── rcu_general_info.svg<br>
│   │   │   │   ├── rib_internals.svg<br>
│   │   │   │   ├── rib_pic.svg<br>
│   │   │   │   ├── ring1.svg<br>
│   │   │   │   ├── ring-dequeue1.svg<br>
│   │   │   │   ├── ring-dequeue2.svg<br>
│   │   │   │   ├── ring-dequeue3.svg<br>
│   │   │   │   ├── ring-enqueue1.svg<br>
│   │   │   │   ├── ring-enqueue2.svg<br>
│   │   │   │   ├── ring-enqueue3.svg<br>
│   │   │   │   ├── ring-modulo1.svg<br>
│   │   │   │   ├── ring-modulo2.svg<br>
│   │   │   │   ├── ring-mp-enqueue1.svg<br>
│   │   │   │   ├── ring-mp-enqueue2.svg<br>
│   │   │   │   ├── ring-mp-enqueue3.svg<br>
│   │   │   │   ├── ring-mp-enqueue4.svg<br>
│   │   │   │   ├── ring-mp-enqueue5.svg<br>
│   │   │   │   ├── rss_queue_assign.svg<br>
│   │   │   │   ├── rte_flow_async_init.svg<br>
│   │   │   │   ├── rte_flow_async_usage.svg<br>
│   │   │   │   ├── rte_mtr_meter_chaining.svg<br>
│   │   │   │   ├── sched_hier_per_port.svg<br>
│   │   │   │   ├── stateful-op.svg<br>
│   │   │   │   ├── stateless-op-shared.svg<br>
│   │   │   │   ├── stateless-op.svg<br>
│   │   │   │   ├── tbl24_tbl8.png<br>
│   │   │   │   ├── tbl24_tbl8_tbl8.png<br>
│   │   │   │   ├── turbo_tb_decode.svg<br>
│   │   │   │   ├── turbo_tb_encode.svg<br>
│   │   │   │   └── vhost_net_arch.png<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── intro.rst<br>
│   │   │   ├── ip_fragment_reassembly_lib.rst<br>
│   │   │   ├── ipsec_lib.rst<br>
│   │   │   ├── kernel_nic_interface.rst<br>
│   │   │   ├── link_bonding_poll_mode_drv_lib.rst<br>
│   │   │   ├── lpm6_lib.rst<br>
│   │   │   ├── lpm_lib.rst<br>
│   │   │   ├── lto.rst<br>
│   │   │   ├── mbuf_lib.rst<br>
│   │   │   ├── member_lib.rst<br>
│   │   │   ├── mempool_lib.rst<br>
│   │   │   ├── meson_ut.rst<br>
│   │   │   ├── metrics_lib.rst<br>
│   │   │   ├── multi_proc_support.rst<br>
│   │   │   ├── overview.rst<br>
│   │   │   ├── packet_classif_access_ctrl.rst<br>
│   │   │   ├── packet_distrib_lib.rst<br>
│   │   │   ├── packet_framework.rst<br>
│   │   │   ├── pcapng_lib.rst<br>
│   │   │   ├── pdump_lib.rst<br>
│   │   │   ├── perf_opt_guidelines.rst<br>
│   │   │   ├── poll_mode_drv.rst<br>
│   │   │   ├── power_man.rst<br>
│   │   │   ├── profile_app.rst<br>
│   │   │   ├── qos_framework.rst<br>
│   │   │   ├── rawdev.rst<br>
│   │   │   ├── rcu_lib.rst<br>
│   │   │   ├── regexdev.rst<br>
│   │   │   ├── reorder_lib.rst<br>
│   │   │   ├── rib_lib.rst<br>
│   │   │   ├── ring_lib.rst<br>
│   │   │   ├── rte_flow.rst<br>
│   │   │   ├── rte_security.rst<br>
│   │   │   ├── service_cores.rst<br>
│   │   │   ├── source_org.rst<br>
│   │   │   ├── stack_lib.rst<br>
│   │   │   ├── switch_representation.rst<br>
│   │   │   ├── telemetry_lib.rst<br>
│   │   │   ├── thread_safety_dpdk_functions.rst<br>
│   │   │   ├── timer_lib.rst<br>
│   │   │   ├── toeplitz_hash_lib.rst<br>
│   │   │   ├── trace_lib.rst<br>
│   │   │   ├── traffic_management.rst<br>
│   │   │   ├── traffic_metering_and_policing.rst<br>
│   │   │   ├── vhost_lib.rst<br>
│   │   │   └── writing_efficient_code.rst<br>
│   │   ├── rawdevs<br>
│   │   │   ├── cnxk_bphy.rst<br>
│   │   │   ├── cnxk_gpio.rst<br>
│   │   │   ├── dpaa2_cmdif.rst<br>
│   │   │   ├── dpaa2_qdma.rst<br>
│   │   │   ├── ifpga.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── ioat.rst<br>
│   │   │   └── ntb.rst<br>
│   │   ├── regexdevs<br>
│   │   │   ├── cn9k.rst<br>
│   │   │   ├── features<br>
│   │   │   │   ├── cn9k.ini<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   └── mlx5.ini<br>
│   │   │   ├── features_overview.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   └── mlx5.rst<br>
│   │   ├── rel_notes<br>
│   │   │   ├── deprecation.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── known_issues.rst<br>
│   │   │   ├── release_16_04.rst<br>
│   │   │   ├── release_16_07.rst<br>
│   │   │   ├── release_16_11.rst<br>
│   │   │   ├── release_17_02.rst<br>
│   │   │   ├── release_17_05.rst<br>
│   │   │   ├── release_17_08.rst<br>
│   │   │   ├── release_17_11.rst<br>
│   │   │   ├── release_18_02.rst<br>
│   │   │   ├── release_18_05.rst<br>
│   │   │   ├── release_18_08.rst<br>
│   │   │   ├── release_18_11.rst<br>
│   │   │   ├── release_1_8.rst<br>
│   │   │   ├── release_19_02.rst<br>
│   │   │   ├── release_19_05.rst<br>
│   │   │   ├── release_19_08.rst<br>
│   │   │   ├── release_19_11.rst<br>
│   │   │   ├── release_20_02.rst<br>
│   │   │   ├── release_20_05.rst<br>
│   │   │   ├── release_20_08.rst<br>
│   │   │   ├── release_20_11.rst<br>
│   │   │   ├── release_2_0.rst<br>
│   │   │   ├── release_21_02.rst<br>
│   │   │   ├── release_21_05.rst<br>
│   │   │   ├── release_21_08.rst<br>
│   │   │   ├── release_21_11.rst<br>
│   │   │   ├── release_2_1.rst<br>
│   │   │   ├── release_22_03.rst<br>
│   │   │   └── release_2_2.rst<br>
│   │   ├── sample_app_ug<br>
│   │   │   ├── bbdev_app.rst<br>
│   │   │   ├── cmd_line.rst<br>
│   │   │   ├── compiling.rst<br>
│   │   │   ├── dist_app.rst<br>
│   │   │   ├── dma.rst<br>
│   │   │   ├── ethtool.rst<br>
│   │   │   ├── eventdev_pipeline.rst<br>
│   │   │   ├── fips_validation.rst<br>
│   │   │   ├── flow_classify.rst<br>
│   │   │   ├── flow_filtering.rst<br>
│   │   │   ├── hello_world.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── client_svr_sym_multi_proc_app.png<br>
│   │   │   │   ├── dist_app.svg<br>
│   │   │   │   ├── dist_perf.svg<br>
│   │   │   │   ├── example_rules.png<br>
│   │   │   │   ├── exception_path_example.svg<br>
│   │   │   │   ├── ipsec_endpoints.svg<br>
│   │   │   │   ├── ipv4_acl_rule.png<br>
│   │   │   │   ├── kernel_nic.png<br>
│   │   │   │   ├── l2_fwd_benchmark_setup.svg<br>
│   │   │   │   ├── l2_fwd_encrypt_flow.svg<br>
│   │   │   │   ├── l2_fwd_virtenv_benchmark_setup.png<br>
│   │   │   │   ├── l2_fwd_vm2vm.svg<br>
│   │   │   │   ├── load_bal_app_arch.png<br>
│   │   │   │   ├── overlay_networking.svg<br>
│   │   │   │   ├── pipeline_overview.png<br>
│   │   │   │   ├── ptpclient.svg<br>
│   │   │   │   ├── qos_sched_app_arch.png<br>
│   │   │   │   ├── quickassist_block_diagram.png<br>
│   │   │   │   ├── ring_pipeline_perf_setup.png<br>
│   │   │   │   ├── server_node_efd.svg<br>
│   │   │   │   ├── sym_multi_proc_app.png<br>
│   │   │   │   ├── test_pipeline_app.png<br>
│   │   │   │   ├── threads_pipelines.png<br>
│   │   │   │   ├── vmdq_dcb_example.svg<br>
│   │   │   │   ├── vm_power_mgr_highlevel.svg<br>
│   │   │   │   └── vm_power_mgr_vm_request_seq.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── intro.rst<br>
│   │   │   ├── ip_frag.rst<br>
│   │   │   ├── ip_pipeline.rst<br>
│   │   │   ├── ip_reassembly.rst<br>
│   │   │   ├── ipsec_secgw.rst<br>
│   │   │   ├── ipv4_multicast.rst<br>
│   │   │   ├── keep_alive.rst<br>
│   │   │   ├── kernel_nic_interface.rst<br>
│   │   │   ├── l2_forward_cat.rst<br>
│   │   │   ├── l2_forward_crypto.rst<br>
│   │   │   ├── l2_forward_event.rst<br>
│   │   │   ├── l2_forward_job_stats.rst<br>
│   │   │   ├── l2_forward_real_virtual.rst<br>
│   │   │   ├── l3_forward_access_ctrl.rst<br>
│   │   │   ├── l3_forward_graph.rst<br>
│   │   │   ├── l3_forward_power_man.rst<br>
│   │   │   ├── l3_forward.rst<br>
│   │   │   ├── link_status_intr.rst<br>
│   │   │   ├── multi_process.rst<br>
│   │   │   ├── ntb.rst<br>
│   │   │   ├── packet_ordering.rst<br>
│   │   │   ├── pipeline.rst<br>
│   │   │   ├── ptpclient.rst<br>
│   │   │   ├── qos_metering.rst<br>
│   │   │   ├── qos_scheduler.rst<br>
│   │   │   ├── rxtx_callbacks.rst<br>
│   │   │   ├── server_node_efd.rst<br>
│   │   │   ├── service_cores.rst<br>
│   │   │   ├── skeleton.rst<br>
│   │   │   ├── test_pipeline.rst<br>
│   │   │   ├── timer.rst<br>
│   │   │   ├── vdpa.rst<br>
│   │   │   ├── vhost_blk.rst<br>
│   │   │   ├── vhost_crypto.rst<br>
│   │   │   ├── vhost.rst<br>
│   │   │   ├── vmdq_dcb_forwarding.rst<br>
│   │   │   ├── vmdq_forwarding.rst<br>
│   │   │   └── vm_power_management.rst<br>
│   │   ├── testpmd_app_ug<br>
│   │   │   ├── build_app.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── intro.rst<br>
│   │   │   ├── run_app.rst<br>
│   │   │   └── testpmd_funcs.rst<br>
│   │   ├── tools<br>
│   │   │   ├── comp_perf.rst<br>
│   │   │   ├── cryptoperf.rst<br>
│   │   │   ├── devbind.rst<br>
│   │   │   ├── dumpcap.rst<br>
│   │   │   ├── flow-perf.rst<br>
│   │   │   ├── hugepages.rst<br>
│   │   │   ├── img<br>
│   │   │   │   ├── eventdev_order_atq_test.svg<br>
│   │   │   │   ├── eventdev_order_queue_test.svg<br>
│   │   │   │   ├── eventdev_perf_atq_test.svg<br>
│   │   │   │   ├── eventdev_perf_queue_test.svg<br>
│   │   │   │   ├── eventdev_pipeline_atq_test_generic.svg<br>
│   │   │   │   ├── eventdev_pipeline_atq_test_internal_port.svg<br>
│   │   │   │   ├── eventdev_pipeline_queue_test_generic.svg<br>
│   │   │   │   └── eventdev_pipeline_queue_test_internal_port.svg<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── pdump.rst<br>
│   │   │   ├── pmdinfo.rst<br>
│   │   │   ├── proc_info.rst<br>
│   │   │   ├── testbbdev.rst<br>
│   │   │   ├── testeventdev.rst<br>
│   │   │   └── testregex.rst<br>
│   │   ├── vdpadevs<br>
│   │   │   ├── features<br>
│   │   │   │   ├── default.ini<br>
│   │   │   │   ├── ifcvf.ini<br>
│   │   │   │   ├── mlx5.ini<br>
│   │   │   │   └── sfc.ini<br>
│   │   │   ├── features_overview.rst<br>
│   │   │   ├── ifc.rst<br>
│   │   │   ├── index.rst<br>
│   │   │   ├── mlx5.rst<br>
│   │   │   └── sfc.rst<br>
│   │   └── windows_gsg<br>
│   │       ├── build_dpdk.rst<br>
│   │       ├── index.rst<br>
│   │       ├── intro.rst<br>
│   │       └── run_apps.rst<br>
│   ├── logo<br>
│   │   ├── DPDK_logo_horizontal_tag.png<br>
│   │   └── DPDK_logo_vertical_rev_small.png<br>

├── drivers<br>
│   ├── baseband<br>
│   │   ├── acc100<br>
│   │   │   ├── acc100_pf_enum.h<br>
│   │   │   ├── acc100_vf_enum.h<br>

│   │   │   ├── rte_acc100_cfg.h<br>
│   │   │   ├── rte_acc100_pmd.c<br>
│   │   │   ├── rte_acc100_pmd.h<br>
│   │   │   └── version.map<br>
│   │   ├── fpga_5gnr_fec<br>
│   │   │   ├── fpga_5gnr_fec.h<br>

│   │   │   ├── rte_fpga_5gnr_fec.c<br>
│   │   │   ├── rte_pmd_fpga_5gnr_fec.h<br>
│   │   │   └── version.map<br>
│   │   ├── fpga_lte_fec<br>
│   │   │   ├── fpga_lte_fec.c<br>
│   │   │   ├── fpga_lte_fec.h<br>

│   │   │   └── version.map<br>
│   │   ├── la12xx<br>
│   │   │   ├── bbdev_la12xx.c<br>
│   │   │   ├── bbdev_la12xx.h<br>
│   │   │   ├── bbdev_la12xx_ipc.h<br>
│   │   │   ├── bbdev_la12xx_pmd_logs.h<br>

│   │   │   └── version.map<br>

│   │   ├── null<br>
│   │   │   ├── bbdev_null.c<br>

│   │   │   └── version.map<br>
│   │   └── turbo_sw<br>
│   │       ├── bbdev_turbo_software.c<br>

│   │       └── version.map<br>
│   ├── bus<br>
│   │   ├── auxiliary<br>
│   │   │   ├── auxiliary_common.c<br>
│   │   │   ├── auxiliary_params.c<br>
│   │   │   ├── linux<br>
│   │   │   │   └── auxiliary.c<br>

│   │   │   ├── private.h<br>
│   │   │   ├── rte_bus_auxiliary.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa<br>
│   │   │   ├── base<br>
│   │   │   │   ├── fman<br>
│   │   │   │   │   ├── fman.c<br>
│   │   │   │   │   ├── fman_hw.c<br>
│   │   │   │   │   └── netcfg_layer.c<br>
│   │   │   │   └── qbman<br>
│   │   │   │       ├── bman.c<br>
│   │   │   │       ├── bman_driver.c<br>
│   │   │   │       ├── bman.h<br>
│   │   │   │       ├── bman_priv.h<br>
│   │   │   │       ├── dpaa_alloc.c<br>
│   │   │   │       ├── dpaa_sys.c<br>
│   │   │   │       ├── dpaa_sys.h<br>
│   │   │   │       ├── process.c<br>
│   │   │   │       ├── qman.c<br>
│   │   │   │       ├── qman_driver.c<br>
│   │   │   │       ├── qman.h<br>
│   │   │   │       └── qman_priv.h<br>
│   │   │   ├── dpaa_bus.c<br>
│   │   │   ├── include<br>
│   │   │   │   ├── dpaa_bits.h<br>
│   │   │   │   ├── dpaa_rbtree.h<br>
│   │   │   │   ├── fman.h<br>
│   │   │   │   ├── fsl_bman.h<br>
│   │   │   │   ├── fsl_fman_crc64.h<br>
│   │   │   │   ├── fsl_fman.h<br>
│   │   │   │   ├── fsl_qman.h<br>
│   │   │   │   ├── fsl_usd.h<br>
│   │   │   │   ├── netcfg.h<br>
│   │   │   │   └── process.h<br>

│   │   │   ├── rte_dpaa_bus.h<br>
│   │   │   ├── rte_dpaa_logs.h<br>
│   │   │   └── version.map<br>
│   │   ├── fslmc<br>
│   │   │   ├── fslmc_bus.c<br>
│   │   │   ├── fslmc_logs.h<br>
│   │   │   ├── fslmc_vfio.c<br>
│   │   │   ├── fslmc_vfio.h<br>
│   │   │   ├── mc<br>
│   │   │   │   ├── dpbp.c<br>
│   │   │   │   ├── dpci.c<br>
│   │   │   │   ├── dpcon.c<br>
│   │   │   │   ├── dpdmai.c<br>
│   │   │   │   ├── dpio.c<br>
│   │   │   │   ├── dpmng.c<br>
│   │   │   │   ├── dprc.c<br>
│   │   │   │   ├── fsl_dpbp_cmd.h<br>
│   │   │   │   ├── fsl_dpbp.h<br>
│   │   │   │   ├── fsl_dpci_cmd.h<br>
│   │   │   │   ├── fsl_dpci.h<br>
│   │   │   │   ├── fsl_dpcon_cmd.h<br>
│   │   │   │   ├── fsl_dpcon.h<br>
│   │   │   │   ├── fsl_dpdmai_cmd.h<br>
│   │   │   │   ├── fsl_dpdmai.h<br>
│   │   │   │   ├── fsl_dpio_cmd.h<br>
│   │   │   │   ├── fsl_dpio.h<br>
│   │   │   │   ├── fsl_dpmng_cmd.h<br>
│   │   │   │   ├── fsl_dpmng.h<br>
│   │   │   │   ├── fsl_dpopr.h<br>
│   │   │   │   ├── fsl_dprc_cmd.h<br>
│   │   │   │   ├── fsl_dprc.h<br>
│   │   │   │   ├── fsl_mc_cmd.h<br>
│   │   │   │   ├── fsl_mc_sys.h<br>
│   │   │   │   └── mc_sys.c<br>

│   │   │   ├── portal<br>
│   │   │   │   ├── dpaa2_hw_dpbp.c<br>
│   │   │   │   ├── dpaa2_hw_dpci.c<br>
│   │   │   │   ├── dpaa2_hw_dpio.c<br>
│   │   │   │   ├── dpaa2_hw_dpio.h<br>
│   │   │   │   ├── dpaa2_hw_dprc.c<br>
│   │   │   │   └── dpaa2_hw_pvt.h<br>
│   │   │   ├── qbman<br>
│   │   │   │   ├── include<br>
│   │   │   │   │   ├── compat.h<br>
│   │   │   │   │   ├── fsl_qbman_base.h<br>
│   │   │   │   │   ├── fsl_qbman_debug.h<br>
│   │   │   │   │   └── fsl_qbman_portal.h<br>
│   │   │   │   ├── qbman_debug.c<br>
│   │   │   │   ├── qbman_portal.c<br>
│   │   │   │   ├── qbman_portal.h<br>
│   │   │   │   ├── qbman_sys_decl.h<br>
│   │   │   │   └── qbman_sys.h<br>
│   │   │   ├── rte_fslmc.h<br>
│   │   │   └── version.map<br>
│   │   ├── ifpga<br>
│   │   │   ├── ifpga_bus.c<br>
│   │   │   ├── ifpga_common.c<br>
│   │   │   ├── ifpga_common.h<br>
│   │   │   ├── ifpga_logs.h<br>

│   │   │   ├── rte_bus_ifpga.h<br>
│   │   │   └── version.map<br>

│   │   ├── pci<br>
│   │   │   ├── bsd<br>
│   │   │   │   └── pci.c<br>
│   │   │   ├── linux<br>
│   │   │   │   ├── pci.c<br>
│   │   │   │   ├── pci_init.h<br>
│   │   │   │   ├── pci_uio.c<br>
│   │   │   │   └── pci_vfio.c<br>

│   │   │   ├── pci_common.c<br>
│   │   │   ├── pci_common_uio.c<br>
│   │   │   ├── pci_params.c<br>
│   │   │   ├── private.h<br>
│   │   │   ├── rte_bus_pci.h<br>
│   │   │   ├── version.map<br>
│   │   │   └── windows<br>
│   │   │       ├── pci.c<br>
│   │   │       ├── pci_netuio.c<br>
│   │   │       └── pci_netuio.h<br>
│   │   ├── vdev<br>

│   │   │   ├── rte_bus_vdev.h<br>
│   │   │   ├── vdev.c<br>
│   │   │   ├── vdev_logs.h<br>
│   │   │   ├── vdev_params.c<br>
│   │   │   ├── vdev_private.h<br>
│   │   │   └── version.map<br>
│   │   └── vmbus<br>
│   │       ├── linux<br>
│   │       │   ├── vmbus_bus.c<br>
│   │       │   └── vmbus_uio.c<br>

│   │       ├── private.h<br>
│   │       ├── rte_bus_vmbus.h<br>
│   │       ├── rte_vmbus_reg.h<br>
│   │       ├── version.map<br>
│   │       ├── vmbus_bufring.c<br>
│   │       ├── vmbus_channel.c<br>
│   │       ├── vmbus_common.c<br>
│   │       └── vmbus_common_uio.c<br>
│   ├── common<br>
│   │   ├── cnxk<br>
│   │   │   ├── cnxk_security_ar.h<br>
│   │   │   ├── cnxk_security.c<br>
│   │   │   ├── cnxk_security.h<br>
│   │   │   ├── cnxk_telemetry_bphy.c<br>
│   │   │   ├── cnxk_telemetry.h<br>
│   │   │   ├── cnxk_telemetry_nix.c<br>
│   │   │   ├── cnxk_telemetry_npa.c<br>
│   │   │   ├── cnxk_telemetry_sso.c<br>
│   │   │   ├── cnxk_utils.c<br>
│   │   │   ├── cnxk_utils.h<br>
│   │   │   ├── hw<br>
│   │   │   │   ├── cpt.h<br>
│   │   │   │   ├── dpi.h<br>
│   │   │   │   ├── nix.h<br>
│   │   │   │   ├── npa.h<br>
│   │   │   │   ├── npc.h<br>
│   │   │   │   ├── ree.h<br>
│   │   │   │   ├── rvu.h<br>
│   │   │   │   ├── sdp.h<br>
│   │   │   │   ├── sso.h<br>
│   │   │   │   ├── ssow.h<br>
│   │   │   │   └── tim.h<br>

│   │   │   ├── roc_ae.c<br>
│   │   │   ├── roc_ae_fpm_tables.c<br>
│   │   │   ├── roc_ae_fpm_tables.h<br>
│   │   │   ├── roc_ae.h<br>
│   │   │   ├── roc_aes.c<br>
│   │   │   ├── roc_aes.h<br>
│   │   │   ├── roc_api.h<br>
│   │   │   ├── roc_bitfield.h<br>
│   │   │   ├── roc_bits.h<br>
│   │   │   ├── roc_bphy.c<br>
│   │   │   ├── roc_bphy_cgx.c<br>
│   │   │   ├── roc_bphy_cgx.h<br>
│   │   │   ├── roc_bphy_cgx_priv.h<br>
│   │   │   ├── roc_bphy.h<br>
│   │   │   ├── roc_bphy_irq.c<br>
│   │   │   ├── roc_bphy_irq.h<br>
│   │   │   ├── roc_constants.h<br>
│   │   │   ├── roc_cpt.c<br>
│   │   │   ├── roc_cpt_debug.c<br>
│   │   │   ├── roc_cpt.h<br>
│   │   │   ├── roc_cpt_priv.h<br>
│   │   │   ├── roc_dev.c<br>
│   │   │   ├── roc_dev_priv.h<br>
│   │   │   ├── roc_dpi.c<br>
│   │   │   ├── roc_dpi.h<br>
│   │   │   ├── roc_dpi_priv.h<br>
│   │   │   ├── roc_hash.c<br>
│   │   │   ├── roc_hash.h<br>
│   │   │   ├── roc_idev.c<br>
│   │   │   ├── roc_idev.h<br>
│   │   │   ├── roc_idev_priv.h<br>
│   │   │   ├── roc_ie.h<br>
│   │   │   ├── roc_ie_on.h<br>
│   │   │   ├── roc_ie_ot.c<br>
│   │   │   ├── roc_ie_ot.h<br>
│   │   │   ├── roc_io_generic.h<br>
│   │   │   ├── roc_io.h<br>
│   │   │   ├── roc_irq.c<br>
│   │   │   ├── roc_mbox.c<br>
│   │   │   ├── roc_mbox.h<br>
│   │   │   ├── roc_mbox_priv.h<br>
│   │   │   ├── roc_model.c<br>
│   │   │   ├── roc_model.h<br>
│   │   │   ├── roc_nix_bpf.c<br>
│   │   │   ├── roc_nix.c<br>
│   │   │   ├── roc_nix_debug.c<br>
│   │   │   ├── roc_nix_fc.c<br>
│   │   │   ├── roc_nix.h<br>
│   │   │   ├── roc_nix_inl.c<br>
│   │   │   ├── roc_nix_inl_dev.c<br>
│   │   │   ├── roc_nix_inl_dev_irq.c<br>
│   │   │   ├── roc_nix_inl.h<br>
│   │   │   ├── roc_nix_inl_priv.h<br>
│   │   │   ├── roc_nix_irq.c<br>
│   │   │   ├── roc_nix_mac.c<br>
│   │   │   ├── roc_nix_mcast.c<br>
│   │   │   ├── roc_nix_npc.c<br>
│   │   │   ├── roc_nix_ops.c<br>
│   │   │   ├── roc_nix_priv.h<br>
│   │   │   ├── roc_nix_ptp.c<br>
│   │   │   ├── roc_nix_queue.c<br>
│   │   │   ├── roc_nix_rss.c<br>
│   │   │   ├── roc_nix_stats.c<br>
│   │   │   ├── roc_nix_tm.c<br>
│   │   │   ├── roc_nix_tm_mark.c<br>
│   │   │   ├── roc_nix_tm_ops.c<br>
│   │   │   ├── roc_nix_tm_utils.c<br>
│   │   │   ├── roc_nix_vlan.c<br>
│   │   │   ├── roc_nix_xstats.h<br>
│   │   │   ├── roc_npa.c<br>
│   │   │   ├── roc_npa_debug.c<br>
│   │   │   ├── roc_npa.h<br>
│   │   │   ├── roc_npa_irq.c<br>
│   │   │   ├── roc_npa_priv.h<br>
│   │   │   ├── roc_npc.c<br>
│   │   │   ├── roc_npc.h<br>
│   │   │   ├── roc_npc_mcam.c<br>
│   │   │   ├── roc_npc_mcam_dump.c<br>
│   │   │   ├── roc_npc_parse.c<br>
│   │   │   ├── roc_npc_priv.h<br>
│   │   │   ├── roc_npc_utils.c<br>
│   │   │   ├── roc_platform.c<br>
│   │   │   ├── roc_platform.h<br>
│   │   │   ├── roc_priv.h<br>
│   │   │   ├── roc_ree.c<br>
│   │   │   ├── roc_ree.h<br>
│   │   │   ├── roc_ree_priv.h<br>
│   │   │   ├── roc_se.c<br>
│   │   │   ├── roc_se.h<br>
│   │   │   ├── roc_sso.c<br>
│   │   │   ├── roc_sso_debug.c<br>
│   │   │   ├── roc_sso.h<br>
│   │   │   ├── roc_sso_irq.c<br>
│   │   │   ├── roc_sso_priv.h<br>
│   │   │   ├── roc_tim.c<br>
│   │   │   ├── roc_tim.h<br>
│   │   │   ├── roc_tim_irq.c<br>
│   │   │   ├── roc_tim_priv.h<br>
│   │   │   ├── roc_util_priv.h<br>
│   │   │   ├── roc_utils.c<br>
│   │   │   ├── roc_utils.h<br>
│   │   │   └── version.map<br>
│   │   ├── cpt<br>
│   │   │   ├── cpt_common.h<br>
│   │   │   ├── cpt_fpm_tables.c<br>
│   │   │   ├── cpt_hw_types.h<br>
│   │   │   ├── cpt_mcode_defines.h<br>
│   │   │   ├── cpt_pmd_logs.h<br>
│   │   │   ├── cpt_pmd_ops_helper.c<br>
│   │   │   ├── cpt_pmd_ops_helper.h<br>
│   │   │   ├── cpt_ucode_asym.h<br>
│   │   │   ├── cpt_ucode.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaax<br>
│   │   │   ├── caamflib<br>
│   │   │   │   ├── compat.h<br>
│   │   │   │   ├── desc<br>
│   │   │   │   │   ├── algo.h<br>
│   │   │   │   │   ├── common.h<br>
│   │   │   │   │   ├── ipsec.h<br>
│   │   │   │   │   ├── pdcp.h<br>
│   │   │   │   │   └── sdap.h<br>
│   │   │   │   ├── desc.h<br>
│   │   │   │   ├── rta<br>
│   │   │   │   │   ├── fifo_load_store_cmd.h<br>
│   │   │   │   │   ├── header_cmd.h<br>
│   │   │   │   │   ├── jump_cmd.h<br>
│   │   │   │   │   ├── key_cmd.h<br>
│   │   │   │   │   ├── load_cmd.h<br>
│   │   │   │   │   ├── math_cmd.h<br>
│   │   │   │   │   ├── move_cmd.h<br>
│   │   │   │   │   ├── nfifo_cmd.h<br>
│   │   │   │   │   ├── operation_cmd.h<br>
│   │   │   │   │   ├── protocol_cmd.h<br>
│   │   │   │   │   ├── sec_run_time_asm.h<br>
│   │   │   │   │   ├── seq_in_out_ptr_cmd.h<br>
│   │   │   │   │   ├── signature_cmd.h<br>
│   │   │   │   │   └── store_cmd.h<br>
│   │   │   │   └── rta.h<br>
│   │   │   ├── caamflib.c<br>
│   │   │   ├── compat.h<br>
│   │   │   ├── dpaa_list.h<br>
│   │   │   ├── dpaa_of.c<br>
│   │   │   ├── dpaa_of.h<br>
│   │   │   ├── dpaax_iova_table.c<br>
│   │   │   ├── dpaax_iova_table.h<br>
│   │   │   ├── dpaax_logs.h<br>

│   │   │   └── version.map<br>
│   │   ├── iavf<br>
│   │   │   ├── iavf_adminq.c<br>
│   │   │   ├── iavf_adminq_cmd.h<br>
│   │   │   ├── iavf_adminq.h<br>
│   │   │   ├── iavf_alloc.h<br>
│   │   │   ├── iavf_common.c<br>
│   │   │   ├── iavf_devids.h<br>
│   │   │   ├── iavf_impl.c<br>
│   │   │   ├── iavf_osdep.h<br>
│   │   │   ├── iavf_prototype.h<br>
│   │   │   ├── iavf_register.h<br>
│   │   │   ├── iavf_status.h<br>
│   │   │   ├── iavf_type.h<br>

│   │   │   ├── README<br>
│   │   │   ├── version.map<br>
│   │   │   ├── virtchnl.h<br>
│   │   │   └── virtchnl_inline_ipsec.h<br>

│   │   ├── mlx5<br>
│   │   │   ├── linux<br>

│   │   │   │   ├── mlx5_common_auxiliary.c<br>
│   │   │   │   ├── mlx5_common_os.c<br>
│   │   │   │   ├── mlx5_common_os.h<br>
│   │   │   │   ├── mlx5_common_verbs.c<br>
│   │   │   │   ├── mlx5_glue.c<br>
│   │   │   │   ├── mlx5_glue.h<br>
│   │   │   │   ├── mlx5_nl.c<br>
│   │   │   │   └── mlx5_nl.h<br>

│   │   │   ├── mlx5_common.c<br>
│   │   │   ├── mlx5_common_defs.h<br>
│   │   │   ├── mlx5_common_devx.c<br>
│   │   │   ├── mlx5_common_devx.h<br>
│   │   │   ├── mlx5_common.h<br>
│   │   │   ├── mlx5_common_log.h<br>
│   │   │   ├── mlx5_common_mp.c<br>
│   │   │   ├── mlx5_common_mp.h<br>
│   │   │   ├── mlx5_common_mr.c<br>
│   │   │   ├── mlx5_common_mr.h<br>
│   │   │   ├── mlx5_common_pci.c<br>
│   │   │   ├── mlx5_common_private.h<br>
│   │   │   ├── mlx5_common_utils.c<br>
│   │   │   ├── mlx5_common_utils.h<br>
│   │   │   ├── mlx5_devx_cmds.c<br>
│   │   │   ├── mlx5_devx_cmds.h<br>
│   │   │   ├── mlx5_malloc.c<br>
│   │   │   ├── mlx5_malloc.h<br>
│   │   │   ├── mlx5_prm.h<br>
│   │   │   ├── version.map<br>
│   │   │   └── windows<br>

│   │   │       ├── mlx5_common_os.c<br>
│   │   │       ├── mlx5_common_os.h<br>
│   │   │       ├── mlx5_glue.c<br>
│   │   │       ├── mlx5_glue.h<br>
│   │   │       ├── mlx5_win_defs.h<br>
│   │   │       └── mlx5_win_ext.h<br>
│   │   ├── mvep<br>

│   │   │   ├── mvep_common.c<br>
│   │   │   ├── rte_mvep_common.h<br>
│   │   │   └── version.map<br>
│   │   ├── octeontx<br>

│   │   │   ├── octeontx_mbox.c<br>
│   │   │   ├── octeontx_mbox.h<br>
│   │   │   └── version.map<br>
│   │   ├── qat<br>
│   │   │   ├── dev<br>
│   │   │   │   ├── qat_dev_gen1.c<br>
│   │   │   │   ├── qat_dev_gen2.c<br>
│   │   │   │   ├── qat_dev_gen3.c<br>
│   │   │   │   ├── qat_dev_gen4.c<br>
│   │   │   │   └── qat_dev_gens.h<br>

│   │   │   ├── qat_adf<br>
│   │   │   │   ├── adf_pf2vf_msg.h<br>
│   │   │   │   ├── adf_transport_access_macros_gen4.h<br>
│   │   │   │   ├── adf_transport_access_macros_gen4vf.h<br>
│   │   │   │   ├── adf_transport_access_macros.h<br>
│   │   │   │   ├── icp_qat_fw_comp.h<br>
│   │   │   │   ├── icp_qat_fw.h<br>
│   │   │   │   ├── icp_qat_fw_la.h<br>
│   │   │   │   ├── icp_qat_fw_mmp_ids.h<br>
│   │   │   │   ├── icp_qat_fw_pke.h<br>
│   │   │   │   ├── icp_qat_hw_gen4_comp_defs.h<br>
│   │   │   │   ├── icp_qat_hw_gen4_comp.h<br>
│   │   │   │   ├── icp_qat_hw.h<br>
│   │   │   │   └── qat_pke.h<br>
│   │   │   ├── qat_common.c<br>
│   │   │   ├── qat_common.h<br>
│   │   │   ├── qat_device.c<br>
│   │   │   ├── qat_device.h<br>
│   │   │   ├── qat_logs.c<br>
│   │   │   ├── qat_logs.h<br>
│   │   │   ├── qat_pf2vf.c<br>
│   │   │   ├── qat_pf2vf.h<br>
│   │   │   ├── qat_qp.c<br>
│   │   │   ├── qat_qp.h<br>
│   │   │   └── version.map<br>
│   │   └── sfc_efx<br>
│   │       ├── base<br>
│   │       │   ├── ef10_evb.c<br>
│   │       │   ├── ef10_ev.c<br>
│   │       │   ├── ef10_filter.c<br>
│   │       │   ├── ef10_firmware_ids.h<br>
│   │       │   ├── ef10_image.c<br>
│   │       │   ├── ef10_impl.h<br>
│   │       │   ├── ef10_intr.c<br>
│   │       │   ├── ef10_mac.c<br>
│   │       │   ├── ef10_mcdi.c<br>
│   │       │   ├── ef10_nic.c<br>
│   │       │   ├── ef10_nvram.c<br>
│   │       │   ├── ef10_phy.c<br>
│   │       │   ├── ef10_proxy.c<br>
│   │       │   ├── ef10_rx.c<br>
│   │       │   ├── ef10_signed_image_layout.h<br>
│   │       │   ├── ef10_tlv_layout.h<br>
│   │       │   ├── ef10_tx.c<br>
│   │       │   ├── ef10_vpd.c<br>
│   │       │   ├── efx_annote.h<br>
│   │       │   ├── efx_bootcfg.c<br>
│   │       │   ├── efx_check.h<br>
│   │       │   ├── efx_crc32.c<br>
│   │       │   ├── efx_evb.c<br>
│   │       │   ├── efx_ev.c<br>
│   │       │   ├── efx_filter.c<br>
│   │       │   ├── efx.h<br>
│   │       │   ├── efx_hash.c<br>
│   │       │   ├── efx_impl.h<br>
│   │       │   ├── efx_intr.c<br>
│   │       │   ├── efx_lic.c<br>
│   │       │   ├── efx_mac.c<br>
│   │       │   ├── efx_mae.c<br>
│   │       │   ├── efx_mcdi.c<br>
│   │       │   ├── efx_mcdi.h<br>
│   │       │   ├── efx_mon.c<br>
│   │       │   ├── efx_nic.c<br>
│   │       │   ├── efx_nvram.c<br>
│   │       │   ├── efx_pci.c<br>
│   │       │   ├── efx_phy.c<br>
│   │       │   ├── efx_phy_ids.h<br>
│   │       │   ├── efx_port.c<br>
│   │       │   ├── efx_proxy.c<br>
│   │       │   ├── efx_regs_counters_pkt_format.h<br>
│   │       │   ├── efx_regs_ef100.h<br>
│   │       │   ├── efx_regs_ef10.h<br>
│   │       │   ├── efx_regs.h<br>
│   │       │   ├── efx_regs_mcdi_aoe.h<br>
│   │       │   ├── efx_regs_mcdi.h<br>
│   │       │   ├── efx_regs_mcdi_strs.h<br>
│   │       │   ├── efx_regs_pci.h<br>
│   │       │   ├── efx_rx.c<br>
│   │       │   ├── efx_sram.c<br>
│   │       │   ├── efx_tunnel.c<br>
│   │       │   ├── efx_tx.c<br>
│   │       │   ├── efx_types.h<br>
│   │       │   ├── efx_virtio.c<br>
│   │       │   ├── efx_vpd.c<br>
│   │       │   ├── hunt_impl.h<br>
│   │       │   ├── hunt_nic.c<br>
│   │       │   ├── mcdi_mon.c<br>
│   │       │   ├── mcdi_mon.h<br>
│   │       │   ├── medford2_impl.h<br>
│   │       │   ├── medford2_nic.c<br>
│   │       │   ├── medford_impl.h<br>
│   │       │   ├── medford_nic.c<br>

│   │       │   ├── README<br>
│   │       │   ├── rhead_ev.c<br>
│   │       │   ├── rhead_impl.h<br>
│   │       │   ├── rhead_intr.c<br>
│   │       │   ├── rhead_nic.c<br>
│   │       │   ├── rhead_pci.c<br>
│   │       │   ├── rhead_rx.c<br>
│   │       │   ├── rhead_tunnel.c<br>
│   │       │   ├── rhead_tx.c<br>
│   │       │   ├── rhead_virtio.c<br>
│   │       │   ├── siena_flash.h<br>
│   │       │   ├── siena_impl.h<br>
│   │       │   ├── siena_mac.c<br>
│   │       │   ├── siena_mcdi.c<br>
│   │       │   ├── siena_nic.c<br>
│   │       │   ├── siena_nvram.c<br>
│   │       │   ├── siena_phy.c<br>
│   │       │   ├── siena_sram.c<br>
│   │       │   └── siena_vpd.c<br>
│   │       ├── efsys.h<br>

│   │       ├── sfc_efx.c<br>
│   │       ├── sfc_efx_debug.h<br>
│   │       ├── sfc_efx.h<br>
│   │       ├── sfc_efx_log.h<br>
│   │       ├── sfc_efx_mcdi.c<br>
│   │       ├── sfc_efx_mcdi.h<br>
│   │       └── version.map<br>
│   ├── compress<br>
│   │   ├── isal<br>
│   │   │   ├── isal_compress_pmd.c<br>
│   │   │   ├── isal_compress_pmd_ops.c<br>
│   │   │   ├── isal_compress_pmd_private.h<br>

│   │   │   └── version.map<br>

│   │   ├── mlx5<br>

│   │   │   ├── mlx5_compress.c<br>
│   │   │   ├── mlx5_compress_utils.h<br>
│   │   │   └── version.map<br>
│   │   ├── octeontx<br>
│   │   │   ├── include<br>
│   │   │   │   └── zip_regs.h<br>

│   │   │   ├── otx_zip.c<br>
│   │   │   ├── otx_zip.h<br>
│   │   │   ├── otx_zip_pmd.c<br>
│   │   │   └── version.map<br>
│   │   ├── qat<br>
│   │   │   ├── dev<br>
│   │   │   │   ├── qat_comp_pmd_gen1.c<br>
│   │   │   │   ├── qat_comp_pmd_gen2.c<br>
│   │   │   │   ├── qat_comp_pmd_gen3.c<br>
│   │   │   │   ├── qat_comp_pmd_gen4.c<br>
│   │   │   │   └── qat_comp_pmd_gens.h<br>
│   │   │   ├── qat_comp.c<br>
│   │   │   ├── qat_comp.h<br>
│   │   │   ├── qat_comp_pmd.c<br>
│   │   │   └── qat_comp_pmd.h<br>
│   │   └── zlib<br>

│   │       ├── version.map<br>
│   │       ├── zlib_pmd.c<br>
│   │       ├── zlib_pmd_ops.c<br>
│   │       └── zlib_pmd_private.h<br>
│   ├── crypto<br>
│   │   ├── armv8<br>
│   │   │   ├── armv8_pmd_private.h<br>

│   │   │   ├── rte_armv8_pmd.c<br>
│   │   │   ├── rte_armv8_pmd_ops.c<br>
│   │   │   └── version.map<br>
│   │   ├── bcmfs<br>
│   │   │   ├── bcmfs_device.c<br>
│   │   │   ├── bcmfs_device.h<br>
│   │   │   ├── bcmfs_dev_msg.h<br>
│   │   │   ├── bcmfs_hw_defs.h<br>
│   │   │   ├── bcmfs_logs.c<br>
│   │   │   ├── bcmfs_logs.h<br>
│   │   │   ├── bcmfs_qp.c<br>
│   │   │   ├── bcmfs_qp.h<br>
│   │   │   ├── bcmfs_sym.c<br>
│   │   │   ├── bcmfs_sym_capabilities.c<br>
│   │   │   ├── bcmfs_sym_capabilities.h<br>
│   │   │   ├── bcmfs_sym_defs.h<br>
│   │   │   ├── bcmfs_sym_engine.c<br>
│   │   │   ├── bcmfs_sym_engine.h<br>
│   │   │   ├── bcmfs_sym_pmd.c<br>
│   │   │   ├── bcmfs_sym_pmd.h<br>
│   │   │   ├── bcmfs_sym_req.h<br>
│   │   │   ├── bcmfs_sym_session.c<br>
│   │   │   ├── bcmfs_sym_session.h<br>
│   │   │   ├── bcmfs_vfio.c<br>
│   │   │   ├── bcmfs_vfio.h<br>
│   │   │   ├── hw<br>
│   │   │   │   ├── bcmfs4_rm.c<br>
│   │   │   │   ├── bcmfs5_rm.c<br>
│   │   │   │   ├── bcmfs_rm_common.c<br>
│   │   │   │   └── bcmfs_rm_common.h<br>

│   │   │   └── version.map<br>
│   │   ├── caam_jr<br>
│   │   │   ├── caam_jr.c<br>
│   │   │   ├── caam_jr_capabilities.c<br>
│   │   │   ├── caam_jr_capabilities.h<br>
│   │   │   ├── caam_jr_config.h<br>
│   │   │   ├── caam_jr_desc.h<br>
│   │   │   ├── caam_jr_hw.c<br>
│   │   │   ├── caam_jr_hw_specific.h<br>
│   │   │   ├── caam_jr_log.h<br>
│   │   │   ├── caam_jr_pvt.h<br>
│   │   │   ├── caam_jr_uio.c<br>

│   │   │   └── version.map<br>
│   │   ├── ccp<br>
│   │   │   ├── ccp_crypto.c<br>
│   │   │   ├── ccp_crypto.h<br>
│   │   │   ├── ccp_dev.c<br>
│   │   │   ├── ccp_dev.h<br>
│   │   │   ├── ccp_pci.c<br>
│   │   │   ├── ccp_pci.h<br>
│   │   │   ├── ccp_pmd_ops.c<br>
│   │   │   ├── ccp_pmd_private.h<br>

│   │   │   ├── rte_ccp_pmd.c<br>
│   │   │   └── version.map<br>
│   │   ├── cnxk<br>
│   │   │   ├── cn10k_cryptodev.c<br>
│   │   │   ├── cn10k_cryptodev.h<br>
│   │   │   ├── cn10k_cryptodev_ops.c<br>
│   │   │   ├── cn10k_cryptodev_ops.h<br>
│   │   │   ├── cn10k_ipsec.c<br>
│   │   │   ├── cn10k_ipsec.h<br>
│   │   │   ├── cn10k_ipsec_la_ops.h<br>
│   │   │   ├── cn9k_cryptodev.c<br>
│   │   │   ├── cn9k_cryptodev.h<br>
│   │   │   ├── cn9k_cryptodev_ops.c<br>
│   │   │   ├── cn9k_cryptodev_ops.h<br>
│   │   │   ├── cn9k_ipsec.c<br>
│   │   │   ├── cn9k_ipsec.h<br>
│   │   │   ├── cn9k_ipsec_la_ops.h<br>
│   │   │   ├── cnxk_ae.h<br>
│   │   │   ├── cnxk_cryptodev.c<br>
│   │   │   ├── cnxk_cryptodev_capabilities.c<br>
│   │   │   ├── cnxk_cryptodev_capabilities.h<br>
│   │   │   ├── cnxk_cryptodev_devargs.c<br>
│   │   │   ├── cnxk_cryptodev.h<br>
│   │   │   ├── cnxk_cryptodev_ops.c<br>
│   │   │   ├── cnxk_cryptodev_ops.h<br>
│   │   │   ├── cnxk_cryptodev_sec.c<br>
│   │   │   ├── cnxk_cryptodev_sec.h<br>
│   │   │   ├── cnxk_ipsec.h<br>
│   │   │   ├── cnxk_se.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa2_sec<br>
│   │   │   ├── dpaa2_sec_dpseci.c<br>
│   │   │   ├── dpaa2_sec_event.h<br>
│   │   │   ├── dpaa2_sec_logs.h<br>
│   │   │   ├── dpaa2_sec_priv.h<br>
│   │   │   ├── dpaa2_sec_raw_dp.c<br>
│   │   │   ├── mc<br>
│   │   │   │   ├── dpseci.c<br>
│   │   │   │   ├── fsl_dpseci_cmd.h<br>
│   │   │   │   └── fsl_dpseci.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa_sec<br>
│   │   │   ├── dpaa_sec.c<br>
│   │   │   ├── dpaa_sec_event.h<br>
│   │   │   ├── dpaa_sec.h<br>
│   │   │   ├── dpaa_sec_log.h<br>
│   │   │   ├── dpaa_sec_raw_dp.c<br>

│   │   │   └── version.map<br>
│   │   ├── ipsec_mb<br>
│   │   │   ├── ipsec_mb_ops.c<br>
│   │   │   ├── ipsec_mb_private.c<br>
│   │   │   ├── ipsec_mb_private.h<br>

│   │   │   ├── pmd_aesni_gcm.c<br>
│   │   │   ├── pmd_aesni_gcm_priv.h<br>
│   │   │   ├── pmd_aesni_mb.c<br>
│   │   │   ├── pmd_aesni_mb_priv.h<br>
│   │   │   ├── pmd_chacha_poly.c<br>
│   │   │   ├── pmd_chacha_poly_priv.h<br>
│   │   │   ├── pmd_kasumi.c<br>
│   │   │   ├── pmd_kasumi_priv.h<br>
│   │   │   ├── pmd_snow3g.c<br>
│   │   │   ├── pmd_snow3g_priv.h<br>
│   │   │   ├── pmd_zuc.c<br>
│   │   │   ├── pmd_zuc_priv.h<br>
│   │   │   └── version.map<br>

│   │   ├── mlx5<br>

│   │   │   ├── mlx5_crypto.c<br>
│   │   │   ├── mlx5_crypto_dek.c<br>
│   │   │   ├── mlx5_crypto.h<br>
│   │   │   ├── mlx5_crypto_utils.h<br>
│   │   │   └── version.map<br>
│   │   ├── mvsam<br>

│   │   │   ├── mrvl_pmd_private.h<br>
│   │   │   ├── rte_mrvl_compat.h<br>
│   │   │   ├── rte_mrvl_pmd.c<br>
│   │   │   ├── rte_mrvl_pmd_ops.c<br>
│   │   │   └── version.map<br>
│   │   ├── nitrox<br>

│   │   │   ├── nitrox_csr.h<br>
│   │   │   ├── nitrox_device.c<br>
│   │   │   ├── nitrox_device.h<br>
│   │   │   ├── nitrox_hal.c<br>
│   │   │   ├── nitrox_hal.h<br>
│   │   │   ├── nitrox_logs.c<br>
│   │   │   ├── nitrox_logs.h<br>
│   │   │   ├── nitrox_qp.c<br>
│   │   │   ├── nitrox_qp.h<br>
│   │   │   ├── nitrox_sym.c<br>
│   │   │   ├── nitrox_sym_capabilities.c<br>
│   │   │   ├── nitrox_sym_capabilities.h<br>
│   │   │   ├── nitrox_sym_ctx.h<br>
│   │   │   ├── nitrox_sym.h<br>
│   │   │   ├── nitrox_sym_reqmgr.c<br>
│   │   │   ├── nitrox_sym_reqmgr.h<br>
│   │   │   └── version.map<br>
│   │   ├── null<br>

│   │   │   ├── null_crypto_pmd.c<br>
│   │   │   ├── null_crypto_pmd_ops.c<br>
│   │   │   ├── null_crypto_pmd_private.h<br>
│   │   │   └── version.map<br>
│   │   ├── octeontx<br>

│   │   │   ├── otx_cryptodev.c<br>
│   │   │   ├── otx_cryptodev_capabilities.c<br>
│   │   │   ├── otx_cryptodev_capabilities.h<br>
│   │   │   ├── otx_cryptodev.h<br>
│   │   │   ├── otx_cryptodev_hw_access.c<br>
│   │   │   ├── otx_cryptodev_hw_access.h<br>
│   │   │   ├── otx_cryptodev_mbox.c<br>
│   │   │   ├── otx_cryptodev_mbox.h<br>
│   │   │   ├── otx_cryptodev_ops.c<br>
│   │   │   ├── otx_cryptodev_ops.h<br>
│   │   │   └── version.map<br>
│   │   ├── openssl<br>
│   │   │   ├── compat.h<br>

│   │   │   ├── openssl_pmd_private.h<br>
│   │   │   ├── rte_openssl_pmd.c<br>
│   │   │   ├── rte_openssl_pmd_ops.c<br>
│   │   │   └── version.map<br>
│   │   ├── qat<br>
│   │   │   ├── dev<br>
│   │   │   │   ├── qat_asym_pmd_gen1.c<br>
│   │   │   │   ├── qat_crypto_pmd_gen2.c<br>
│   │   │   │   ├── qat_crypto_pmd_gen3.c<br>
│   │   │   │   ├── qat_crypto_pmd_gen4.c<br>
│   │   │   │   ├── qat_crypto_pmd_gens.h<br>
│   │   │   │   └── qat_sym_pmd_gen1.c<br>
│   │   │   ├── qat_asym.c<br>
│   │   │   ├── qat_asym.h<br>
│   │   │   ├── qat_crypto.c<br>
│   │   │   ├── qat_crypto.h<br>
│   │   │   ├── qat_ec.h<br>
│   │   │   ├── qat_sym.c<br>
│   │   │   ├── qat_sym.h<br>
│   │   │   ├── qat_sym_session.c<br>
│   │   │   └── qat_sym_session.h<br>
│   │   ├── scheduler<br>

│   │   │   ├── rte_cryptodev_scheduler.c<br>
│   │   │   ├── rte_cryptodev_scheduler.h<br>
│   │   │   ├── rte_cryptodev_scheduler_operations.h<br>
│   │   │   ├── scheduler_failover.c<br>
│   │   │   ├── scheduler_multicore.c<br>
│   │   │   ├── scheduler_pkt_size_distr.c<br>
│   │   │   ├── scheduler_pmd.c<br>
│   │   │   ├── scheduler_pmd_ops.c<br>
│   │   │   ├── scheduler_pmd_private.h<br>
│   │   │   ├── scheduler_roundrobin.c<br>
│   │   │   └── version.map<br>
│   │   └── virtio<br>

│   │       ├── version.map<br>
│   │       ├── virtio_crypto_algs.h<br>
│   │       ├── virtio_crypto_capabilities.h<br>
│   │       ├── virtio_cryptodev.c<br>
│   │       ├── virtio_cryptodev.h<br>
│   │       ├── virtio_logs.h<br>
│   │       ├── virtio_pci.c<br>
│   │       ├── virtio_pci.h<br>
│   │       ├── virtio_ring.h<br>
│   │       ├── virtio_rxtx.c<br>
│   │       ├── virtqueue.c<br>
│   │       └── virtqueue.h<br>
│   ├── dma<br>
│   │   ├── cnxk<br>
│   │   │   ├── cnxk_dmadev.c<br>
│   │   │   ├── cnxk_dmadev.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa<br>
│   │   │   ├── dpaa_qdma.c<br>
│   │   │   ├── dpaa_qdma.h<br>
│   │   │   ├── dpaa_qdma_logs.h<br>

│   │   │   └── version.map<br>
│   │   ├── hisilicon<br>
│   │   │   ├── hisi_dmadev.c<br>
│   │   │   ├── hisi_dmadev.h<br>

│   │   │   └── version.map<br>
│   │   ├── idxd<br>
│   │   │   ├── dpdk_idxd_cfg.py<br>
│   │   │   ├── idxd_bus.c<br>
│   │   │   ├── idxd_common.c<br>
│   │   │   ├── idxd_hw_defs.h<br>
│   │   │   ├── idxd_internal.h<br>
│   │   │   ├── idxd_pci.c<br>

│   │   │   └── version.map<br>
│   │   ├── ioat<br>
│   │   │   ├── ioat_dmadev.c<br>
│   │   │   ├── ioat_hw_defs.h<br>
│   │   │   ├── ioat_internal.h<br>

│   │   │   └── version.map<br>

│   │   └── skeleton<br>

│   │       ├── skeleton_dmadev.c<br>
│   │       ├── skeleton_dmadev.h<br>
│   │       └── version.map<br>
│   ├── event<br>
│   │   ├── cnxk<br>
│   │   │   ├── cn10k_eventdev.c<br>
│   │   │   ├── cn10k_worker.c<br>
│   │   │   ├── cn10k_worker.h<br>
│   │   │   ├── cn9k_eventdev.c<br>
│   │   │   ├── cn9k_worker.c<br>
│   │   │   ├── cn9k_worker.h<br>
│   │   │   ├── cnxk_eventdev_adptr.c<br>
│   │   │   ├── cnxk_eventdev.c<br>
│   │   │   ├── cnxk_eventdev.h<br>
│   │   │   ├── cnxk_eventdev_selftest.c<br>
│   │   │   ├── cnxk_eventdev_stats.c<br>
│   │   │   ├── cnxk_tim_evdev.c<br>
│   │   │   ├── cnxk_tim_evdev.h<br>
│   │   │   ├── cnxk_tim_worker.c<br>
│   │   │   ├── cnxk_tim_worker.h<br>
│   │   │   ├── cnxk_worker.h<br>
│   │   │   ├── deq<br>
│   │   │   │   ├── cn10k<br>
│   │   │   │   │   ├── deq_0_15_burst.c<br>
│   │   │   │   │   ├── deq_0_15.c<br>
│   │   │   │   │   ├── deq_0_15_ca_burst.c<br>
│   │   │   │   │   ├── deq_0_15_ca.c<br>
│   │   │   │   │   ├── deq_0_15_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_0_15_ca_seg.c<br>
│   │   │   │   │   ├── deq_0_15_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_0_15_ca_tmo.c<br>
│   │   │   │   │   ├── deq_0_15_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_0_15_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_0_15_dual.c<br>
│   │   │   │   │   ├── deq_0_15_seg_burst.c<br>
│   │   │   │   │   ├── deq_0_15_seg.c<br>
│   │   │   │   │   ├── deq_0_15_tmo_burst.c<br>
│   │   │   │   │   ├── deq_0_15_tmo.c<br>
│   │   │   │   │   ├── deq_0_15_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_0_15_tmo_seg.c<br>
│   │   │   │   │   ├── deq_112_127_burst.c<br>
│   │   │   │   │   ├── deq_112_127.c<br>
│   │   │   │   │   ├── deq_112_127_ca_burst.c<br>
│   │   │   │   │   ├── deq_112_127_ca.c<br>
│   │   │   │   │   ├── deq_112_127_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_112_127_ca_seg.c<br>
│   │   │   │   │   ├── deq_112_127_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_112_127_ca_tmo.c<br>
│   │   │   │   │   ├── deq_112_127_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_112_127_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_112_127_dual.c<br>
│   │   │   │   │   ├── deq_112_127_seg_burst.c<br>
│   │   │   │   │   ├── deq_112_127_seg.c<br>
│   │   │   │   │   ├── deq_112_127_tmo_burst.c<br>
│   │   │   │   │   ├── deq_112_127_tmo.c<br>
│   │   │   │   │   ├── deq_112_127_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_112_127_tmo_seg.c<br>
│   │   │   │   │   ├── deq_16_31_burst.c<br>
│   │   │   │   │   ├── deq_16_31.c<br>
│   │   │   │   │   ├── deq_16_31_ca_burst.c<br>
│   │   │   │   │   ├── deq_16_31_ca.c<br>
│   │   │   │   │   ├── deq_16_31_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_16_31_ca_seg.c<br>
│   │   │   │   │   ├── deq_16_31_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_16_31_ca_tmo.c<br>
│   │   │   │   │   ├── deq_16_31_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_16_31_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_16_31_dual.c<br>
│   │   │   │   │   ├── deq_16_31_seg_burst.c<br>
│   │   │   │   │   ├── deq_16_31_seg.c<br>
│   │   │   │   │   ├── deq_16_31_tmo_burst.c<br>
│   │   │   │   │   ├── deq_16_31_tmo.c<br>
│   │   │   │   │   ├── deq_16_31_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_16_31_tmo_seg.c<br>
│   │   │   │   │   ├── deq_32_47_burst.c<br>
│   │   │   │   │   ├── deq_32_47.c<br>
│   │   │   │   │   ├── deq_32_47_ca_burst.c<br>
│   │   │   │   │   ├── deq_32_47_ca.c<br>
│   │   │   │   │   ├── deq_32_47_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_32_47_ca_seg.c<br>
│   │   │   │   │   ├── deq_32_47_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_32_47_ca_tmo.c<br>
│   │   │   │   │   ├── deq_32_47_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_32_47_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_32_47_dual.c<br>
│   │   │   │   │   ├── deq_32_47_seg_burst.c<br>
│   │   │   │   │   ├── deq_32_47_seg.c<br>
│   │   │   │   │   ├── deq_32_47_tmo_burst.c<br>
│   │   │   │   │   ├── deq_32_47_tmo.c<br>
│   │   │   │   │   ├── deq_32_47_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_32_47_tmo_seg.c<br>
│   │   │   │   │   ├── deq_48_63_burst.c<br>
│   │   │   │   │   ├── deq_48_63.c<br>
│   │   │   │   │   ├── deq_48_63_ca_burst.c<br>
│   │   │   │   │   ├── deq_48_63_ca.c<br>
│   │   │   │   │   ├── deq_48_63_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_48_63_ca_seg.c<br>
│   │   │   │   │   ├── deq_48_63_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_48_63_ca_tmo.c<br>
│   │   │   │   │   ├── deq_48_63_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_48_63_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_48_63_dual.c<br>
│   │   │   │   │   ├── deq_48_63_seg_burst.c<br>
│   │   │   │   │   ├── deq_48_63_seg.c<br>
│   │   │   │   │   ├── deq_48_63_tmo_burst.c<br>
│   │   │   │   │   ├── deq_48_63_tmo.c<br>
│   │   │   │   │   ├── deq_48_63_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_48_63_tmo_seg.c<br>
│   │   │   │   │   ├── deq_64_79_burst.c<br>
│   │   │   │   │   ├── deq_64_79.c<br>
│   │   │   │   │   ├── deq_64_79_ca_burst.c<br>
│   │   │   │   │   ├── deq_64_79_ca.c<br>
│   │   │   │   │   ├── deq_64_79_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_64_79_ca_seg.c<br>
│   │   │   │   │   ├── deq_64_79_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_64_79_ca_tmo.c<br>
│   │   │   │   │   ├── deq_64_79_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_64_79_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_64_79_dual.c<br>
│   │   │   │   │   ├── deq_64_79_seg_burst.c<br>
│   │   │   │   │   ├── deq_64_79_seg.c<br>
│   │   │   │   │   ├── deq_64_79_tmo_burst.c<br>
│   │   │   │   │   ├── deq_64_79_tmo.c<br>
│   │   │   │   │   ├── deq_64_79_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_64_79_tmo_seg.c<br>
│   │   │   │   │   ├── deq_80_95_burst.c<br>
│   │   │   │   │   ├── deq_80_95.c<br>
│   │   │   │   │   ├── deq_80_95_ca_burst.c<br>
│   │   │   │   │   ├── deq_80_95_ca.c<br>
│   │   │   │   │   ├── deq_80_95_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_80_95_ca_seg.c<br>
│   │   │   │   │   ├── deq_80_95_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_80_95_ca_tmo.c<br>
│   │   │   │   │   ├── deq_80_95_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_80_95_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_80_95_dual.c<br>
│   │   │   │   │   ├── deq_80_95_seg_burst.c<br>
│   │   │   │   │   ├── deq_80_95_seg.c<br>
│   │   │   │   │   ├── deq_80_95_tmo_burst.c<br>
│   │   │   │   │   ├── deq_80_95_tmo.c<br>
│   │   │   │   │   ├── deq_80_95_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_80_95_tmo_seg.c<br>
│   │   │   │   │   ├── deq_96_111_burst.c<br>
│   │   │   │   │   ├── deq_96_111.c<br>
│   │   │   │   │   ├── deq_96_111_ca_burst.c<br>
│   │   │   │   │   ├── deq_96_111_ca.c<br>
│   │   │   │   │   ├── deq_96_111_ca_seg_burst.c<br>
│   │   │   │   │   ├── deq_96_111_ca_seg.c<br>
│   │   │   │   │   ├── deq_96_111_ca_tmo_burst.c<br>
│   │   │   │   │   ├── deq_96_111_ca_tmo.c<br>
│   │   │   │   │   ├── deq_96_111_ca_tmo_seg_burst.c<br>
│   │   │   │   │   ├── deq_96_111_ca_tmo_seg.c<br>
│   │   │   │   │   ├── deq_96_111_dual.c<br>
│   │   │   │   │   ├── deq_96_111_seg_burst.c<br>
│   │   │   │   │   ├── deq_96_111_seg.c<br>
│   │   │   │   │   ├── deq_96_111_tmo_burst.c<br>
│   │   │   │   │   ├── deq_96_111_tmo.c<br>
│   │   │   │   │   ├── deq_96_111_tmo_seg_burst.c<br>
│   │   │   │   │   └── deq_96_111_tmo_seg.c<br>
│   │   │   │   └── cn9k<br>
│   │   │   │       ├── deq_0_15_burst.c<br>
│   │   │   │       ├── deq_0_15.c<br>
│   │   │   │       ├── deq_0_15_ca_burst.c<br>
│   │   │   │       ├── deq_0_15_ca.c<br>
│   │   │   │       ├── deq_0_15_ca_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_ca_seg.c<br>
│   │   │   │       ├── deq_0_15_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_0_15_ca_tmo.c<br>
│   │   │   │       ├── deq_0_15_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_0_15_dual_burst.c<br>
│   │   │   │       ├── deq_0_15_dual.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_ca.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_seg.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_0_15_dual_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_seg.c<br>
│   │   │   │       ├── deq_0_15_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_tmo.c<br>
│   │   │   │       ├── deq_0_15_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_0_15_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_seg.c<br>
│   │   │   │       ├── deq_0_15_tmo_burst.c<br>
│   │   │   │       ├── deq_0_15_tmo.c<br>
│   │   │   │       ├── deq_0_15_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_0_15_tmo_seg.c<br>
│   │   │   │       ├── deq_112_127_burst.c<br>
│   │   │   │       ├── deq_112_127.c<br>
│   │   │   │       ├── deq_112_127_ca_burst.c<br>
│   │   │   │       ├── deq_112_127_ca.c<br>
│   │   │   │       ├── deq_112_127_ca_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_ca_seg.c<br>
│   │   │   │       ├── deq_112_127_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_112_127_ca_tmo.c<br>
│   │   │   │       ├── deq_112_127_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_112_127_dual_burst.c<br>
│   │   │   │       ├── deq_112_127_dual.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_ca.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_seg.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_112_127_dual_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_seg.c<br>
│   │   │   │       ├── deq_112_127_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_tmo.c<br>
│   │   │   │       ├── deq_112_127_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_112_127_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_seg.c<br>
│   │   │   │       ├── deq_112_127_tmo_burst.c<br>
│   │   │   │       ├── deq_112_127_tmo.c<br>
│   │   │   │       ├── deq_112_127_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_112_127_tmo_seg.c<br>
│   │   │   │       ├── deq_16_31_burst.c<br>
│   │   │   │       ├── deq_16_31.c<br>
│   │   │   │       ├── deq_16_31_ca_burst.c<br>
│   │   │   │       ├── deq_16_31_ca.c<br>
│   │   │   │       ├── deq_16_31_ca_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_ca_seg.c<br>
│   │   │   │       ├── deq_16_31_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_16_31_ca_tmo.c<br>
│   │   │   │       ├── deq_16_31_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_16_31_dual_burst.c<br>
│   │   │   │       ├── deq_16_31_dual.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_ca.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_seg.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_16_31_dual_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_seg.c<br>
│   │   │   │       ├── deq_16_31_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_tmo.c<br>
│   │   │   │       ├── deq_16_31_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_16_31_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_seg.c<br>
│   │   │   │       ├── deq_16_31_tmo_burst.c<br>
│   │   │   │       ├── deq_16_31_tmo.c<br>
│   │   │   │       ├── deq_16_31_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_16_31_tmo_seg.c<br>
│   │   │   │       ├── deq_32_47_burst.c<br>
│   │   │   │       ├── deq_32_47.c<br>
│   │   │   │       ├── deq_32_47_ca_burst.c<br>
│   │   │   │       ├── deq_32_47_ca.c<br>
│   │   │   │       ├── deq_32_47_ca_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_ca_seg.c<br>
│   │   │   │       ├── deq_32_47_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_32_47_ca_tmo.c<br>
│   │   │   │       ├── deq_32_47_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_32_47_dual_burst.c<br>
│   │   │   │       ├── deq_32_47_dual.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_ca.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_seg.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_32_47_dual_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_seg.c<br>
│   │   │   │       ├── deq_32_47_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_tmo.c<br>
│   │   │   │       ├── deq_32_47_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_32_47_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_seg.c<br>
│   │   │   │       ├── deq_32_47_tmo_burst.c<br>
│   │   │   │       ├── deq_32_47_tmo.c<br>
│   │   │   │       ├── deq_32_47_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_32_47_tmo_seg.c<br>
│   │   │   │       ├── deq_48_63_burst.c<br>
│   │   │   │       ├── deq_48_63.c<br>
│   │   │   │       ├── deq_48_63_ca_burst.c<br>
│   │   │   │       ├── deq_48_63_ca.c<br>
│   │   │   │       ├── deq_48_63_ca_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_ca_seg.c<br>
│   │   │   │       ├── deq_48_63_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_48_63_ca_tmo.c<br>
│   │   │   │       ├── deq_48_63_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_48_63_dual_burst.c<br>
│   │   │   │       ├── deq_48_63_dual.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_ca.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_seg.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_48_63_dual_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_seg.c<br>
│   │   │   │       ├── deq_48_63_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_tmo.c<br>
│   │   │   │       ├── deq_48_63_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_48_63_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_seg.c<br>
│   │   │   │       ├── deq_48_63_tmo_burst.c<br>
│   │   │   │       ├── deq_48_63_tmo.c<br>
│   │   │   │       ├── deq_48_63_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_48_63_tmo_seg.c<br>
│   │   │   │       ├── deq_64_79_burst.c<br>
│   │   │   │       ├── deq_64_79.c<br>
│   │   │   │       ├── deq_64_79_ca_burst.c<br>
│   │   │   │       ├── deq_64_79_ca.c<br>
│   │   │   │       ├── deq_64_79_ca_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_ca_seg.c<br>
│   │   │   │       ├── deq_64_79_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_64_79_ca_tmo.c<br>
│   │   │   │       ├── deq_64_79_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_64_79_dual_burst.c<br>
│   │   │   │       ├── deq_64_79_dual.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_ca.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_seg.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_64_79_dual_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_seg.c<br>
│   │   │   │       ├── deq_64_79_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_tmo.c<br>
│   │   │   │       ├── deq_64_79_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_64_79_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_seg.c<br>
│   │   │   │       ├── deq_64_79_tmo_burst.c<br>
│   │   │   │       ├── deq_64_79_tmo.c<br>
│   │   │   │       ├── deq_64_79_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_64_79_tmo_seg.c<br>
│   │   │   │       ├── deq_80_95_burst.c<br>
│   │   │   │       ├── deq_80_95.c<br>
│   │   │   │       ├── deq_80_95_ca_burst.c<br>
│   │   │   │       ├── deq_80_95_ca.c<br>
│   │   │   │       ├── deq_80_95_ca_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_ca_seg.c<br>
│   │   │   │       ├── deq_80_95_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_80_95_ca_tmo.c<br>
│   │   │   │       ├── deq_80_95_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_80_95_dual_burst.c<br>
│   │   │   │       ├── deq_80_95_dual.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_ca.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_seg.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_80_95_dual_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_seg.c<br>
│   │   │   │       ├── deq_80_95_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_tmo.c<br>
│   │   │   │       ├── deq_80_95_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_80_95_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_seg.c<br>
│   │   │   │       ├── deq_80_95_tmo_burst.c<br>
│   │   │   │       ├── deq_80_95_tmo.c<br>
│   │   │   │       ├── deq_80_95_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_80_95_tmo_seg.c<br>
│   │   │   │       ├── deq_96_111_burst.c<br>
│   │   │   │       ├── deq_96_111.c<br>
│   │   │   │       ├── deq_96_111_ca_burst.c<br>
│   │   │   │       ├── deq_96_111_ca.c<br>
│   │   │   │       ├── deq_96_111_ca_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_ca_seg.c<br>
│   │   │   │       ├── deq_96_111_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_96_111_ca_tmo.c<br>
│   │   │   │       ├── deq_96_111_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_96_111_dual_burst.c<br>
│   │   │   │       ├── deq_96_111_dual.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_ca.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_seg.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_tmo_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_tmo.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_ca_tmo_seg.c<br>
│   │   │   │       ├── deq_96_111_dual_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_seg.c<br>
│   │   │   │       ├── deq_96_111_dual_tmo_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_tmo.c<br>
│   │   │   │       ├── deq_96_111_dual_tmo_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_dual_tmo_seg.c<br>
│   │   │   │       ├── deq_96_111_seg_burst.c<br>
│   │   │   │       ├── deq_96_111_seg.c<br>
│   │   │   │       ├── deq_96_111_tmo_burst.c<br>
│   │   │   │       ├── deq_96_111_tmo.c<br>
│   │   │   │       ├── deq_96_111_tmo_seg_burst.c<br>
│   │   │   │       └── deq_96_111_tmo_seg.c<br>

│   │   │   ├── tx<br>
│   │   │   │   ├── cn10k<br>
│   │   │   │   │   ├── tx_0_15.c<br>
│   │   │   │   │   ├── tx_0_15_seg.c<br>
│   │   │   │   │   ├── tx_112_127.c<br>
│   │   │   │   │   ├── tx_112_127_seg.c<br>
│   │   │   │   │   ├── tx_16_31.c<br>
│   │   │   │   │   ├── tx_16_31_seg.c<br>
│   │   │   │   │   ├── tx_32_47.c<br>
│   │   │   │   │   ├── tx_32_47_seg.c<br>
│   │   │   │   │   ├── tx_48_63.c<br>
│   │   │   │   │   ├── tx_48_63_seg.c<br>
│   │   │   │   │   ├── tx_64_79.c<br>
│   │   │   │   │   ├── tx_64_79_seg.c<br>
│   │   │   │   │   ├── tx_80_95.c<br>
│   │   │   │   │   ├── tx_80_95_seg.c<br>
│   │   │   │   │   ├── tx_96_111.c<br>
│   │   │   │   │   └── tx_96_111_seg.c<br>
│   │   │   │   └── cn9k<br>
│   │   │   │       ├── tx_0_15.c<br>
│   │   │   │       ├── tx_0_15_dual.c<br>
│   │   │   │       ├── tx_0_15_dual_seg.c<br>
│   │   │   │       ├── tx_0_15_seg.c<br>
│   │   │   │       ├── tx_112_127.c<br>
│   │   │   │       ├── tx_112_127_dual.c<br>
│   │   │   │       ├── tx_112_127_dual_seg.c<br>
│   │   │   │       ├── tx_112_127_seg.c<br>
│   │   │   │       ├── tx_16_31.c<br>
│   │   │   │       ├── tx_16_31_dual.c<br>
│   │   │   │       ├── tx_16_31_dual_seg.c<br>
│   │   │   │       ├── tx_16_31_seg.c<br>
│   │   │   │       ├── tx_32_47.c<br>
│   │   │   │       ├── tx_32_47_dual.c<br>
│   │   │   │       ├── tx_32_47_dual_seg.c<br>
│   │   │   │       ├── tx_32_47_seg.c<br>
│   │   │   │       ├── tx_48_63.c<br>
│   │   │   │       ├── tx_48_63_dual.c<br>
│   │   │   │       ├── tx_48_63_dual_seg.c<br>
│   │   │   │       ├── tx_48_63_seg.c<br>
│   │   │   │       ├── tx_64_79.c<br>
│   │   │   │       ├── tx_64_79_dual.c<br>
│   │   │   │       ├── tx_64_79_dual_seg.c<br>
│   │   │   │       ├── tx_64_79_seg.c<br>
│   │   │   │       ├── tx_80_95.c<br>
│   │   │   │       ├── tx_80_95_dual.c<br>
│   │   │   │       ├── tx_80_95_dual_seg.c<br>
│   │   │   │       ├── tx_80_95_seg.c<br>
│   │   │   │       ├── tx_96_111.c<br>
│   │   │   │       ├── tx_96_111_dual.c<br>
│   │   │   │       ├── tx_96_111_dual_seg.c<br>
│   │   │   │       └── tx_96_111_seg.c<br>
│   │   │   └── version.map<br>
│   │   ├── dlb2<br>
│   │   │   ├── dlb2.c<br>
│   │   │   ├── dlb2_iface.c<br>
│   │   │   ├── dlb2_iface.h<br>
│   │   │   ├── dlb2_inline_fns.h<br>
│   │   │   ├── dlb2_log.h<br>
│   │   │   ├── dlb2_priv.h<br>
│   │   │   ├── dlb2_selftest.c<br>
│   │   │   ├── dlb2_user.h<br>
│   │   │   ├── dlb2_xstats.c<br>

│   │   │   ├── pf<br>
│   │   │   │   ├── base<br>
│   │   │   │   │   ├── dlb2_hw_types.h<br>
│   │   │   │   │   ├── dlb2_osdep_bitmap.h<br>
│   │   │   │   │   ├── dlb2_osdep.h<br>
│   │   │   │   │   ├── dlb2_osdep_list.h<br>
│   │   │   │   │   ├── dlb2_osdep_types.h<br>
│   │   │   │   │   ├── dlb2_regs.h<br>
│   │   │   │   │   ├── dlb2_resource.c<br>
│   │   │   │   │   └── dlb2_resource.h<br>
│   │   │   │   ├── dlb2_main.c<br>
│   │   │   │   ├── dlb2_main.h<br>
│   │   │   │   └── dlb2_pf.c<br>
│   │   │   ├── rte_pmd_dlb2.c<br>
│   │   │   ├── rte_pmd_dlb2.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa<br>
│   │   │   ├── dpaa_eventdev.c<br>
│   │   │   ├── dpaa_eventdev.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa2<br>
│   │   │   ├── dpaa2_eventdev.c<br>
│   │   │   ├── dpaa2_eventdev.h<br>
│   │   │   ├── dpaa2_eventdev_logs.h<br>
│   │   │   ├── dpaa2_eventdev_selftest.c<br>
│   │   │   ├── dpaa2_hw_dpcon.c<br>

│   │   │   └── version.map<br>
│   │   ├── dsw<br>
│   │   │   ├── dsw_evdev.c<br>
│   │   │   ├── dsw_evdev.h<br>
│   │   │   ├── dsw_event.c<br>
│   │   │   ├── dsw_sort.h<br>
│   │   │   ├── dsw_xstats.c<br>

│   │   │   └── version.map<br>

│   │   ├── octeontx<br>

│   │   │   ├── ssovf_evdev.c<br>
│   │   │   ├── ssovf_evdev.h<br>
│   │   │   ├── ssovf_evdev_selftest.c<br>
│   │   │   ├── ssovf_probe.c<br>
│   │   │   ├── ssovf_worker.c<br>
│   │   │   ├── ssovf_worker.h<br>
│   │   │   ├── timvf_evdev.c<br>
│   │   │   ├── timvf_evdev.h<br>
│   │   │   ├── timvf_probe.c<br>
│   │   │   ├── timvf_worker.c<br>
│   │   │   ├── timvf_worker.h<br>
│   │   │   └── version.map<br>
│   │   ├── opdl<br>

│   │   │   ├── opdl_evdev.c<br>
│   │   │   ├── opdl_evdev.h<br>
│   │   │   ├── opdl_evdev_init.c<br>
│   │   │   ├── opdl_evdev_xstats.c<br>
│   │   │   ├── opdl_log.h<br>
│   │   │   ├── opdl_ring.c<br>
│   │   │   ├── opdl_ring.h<br>
│   │   │   ├── opdl_test.c<br>
│   │   │   └── version.map<br>
│   │   ├── skeleton<br>

│   │   │   ├── skeleton_eventdev.c<br>
│   │   │   ├── skeleton_eventdev.h<br>
│   │   │   └── version.map<br>
│   │   └── sw<br>
│   │       ├── event_ring.h<br>
│   │       ├── iq_chunk.h<br>

│   │       ├── sw_evdev.c<br>
│   │       ├── sw_evdev.h<br>
│   │       ├── sw_evdev_log.h<br>
│   │       ├── sw_evdev_scheduler.c<br>
│   │       ├── sw_evdev_selftest.c<br>
│   │       ├── sw_evdev_worker.c<br>
│   │       ├── sw_evdev_xstats.c<br>
│   │       └── version.map<br>
│   ├── gpu<br>
│   │   ├── cuda<br>
│   │   │   ├── common.h<br>
│   │   │   ├── cuda.c<br>
│   │   │   ├── gdrcopy.c<br>

│   │   │   └── version.map<br>

│   ├── mempool<br>
│   │   ├── bucket<br>

│   │   │   ├── rte_mempool_bucket.c<br>
│   │   │   └── version.map<br>
│   │   ├── cnxk<br>
│   │   │   ├── cn10k_mempool_ops.c<br>
│   │   │   ├── cn9k_mempool_ops.c<br>
│   │   │   ├── cnxk_mempool.c<br>
│   │   │   ├── cnxk_mempool.h<br>
│   │   │   ├── cnxk_mempool_ops.c<br>
│   │   │   ├── cnxk_mempool_telemetry.c<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa<br>
│   │   │   ├── dpaa_mempool.c<br>
│   │   │   ├── dpaa_mempool.h<br>

│   │   │   └── version.map<br>
│   │   ├── dpaa2<br>
│   │   │   ├── dpaa2_hw_mempool.c<br>
│   │   │   ├── dpaa2_hw_mempool.h<br>
│   │   │   ├── dpaa2_hw_mempool_logs.h<br>

│   │   │   ├── rte_dpaa2_mempool.h<br>
│   │   │   └── version.map<br>

│   │   ├── octeontx<br>

│   │   │   ├── octeontx_fpavf.c<br>
│   │   │   ├── octeontx_fpavf.h<br>
│   │   │   ├── octeontx_pool_logs.h<br>
│   │   │   ├── rte_mempool_octeontx.c<br>
│   │   │   └── version.map<br>
│   │   ├── ring<br>

│   │   │   ├── rte_mempool_ring.c<br>
│   │   │   └── version.map<br>
│   │   └── stack<br>

│   │       ├── rte_mempool_stack.c<br>
│   │       └── version.map<br>

│   ├── net<br>
│   │   ├── af_packet<br>

│   │   │   ├── rte_eth_af_packet.c<br>
│   │   │   └── version.map<br>
│   │   ├── af_xdp<br>
│   │   │   ├── af_xdp_deps.h<br>
│   │   │   ├── compat.h<br>

│   │   │   ├── rte_eth_af_xdp.c<br>
│   │   │   └── version.map<br>
│   │   ├── ark<br>
│   │   │   ├── ark_ddm.c<br>
│   │   │   ├── ark_ddm.h<br>
│   │   │   ├── ark_ethdev.c<br>
│   │   │   ├── ark_ethdev_rx.c<br>
│   │   │   ├── ark_ethdev_rx.h<br>
│   │   │   ├── ark_ethdev_tx.c<br>
│   │   │   ├── ark_ethdev_tx.h<br>
│   │   │   ├── ark_ext.h<br>
│   │   │   ├── ark_global.h<br>
│   │   │   ├── ark_logs.h<br>
│   │   │   ├── ark_mpu.c<br>
│   │   │   ├── ark_mpu.h<br>
│   │   │   ├── ark_pktchkr.c<br>
│   │   │   ├── ark_pktchkr.h<br>
│   │   │   ├── ark_pktdir.c<br>
│   │   │   ├── ark_pktdir.h<br>
│   │   │   ├── ark_pktgen.c<br>
│   │   │   ├── ark_pktgen.h<br>
│   │   │   ├── ark_rqp.c<br>
│   │   │   ├── ark_rqp.h<br>
│   │   │   ├── ark_udm.c<br>
│   │   │   ├── ark_udm.h<br>

│   │   │   └── version.map<br>
│   │   ├── atlantic<br>
│   │   │   ├── atl_common.h<br>
│   │   │   ├── atl_ethdev.c<br>
│   │   │   ├── atl_ethdev.h<br>
│   │   │   ├── atl_hw_regs.c<br>
│   │   │   ├── atl_hw_regs.h<br>
│   │   │   ├── atl_logs.h<br>
│   │   │   ├── atl_rxtx.c<br>
│   │   │   ├── atl_types.h<br>
│   │   │   ├── hw_atl<br>
│   │   │   │   ├── hw_atl_b0.c<br>
│   │   │   │   ├── hw_atl_b0.h<br>
│   │   │   │   ├── hw_atl_b0_internal.h<br>
│   │   │   │   ├── hw_atl_llh.c<br>
│   │   │   │   ├── hw_atl_llh.h<br>
│   │   │   │   ├── hw_atl_llh_internal.h<br>
│   │   │   │   ├── hw_atl_utils.c<br>
│   │   │   │   ├── hw_atl_utils_fw2x.c<br>
│   │   │   │   └── hw_atl_utils.h<br>

│   │   │   ├── rte_pmd_atlantic.c<br>
│   │   │   ├── rte_pmd_atlantic.h<br>
│   │   │   └── version.map<br>
│   │   ├── avp<br>
│   │   │   ├── avp_ethdev.c<br>
│   │   │   ├── avp_logs.h<br>

│   │   │   ├── rte_avp_common.h<br>
│   │   │   ├── rte_avp_fifo.h<br>
│   │   │   └── version.map<br>
│   │   ├── axgbe<br>
│   │   │   ├── axgbe_common.h<br>
│   │   │   ├── axgbe_dev.c<br>
│   │   │   ├── axgbe_ethdev.c<br>
│   │   │   ├── axgbe_ethdev.h<br>
│   │   │   ├── axgbe_i2c.c<br>
│   │   │   ├── axgbe_logs.h<br>
│   │   │   ├── axgbe_mdio.c<br>
│   │   │   ├── axgbe_phy.h<br>
│   │   │   ├── axgbe_phy_impl.c<br>
│   │   │   ├── axgbe_regs.h<br>
│   │   │   ├── axgbe_rxtx.c<br>
│   │   │   ├── axgbe_rxtx.h<br>
│   │   │   ├── axgbe_rxtx_vec_sse.c<br>

│   │   │   └── version.map<br>
│   │   ├── bnx2x<br>
│   │   │   ├── bnx2x.c<br>
│   │   │   ├── bnx2x_ethdev.c<br>
│   │   │   ├── bnx2x_ethdev.h<br>
│   │   │   ├── bnx2x.h<br>
│   │   │   ├── bnx2x_logs.h<br>
│   │   │   ├── bnx2x_osal.h<br>
│   │   │   ├── bnx2x_rxtx.c<br>
│   │   │   ├── bnx2x_rxtx.h<br>
│   │   │   ├── bnx2x_stats.c<br>
│   │   │   ├── bnx2x_stats.h<br>
│   │   │   ├── bnx2x_vfpf.c<br>
│   │   │   ├── bnx2x_vfpf.h<br>
│   │   │   ├── ecore_fw_defs.h<br>
│   │   │   ├── ecore_hsi.h<br>
│   │   │   ├── ecore_init.h<br>
│   │   │   ├── ecore_init_ops.h<br>
│   │   │   ├── ecore_mfw_req.h<br>
│   │   │   ├── ecore_reg.h<br>
│   │   │   ├── ecore_sp.c<br>
│   │   │   ├── ecore_sp.h<br>
│   │   │   ├── elink.c<br>
│   │   │   ├── elink.h<br>

│   │   │   └── version.map<br>
│   │   ├── bnxt<br>
│   │   │   ├── bnxt_cpr.c<br>
│   │   │   ├── bnxt_cpr.h<br>
│   │   │   ├── bnxt_ethdev.c<br>
│   │   │   ├── bnxt_filter.c<br>
│   │   │   ├── bnxt_filter.h<br>
│   │   │   ├── bnxt_flow.c<br>
│   │   │   ├── bnxt.h<br>
│   │   │   ├── bnxt_hwrm.c<br>
│   │   │   ├── bnxt_hwrm.h<br>
│   │   │   ├── bnxt_irq.c<br>
│   │   │   ├── bnxt_irq.h<br>
│   │   │   ├── bnxt_nvm_defs.h<br>
│   │   │   ├── bnxt_reps.c<br>
│   │   │   ├── bnxt_reps.h<br>
│   │   │   ├── bnxt_ring.c<br>
│   │   │   ├── bnxt_ring.h<br>
│   │   │   ├── bnxt_rxq.c<br>
│   │   │   ├── bnxt_rxq.h<br>
│   │   │   ├── bnxt_rxr.c<br>
│   │   │   ├── bnxt_rxr.h<br>
│   │   │   ├── bnxt_rxtx_vec_avx2.c<br>
│   │   │   ├── bnxt_rxtx_vec_common.h<br>
│   │   │   ├── bnxt_rxtx_vec_neon.c<br>
│   │   │   ├── bnxt_rxtx_vec_sse.c<br>
│   │   │   ├── bnxt_stats.c<br>
│   │   │   ├── bnxt_stats.h<br>
│   │   │   ├── bnxt_txq.c<br>
│   │   │   ├── bnxt_txq.h<br>
│   │   │   ├── bnxt_txr.c<br>
│   │   │   ├── bnxt_txr.h<br>
│   │   │   ├── bnxt_util.c<br>
│   │   │   ├── bnxt_util.h<br>
│   │   │   ├── bnxt_vnic.c<br>
│   │   │   ├── bnxt_vnic.h<br>
│   │   │   ├── hcapi<br>
│   │   │   │   └── cfa<br>
│   │   │   │       ├── hcapi_cfa_common.c<br>
│   │   │   │       ├── hcapi_cfa_defs.h<br>
│   │   │   │       ├── hcapi_cfa.h<br>
│   │   │   │       ├── hcapi_cfa_p4.c<br>
│   │   │   │       ├── hcapi_cfa_p4.h<br>
│   │   │   │       ├── hcapi_cfa_p58.c<br>
│   │   │   │       ├── hcapi_cfa_p58.h<br>

│   │   │   ├── hsi_struct_def_dpdk.h<br>

│   │   │   ├── rte_pmd_bnxt.c<br>
│   │   │   ├── rte_pmd_bnxt.h<br>
│   │   │   ├── tf_core<br>
│   │   │   │   ├── bitalloc.c<br>
│   │   │   │   ├── bitalloc.h<br>
│   │   │   │   ├── cfa_resource_types.h<br>
│   │   │   │   ├── dpool.c<br>
│   │   │   │   ├── dpool.h<br>
│   │   │   │   ├── ll.c<br>
│   │   │   │   ├── ll.h<br>
│   │   │   │   ├── lookup3.h<br>

│   │   │   │   ├── rand.c<br>
│   │   │   │   ├── rand.h<br>
│   │   │   │   ├── stack.c<br>
│   │   │   │   ├── stack.h<br>
│   │   │   │   ├── tf_common.h<br>
│   │   │   │   ├── tf_core.c<br>
│   │   │   │   ├── tf_core.h<br>
│   │   │   │   ├── tf_device.c<br>
│   │   │   │   ├── tf_device.h<br>
│   │   │   │   ├── tf_device_p4.c<br>
│   │   │   │   ├── tf_device_p4.h<br>
│   │   │   │   ├── tf_device_p58.c<br>
│   │   │   │   ├── tf_device_p58.h<br>
│   │   │   │   ├── tf_em_common.c<br>
│   │   │   │   ├── tf_em_common.h<br>
│   │   │   │   ├── tf_em.h<br>
│   │   │   │   ├── tf_em_hash_internal.c<br>
│   │   │   │   ├── tf_em_host.c<br>
│   │   │   │   ├── tf_em_internal.c<br>
│   │   │   │   ├── tf_ext_flow_handle.h<br>
│   │   │   │   ├── tf_global_cfg.c<br>
│   │   │   │   ├── tf_global_cfg.h<br>
│   │   │   │   ├── tf_hash.c<br>
│   │   │   │   ├── tf_hash.h<br>
│   │   │   │   ├── tf_identifier.c<br>
│   │   │   │   ├── tf_identifier.h<br>
│   │   │   │   ├── tf_if_tbl.c<br>
│   │   │   │   ├── tf_if_tbl.h<br>
│   │   │   │   ├── tf_msg.c<br>
│   │   │   │   ├── tf_msg_common.h<br>
│   │   │   │   ├── tf_msg.h<br>
│   │   │   │   ├── tfp.c<br>
│   │   │   │   ├── tfp.h<br>
│   │   │   │   ├── tf_project.h<br>
│   │   │   │   ├── tf_resources.h<br>
│   │   │   │   ├── tf_rm.c<br>
│   │   │   │   ├── tf_rm.h<br>
│   │   │   │   ├── tf_session.c<br>
│   │   │   │   ├── tf_session.h<br>
│   │   │   │   ├── tf_shadow_identifier.c<br>
│   │   │   │   ├── tf_shadow_identifier.h<br>
│   │   │   │   ├── tf_shadow_tcam.c<br>
│   │   │   │   ├── tf_shadow_tcam.h<br>
│   │   │   │   ├── tf_sram_mgr.c<br>
│   │   │   │   ├── tf_sram_mgr.h<br>
│   │   │   │   ├── tf_tbl.c<br>
│   │   │   │   ├── tf_tbl.h<br>
│   │   │   │   ├── tf_tbl_sram.c<br>
│   │   │   │   ├── tf_tbl_sram.h<br>
│   │   │   │   ├── tf_tcam.c<br>
│   │   │   │   ├── tf_tcam.h<br>
│   │   │   │   ├── tf_tcam_shared.c<br>
│   │   │   │   ├── tf_tcam_shared.h<br>
│   │   │   │   ├── tf_util.c<br>
│   │   │   │   └── tf_util.h<br>
│   │   │   ├── tf_ulp<br>
│   │   │   │   ├── bnxt_tf_common.h<br>
│   │   │   │   ├── bnxt_tf_pmd_shim.c<br>
│   │   │   │   ├── bnxt_tf_pmd_shim.h<br>
│   │   │   │   ├── bnxt_ulp.c<br>
│   │   │   │   ├── bnxt_ulp_flow.c<br>
│   │   │   │   ├── bnxt_ulp.h<br>
│   │   │   │   ├── generic_templates<br>

│   │   │   │   │   ├── ulp_template_db_act.c<br>
│   │   │   │   │   ├── ulp_template_db_class.c<br>
│   │   │   │   │   ├── ulp_template_db_enum.h<br>
│   │   │   │   │   ├── ulp_template_db_field.h<br>
│   │   │   │   │   ├── ulp_template_db_tbl.c<br>
│   │   │   │   │   ├── ulp_template_db_tbl.h<br>
│   │   │   │   │   ├── ulp_template_db_thor_act.c<br>
│   │   │   │   │   ├── ulp_template_db_thor_class.c<br>
│   │   │   │   │   ├── ulp_template_db_wh_plus_act.c<br>
│   │   │   │   │   └── ulp_template_db_wh_plus_class.c<br>

│   │   │   │   ├── ulp_def_rules.c<br>
│   │   │   │   ├── ulp_fc_mgr.c<br>
│   │   │   │   ├── ulp_fc_mgr.h<br>
│   │   │   │   ├── ulp_flow_db.c<br>
│   │   │   │   ├── ulp_flow_db.h<br>
│   │   │   │   ├── ulp_gen_hash.c<br>
│   │   │   │   ├── ulp_gen_hash.h<br>
│   │   │   │   ├── ulp_gen_tbl.c<br>
│   │   │   │   ├── ulp_gen_tbl.h<br>
│   │   │   │   ├── ulp_ha_mgr.c<br>
│   │   │   │   ├── ulp_ha_mgr.h<br>
│   │   │   │   ├── ulp_mapper.c<br>
│   │   │   │   ├── ulp_mapper.h<br>
│   │   │   │   ├── ulp_mark_mgr.c<br>
│   │   │   │   ├── ulp_mark_mgr.h<br>
│   │   │   │   ├── ulp_matcher.c<br>
│   │   │   │   ├── ulp_matcher.h<br>
│   │   │   │   ├── ulp_port_db.c<br>
│   │   │   │   ├── ulp_port_db.h<br>
│   │   │   │   ├── ulp_rte_handler_tbl.c<br>
│   │   │   │   ├── ulp_rte_parser.c<br>
│   │   │   │   ├── ulp_rte_parser.h<br>
│   │   │   │   ├── ulp_template_struct.h<br>
│   │   │   │   ├── ulp_tun.c<br>
│   │   │   │   ├── ulp_tun.h<br>
│   │   │   │   ├── ulp_utils.c<br>
│   │   │   │   └── ulp_utils.h<br>
│   │   │   └── version.map<br>
│   │   ├── bonding<br>
│   │   │   ├── eth_bond_8023ad_private.h<br>
│   │   │   ├── eth_bond_private.h<br>

│   │   │   ├── rte_eth_bond_8023ad.c<br>
│   │   │   ├── rte_eth_bond_8023ad.h<br>
│   │   │   ├── rte_eth_bond_alb.c<br>
│   │   │   ├── rte_eth_bond_alb.h<br>
│   │   │   ├── rte_eth_bond_api.c<br>
│   │   │   ├── rte_eth_bond_args.c<br>
│   │   │   ├── rte_eth_bond_flow.c<br>
│   │   │   ├── rte_eth_bond.h<br>
│   │   │   ├── rte_eth_bond_pmd.c<br>
│   │   │   └── version.map<br>
│   │   ├── cnxk<br>
│   │   │   ├── cn10k_ethdev.c<br>
│   │   │   ├── cn10k_ethdev.h<br>
│   │   │   ├── cn10k_ethdev_sec.c<br>
│   │   │   ├── cn10k_flow.c<br>
│   │   │   ├── cn10k_flow.h<br>
│   │   │   ├── cn10k_rx.h<br>
│   │   │   ├── cn10k_rx_select.c<br>
│   │   │   ├── cn10k_tx.h<br>
│   │   │   ├── cn10k_tx_select.c<br>
│   │   │   ├── cn9k_ethdev.c<br>
│   │   │   ├── cn9k_ethdev.h<br>
│   │   │   ├── cn9k_ethdev_sec.c<br>
│   │   │   ├── cn9k_flow.c<br>
│   │   │   ├── cn9k_flow.h<br>
│   │   │   ├── cn9k_rx.h<br>
│   │   │   ├── cn9k_rx_select.c<br>
│   │   │   ├── cn9k_tx.h<br>
│   │   │   ├── cn9k_tx_select.c<br>
│   │   │   ├── cnxk_ethdev.c<br>
│   │   │   ├── cnxk_ethdev_devargs.c<br>
│   │   │   ├── cnxk_ethdev.h<br>
│   │   │   ├── cnxk_ethdev_mtr.c<br>
│   │   │   ├── cnxk_ethdev_ops.c<br>
│   │   │   ├── cnxk_ethdev_sec.c<br>
│   │   │   ├── cnxk_ethdev_sec_telemetry.c<br>
│   │   │   ├── cnxk_ethdev_telemetry.c<br>
│   │   │   ├── cnxk_flow.c<br>
│   │   │   ├── cnxk_flow.h<br>
│   │   │   ├── cnxk_link.c<br>
│   │   │   ├── cnxk_lookup.c<br>
│   │   │   ├── cnxk_ptp.c<br>
│   │   │   ├── cnxk_stats.c<br>
│   │   │   ├── cnxk_tm.c<br>
│   │   │   ├── cnxk_tm.h<br>

│   │   │   ├── rx<br>
│   │   │   │   ├── cn10k<br>
│   │   │   │   │   ├── rx_0_15.c<br>
│   │   │   │   │   ├── rx_0_15_mseg.c<br>
│   │   │   │   │   ├── rx_0_15_vec.c<br>
│   │   │   │   │   ├── rx_0_15_vec_mseg.c<br>
│   │   │   │   │   ├── rx_112_127.c<br>
│   │   │   │   │   ├── rx_112_127_mseg.c<br>
│   │   │   │   │   ├── rx_112_127_vec.c<br>
│   │   │   │   │   ├── rx_112_127_vec_mseg.c<br>
│   │   │   │   │   ├── rx_16_31.c<br>
│   │   │   │   │   ├── rx_16_31_mseg.c<br>
│   │   │   │   │   ├── rx_16_31_vec.c<br>
│   │   │   │   │   ├── rx_16_31_vec_mseg.c<br>
│   │   │   │   │   ├── rx_32_47.c<br>
│   │   │   │   │   ├── rx_32_47_mseg.c<br>
│   │   │   │   │   ├── rx_32_47_vec.c<br>
│   │   │   │   │   ├── rx_32_47_vec_mseg.c<br>
│   │   │   │   │   ├── rx_48_63.c<br>
│   │   │   │   │   ├── rx_48_63_mseg.c<br>
│   │   │   │   │   ├── rx_48_63_vec.c<br>
│   │   │   │   │   ├── rx_48_63_vec_mseg.c<br>
│   │   │   │   │   ├── rx_64_79.c<br>
│   │   │   │   │   ├── rx_64_79_mseg.c<br>
│   │   │   │   │   ├── rx_64_79_vec.c<br>
│   │   │   │   │   ├── rx_64_79_vec_mseg.c<br>
│   │   │   │   │   ├── rx_80_95.c<br>
│   │   │   │   │   ├── rx_80_95_mseg.c<br>
│   │   │   │   │   ├── rx_80_95_vec.c<br>
│   │   │   │   │   ├── rx_80_95_vec_mseg.c<br>
│   │   │   │   │   ├── rx_96_111.c<br>
│   │   │   │   │   ├── rx_96_111_mseg.c<br>
│   │   │   │   │   ├── rx_96_111_vec.c<br>
│   │   │   │   │   └── rx_96_111_vec_mseg.c<br>
│   │   │   │   └── cn9k<br>
│   │   │   │       ├── rx_0_15.c<br>
│   │   │   │       ├── rx_0_15_mseg.c<br>
│   │   │   │       ├── rx_0_15_vec.c<br>
│   │   │   │       ├── rx_0_15_vec_mseg.c<br>
│   │   │   │       ├── rx_112_127.c<br>
│   │   │   │       ├── rx_112_127_mseg.c<br>
│   │   │   │       ├── rx_112_127_vec.c<br>
│   │   │   │       ├── rx_112_127_vec_mseg.c<br>
│   │   │   │       ├── rx_16_31.c<br>
│   │   │   │       ├── rx_16_31_mseg.c<br>
│   │   │   │       ├── rx_16_31_vec.c<br>
│   │   │   │       ├── rx_16_31_vec_mseg.c<br>
│   │   │   │       ├── rx_32_47.c<br>
│   │   │   │       ├── rx_32_47_mseg.c<br>
│   │   │   │       ├── rx_32_47_vec.c<br>
│   │   │   │       ├── rx_32_47_vec_mseg.c<br>
│   │   │   │       ├── rx_48_63.c<br>
│   │   │   │       ├── rx_48_63_mseg.c<br>
│   │   │   │       ├── rx_48_63_vec.c<br>
│   │   │   │       ├── rx_48_63_vec_mseg.c<br>
│   │   │   │       ├── rx_64_79.c<br>
│   │   │   │       ├── rx_64_79_mseg.c<br>
│   │   │   │       ├── rx_64_79_vec.c<br>
│   │   │   │       ├── rx_64_79_vec_mseg.c<br>
│   │   │   │       ├── rx_80_95.c<br>
│   │   │   │       ├── rx_80_95_mseg.c<br>
│   │   │   │       ├── rx_80_95_vec.c<br>
│   │   │   │       ├── rx_80_95_vec_mseg.c<br>
│   │   │   │       ├── rx_96_111.c<br>
│   │   │   │       ├── rx_96_111_mseg.c<br>
│   │   │   │       ├── rx_96_111_vec.c<br>
│   │   │   │       └── rx_96_111_vec_mseg.c<br>
│   │   │   ├── tx<br>
│   │   │   │   ├── cn10k<br>
│   │   │   │   │   ├── tx_0_15.c<br>
│   │   │   │   │   ├── tx_0_15_mseg.c<br>
│   │   │   │   │   ├── tx_0_15_vec.c<br>
│   │   │   │   │   ├── tx_0_15_vec_mseg.c<br>
│   │   │   │   │   ├── tx_112_127.c<br>
│   │   │   │   │   ├── tx_112_127_mseg.c<br>
│   │   │   │   │   ├── tx_112_127_vec.c<br>
│   │   │   │   │   ├── tx_112_127_vec_mseg.c<br>
│   │   │   │   │   ├── tx_16_31.c<br>
│   │   │   │   │   ├── tx_16_31_mseg.c<br>
│   │   │   │   │   ├── tx_16_31_vec.c<br>
│   │   │   │   │   ├── tx_16_31_vec_mseg.c<br>
│   │   │   │   │   ├── tx_32_47.c<br>
│   │   │   │   │   ├── tx_32_47_mseg.c<br>
│   │   │   │   │   ├── tx_32_47_vec.c<br>
│   │   │   │   │   ├── tx_32_47_vec_mseg.c<br>
│   │   │   │   │   ├── tx_48_63.c<br>
│   │   │   │   │   ├── tx_48_63_mseg.c<br>
│   │   │   │   │   ├── tx_48_63_vec.c<br>
│   │   │   │   │   ├── tx_48_63_vec_mseg.c<br>
│   │   │   │   │   ├── tx_64_79.c<br>
│   │   │   │   │   ├── tx_64_79_mseg.c<br>
│   │   │   │   │   ├── tx_64_79_vec.c<br>
│   │   │   │   │   ├── tx_64_79_vec_mseg.c<br>
│   │   │   │   │   ├── tx_80_95.c<br>
│   │   │   │   │   ├── tx_80_95_mseg.c<br>
│   │   │   │   │   ├── tx_80_95_vec.c<br>
│   │   │   │   │   ├── tx_80_95_vec_mseg.c<br>
│   │   │   │   │   ├── tx_96_111.c<br>
│   │   │   │   │   ├── tx_96_111_mseg.c<br>
│   │   │   │   │   ├── tx_96_111_vec.c<br>
│   │   │   │   │   └── tx_96_111_vec_mseg.c<br>
│   │   │   │   └── cn9k<br>
│   │   │   │       ├── tx_0_15.c<br>
│   │   │   │       ├── tx_0_15_mseg.c<br>
│   │   │   │       ├── tx_0_15_vec.c<br>
│   │   │   │       ├── tx_0_15_vec_mseg.c<br>
│   │   │   │       ├── tx_112_127.c<br>
│   │   │   │       ├── tx_112_127_mseg.c<br>
│   │   │   │       ├── tx_112_127_vec.c<br>
│   │   │   │       ├── tx_112_127_vec_mseg.c<br>
│   │   │   │       ├── tx_16_31.c<br>
│   │   │   │       ├── tx_16_31_mseg.c<br>
│   │   │   │       ├── tx_16_31_vec.c<br>
│   │   │   │       ├── tx_16_31_vec_mseg.c<br>
│   │   │   │       ├── tx_32_47.c<br>
│   │   │   │       ├── tx_32_47_mseg.c<br>
│   │   │   │       ├── tx_32_47_vec.c<br>
│   │   │   │       ├── tx_32_47_vec_mseg.c<br>
│   │   │   │       ├── tx_48_63.c<br>
│   │   │   │       ├── tx_48_63_mseg.c<br>
│   │   │   │       ├── tx_48_63_vec.c<br>
│   │   │   │       ├── tx_48_63_vec_mseg.c<br>
│   │   │   │       ├── tx_64_79.c<br>
│   │   │   │       ├── tx_64_79_mseg.c<br>
│   │   │   │       ├── tx_64_79_vec.c<br>
│   │   │   │       ├── tx_64_79_vec_mseg.c<br>
│   │   │   │       ├── tx_80_95.c<br>
│   │   │   │       ├── tx_80_95_mseg.c<br>
│   │   │   │       ├── tx_80_95_vec.c<br>
│   │   │   │       ├── tx_80_95_vec_mseg.c<br>
│   │   │   │       ├── tx_96_111.c<br>
│   │   │   │       ├── tx_96_111_mseg.c<br>
│   │   │   │       ├── tx_96_111_vec.c<br>
│   │   │   │       └── tx_96_111_vec_mseg.c<br>
│   │   │   └── version.map<br>
│   │   ├── cxgbe<br>
│   │   │   ├── base<br>
│   │   │   │   ├── adapter.h<br>
│   │   │   │   ├── common.h<br>
│   │   │   │   ├── t4_chip_type.h<br>
│   │   │   │   ├── t4fw_interface.h<br>
│   │   │   │   ├── t4_hw.c<br>
│   │   │   │   ├── t4_hw.h<br>
│   │   │   │   ├── t4_msg.h<br>
│   │   │   │   ├── t4_pci_id_tbl.h<br>
│   │   │   │   ├── t4_regs.h<br>
│   │   │   │   ├── t4_regs_values.h<br>
│   │   │   │   ├── t4_tcb.h<br>
│   │   │   │   ├── t4vf_hw.c<br>
│   │   │   │   └── t4vf_hw.h<br>
│   │   │   ├── clip_tbl.c<br>
│   │   │   ├── clip_tbl.h<br>
│   │   │   ├── cxgbe_compat.h<br>
│   │   │   ├── cxgbe_ethdev.c<br>
│   │   │   ├── cxgbe_filter.c<br>
│   │   │   ├── cxgbe_filter.h<br>
│   │   │   ├── cxgbe_flow.c<br>
│   │   │   ├── cxgbe_flow.h<br>
│   │   │   ├── cxgbe.h<br>
│   │   │   ├── cxgbe_main.c<br>
│   │   │   ├── cxgbe_ofld.h<br>
│   │   │   ├── cxgbe_pfvf.h<br>
│   │   │   ├── cxgbevf_ethdev.c<br>
│   │   │   ├── cxgbevf_main.c<br>
│   │   │   ├── l2t.c<br>
│   │   │   ├── l2t.h<br>

│   │   │   ├── mps_tcam.c<br>
│   │   │   ├── mps_tcam.h<br>
│   │   │   ├── sge.c<br>
│   │   │   ├── smt.c<br>
│   │   │   ├── smt.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa<br>
│   │   │   ├── dpaa_ethdev.c<br>
│   │   │   ├── dpaa_ethdev.h<br>
│   │   │   ├── dpaa_flow.c<br>
│   │   │   ├── dpaa_flow.h<br>
│   │   │   ├── dpaa_fmc.c<br>
│   │   │   ├── dpaa_rxtx.c<br>
│   │   │   ├── dpaa_rxtx.h<br>
│   │   │   ├── fmlib<br>
│   │   │   │   ├── dpaa_integration.h<br>
│   │   │   │   ├── fm_ext.h<br>
│   │   │   │   ├── fm_lib.c<br>
│   │   │   │   ├── fm_pcd_ext.h<br>
│   │   │   │   ├── fm_port_ext.h<br>
│   │   │   │   ├── fm_vsp.c<br>
│   │   │   │   ├── fm_vsp_ext.h<br>
│   │   │   │   ├── ncsw_ext.h<br>
│   │   │   │   └── net_ext.h<br>

│   │   │   ├── rte_pmd_dpaa.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa2<br>
│   │   │   ├── base<br>
│   │   │   │   ├── dpaa2_hw_dpni_annot.h<br>
│   │   │   │   ├── dpaa2_hw_dpni.c<br>
│   │   │   │   └── dpaa2_tlu_hash.c<br>
│   │   │   ├── dpaa2_ethdev.c<br>
│   │   │   ├── dpaa2_ethdev.h<br>
│   │   │   ├── dpaa2_flow.c<br>
│   │   │   ├── dpaa2_mux.c<br>
│   │   │   ├── dpaa2_pmd_logs.h<br>
│   │   │   ├── dpaa2_ptp.c<br>
│   │   │   ├── dpaa2_recycle.c<br>
│   │   │   ├── dpaa2_rxtx.c<br>
│   │   │   ├── dpaa2_sparser.c<br>
│   │   │   ├── dpaa2_sparser.h<br>
│   │   │   ├── dpaa2_tm.c<br>
│   │   │   ├── dpaa2_tm.h<br>
│   │   │   ├── mc<br>
│   │   │   │   ├── dpdmux.c<br>
│   │   │   │   ├── dpkg.c<br>
│   │   │   │   ├── dpni.c<br>
│   │   │   │   ├── dprtc.c<br>
│   │   │   │   ├── fsl_dpdmux_cmd.h<br>
│   │   │   │   ├── fsl_dpdmux.h<br>
│   │   │   │   ├── fsl_dpkg.h<br>
│   │   │   │   ├── fsl_dpni_cmd.h<br>
│   │   │   │   ├── fsl_dpni.h<br>
│   │   │   │   ├── fsl_dprtc_cmd.h<br>
│   │   │   │   ├── fsl_dprtc.h<br>
│   │   │   │   └── fsl_net.h<br>

│   │   │   ├── rte_pmd_dpaa2.h<br>
│   │   │   └── version.map<br>
│   │   ├── e1000<br>
│   │   │   ├── base<br>
│   │   │   │   ├── e1000_80003es2lan.c<br>
│   │   │   │   ├── e1000_80003es2lan.h<br>
│   │   │   │   ├── e1000_82540.c<br>
│   │   │   │   ├── e1000_82541.c<br>
│   │   │   │   ├── e1000_82541.h<br>
│   │   │   │   ├── e1000_82542.c<br>
│   │   │   │   ├── e1000_82543.c<br>
│   │   │   │   ├── e1000_82543.h<br>
│   │   │   │   ├── e1000_82571.c<br>
│   │   │   │   ├── e1000_82571.h<br>
│   │   │   │   ├── e1000_82575.c<br>
│   │   │   │   ├── e1000_82575.h<br>
│   │   │   │   ├── e1000_api.c<br>
│   │   │   │   ├── e1000_api.h<br>
│   │   │   │   ├── e1000_base.c<br>
│   │   │   │   ├── e1000_base.h<br>
│   │   │   │   ├── e1000_defines.h<br>
│   │   │   │   ├── e1000_hw.h<br>
│   │   │   │   ├── e1000_i210.c<br>
│   │   │   │   ├── e1000_i210.h<br>
│   │   │   │   ├── e1000_ich8lan.c<br>
│   │   │   │   ├── e1000_ich8lan.h<br>
│   │   │   │   ├── e1000_mac.c<br>
│   │   │   │   ├── e1000_mac.h<br>
│   │   │   │   ├── e1000_manage.c<br>
│   │   │   │   ├── e1000_manage.h<br>
│   │   │   │   ├── e1000_mbx.c<br>
│   │   │   │   ├── e1000_mbx.h<br>
│   │   │   │   ├── e1000_nvm.c<br>
│   │   │   │   ├── e1000_nvm.h<br>
│   │   │   │   ├── e1000_osdep.c<br>
│   │   │   │   ├── e1000_osdep.h<br>
│   │   │   │   ├── e1000_phy.c<br>
│   │   │   │   ├── e1000_phy.h<br>
│   │   │   │   ├── e1000_regs.h<br>
│   │   │   │   ├── e1000_vf.c<br>
│   │   │   │   ├── e1000_vf.h<br>

│   │   │   │   └── README<br>
│   │   │   ├── e1000_ethdev.h<br>
│   │   │   ├── e1000_logs.c<br>
│   │   │   ├── e1000_logs.h<br>
│   │   │   ├── em_ethdev.c<br>
│   │   │   ├── em_rxtx.c<br>
│   │   │   ├── igb_ethdev.c<br>
│   │   │   ├── igb_flow.c<br>
│   │   │   ├── igb_pf.c<br>
│   │   │   ├── igb_regs.h<br>
│   │   │   ├── igb_rxtx.c<br>

│   │   │   └── version.map<br>
│   │   ├── ena<br>
│   │   │   ├── base<br>
│   │   │   │   ├── ena_com.c<br>
│   │   │   │   ├── ena_com.h<br>
│   │   │   │   ├── ena_defs<br>
│   │   │   │   │   ├── ena_admin_defs.h<br>
│   │   │   │   │   ├── ena_common_defs.h<br>
│   │   │   │   │   ├── ena_eth_io_defs.h<br>
│   │   │   │   │   ├── ena_gen_info.h<br>
│   │   │   │   │   ├── ena_includes.h<br>
│   │   │   │   │   └── ena_regs_defs.h<br>
│   │   │   │   ├── ena_eth_com.c<br>
│   │   │   │   ├── ena_eth_com.h<br>
│   │   │   │   ├── ena_plat_dpdk.h<br>
│   │   │   │   └── ena_plat.h<br>
│   │   │   ├── ena_ethdev.c<br>
│   │   │   ├── ena_ethdev.h<br>
│   │   │   ├── ena_logs.h<br>
│   │   │   ├── ena_platform.h<br>
│   │   │   ├── ena_rss.c<br>

│   │   │   └── version.map<br>
│   │   ├── enetc<br>
│   │   │   ├── base<br>
│   │   │   │   └── enetc_hw.h<br>
│   │   │   ├── enetc_ethdev.c<br>
│   │   │   ├── enetc.h<br>
│   │   │   ├── enetc_logs.h<br>
│   │   │   ├── enetc_rxtx.c<br>

│   │   │   └── version.map<br>
│   │   ├── enetfec<br>
│   │   │   ├── enet_ethdev.c<br>
│   │   │   ├── enet_ethdev.h<br>
│   │   │   ├── enet_pmd_logs.h<br>
│   │   │   ├── enet_regs.h<br>
│   │   │   ├── enet_rxtx.c<br>
│   │   │   ├── enet_uio.c<br>
│   │   │   ├── enet_uio.h<br>

│   │   │   └── version.map<br>
│   │   ├── enic<br>
│   │   │   ├── base<br>
│   │   │   │   ├── cq_desc.h<br>
│   │   │   │   ├── cq_enet_desc.h<br>
│   │   │   │   ├── rq_enet_desc.h<br>
│   │   │   │   ├── vnic_cq.c<br>
│   │   │   │   ├── vnic_cq.h<br>
│   │   │   │   ├── vnic_dev.c<br>
│   │   │   │   ├── vnic_devcmd.h<br>
│   │   │   │   ├── vnic_dev.h<br>
│   │   │   │   ├── vnic_enet.h<br>
│   │   │   │   ├── vnic_flowman.h<br>
│   │   │   │   ├── vnic_intr.c<br>
│   │   │   │   ├── vnic_intr.h<br>
│   │   │   │   ├── vnic_nic.h<br>
│   │   │   │   ├── vnic_resource.h<br>
│   │   │   │   ├── vnic_rq.c<br>
│   │   │   │   ├── vnic_rq.h<br>
│   │   │   │   ├── vnic_rss.h<br>
│   │   │   │   ├── vnic_stats.h<br>
│   │   │   │   ├── vnic_wq.c<br>
│   │   │   │   ├── vnic_wq.h<br>
│   │   │   │   └── wq_enet_desc.h<br>
│   │   │   ├── enic_compat.h<br>
│   │   │   ├── enic_ethdev.c<br>
│   │   │   ├── enic_flow.c<br>
│   │   │   ├── enic_fm_flow.c<br>
│   │   │   ├── enic.h<br>
│   │   │   ├── enic_main.c<br>
│   │   │   ├── enic_res.c<br>
│   │   │   ├── enic_res.h<br>
│   │   │   ├── enic_rxtx.c<br>
│   │   │   ├── enic_rxtx_common.h<br>
│   │   │   ├── enic_rxtx_vec_avx2.c<br>
│   │   │   ├── enic_vf_representor.c<br>

│   │   │   └── version.map<br>
│   │   ├── failsafe<br>
│   │   │   ├── failsafe_args.c<br>
│   │   │   ├── failsafe.c<br>
│   │   │   ├── failsafe_eal.c<br>
│   │   │   ├── failsafe_ether.c<br>
│   │   │   ├── failsafe_flow.c<br>
│   │   │   ├── failsafe_intr.c<br>
│   │   │   ├── failsafe_ops.c<br>
│   │   │   ├── failsafe_private.h<br>
│   │   │   ├── failsafe_rxtx.c<br>

│   │   │   └── version.map<br>
│   │   ├── fm10k<br>
│   │   │   ├── base<br>
│   │   │   │   ├── fm10k_api.c<br>
│   │   │   │   ├── fm10k_api.h<br>
│   │   │   │   ├── fm10k_common.c<br>
│   │   │   │   ├── fm10k_common.h<br>
│   │   │   │   ├── fm10k_mbx.c<br>
│   │   │   │   ├── fm10k_mbx.h<br>
│   │   │   │   ├── fm10k_osdep.h<br>
│   │   │   │   ├── fm10k_pf.c<br>
│   │   │   │   ├── fm10k_pf.h<br>
│   │   │   │   ├── fm10k_tlv.c<br>
│   │   │   │   ├── fm10k_tlv.h<br>
│   │   │   │   ├── fm10k_type.h<br>
│   │   │   │   ├── fm10k_vf.c<br>
│   │   │   │   ├── fm10k_vf.h<br>

│   │   │   ├── fm10k_ethdev.c<br>
│   │   │   ├── fm10k.h<br>
│   │   │   ├── fm10k_logs.h<br>
│   │   │   ├── fm10k_rxtx.c<br>
│   │   │   ├── fm10k_rxtx_vec.c<br>

│   │   │   └── version.map<br>
│   │   ├── hinic<br>
│   │   │   ├── base<br>
│   │   │   │   ├── hinic_compat.h<br>
│   │   │   │   ├── hinic_csr.h<br>
│   │   │   │   ├── hinic_pmd_api_cmd.c<br>
│   │   │   │   ├── hinic_pmd_api_cmd.h<br>
│   │   │   │   ├── hinic_pmd_cfg.c<br>
│   │   │   │   ├── hinic_pmd_cfg.h<br>
│   │   │   │   ├── hinic_pmd_cmd.h<br>
│   │   │   │   ├── hinic_pmd_cmdq.c<br>
│   │   │   │   ├── hinic_pmd_cmdq.h<br>
│   │   │   │   ├── hinic_pmd_eqs.c<br>
│   │   │   │   ├── hinic_pmd_eqs.h<br>
│   │   │   │   ├── hinic_pmd_hwdev.c<br>
│   │   │   │   ├── hinic_pmd_hwdev.h<br>
│   │   │   │   ├── hinic_pmd_hwif.c<br>
│   │   │   │   ├── hinic_pmd_hwif.h<br>
│   │   │   │   ├── hinic_pmd_mbox.c<br>
│   │   │   │   ├── hinic_pmd_mbox.h<br>
│   │   │   │   ├── hinic_pmd_mgmt.c<br>
│   │   │   │   ├── hinic_pmd_mgmt.h<br>
│   │   │   │   ├── hinic_pmd_niccfg.c<br>
│   │   │   │   ├── hinic_pmd_niccfg.h<br>
│   │   │   │   ├── hinic_pmd_nicio.c<br>
│   │   │   │   ├── hinic_pmd_nicio.h<br>
│   │   │   │   ├── hinic_pmd_wq.c<br>
│   │   │   │   ├── hinic_pmd_wq.h<br>

│   │   │   ├── hinic_pmd_ethdev.c<br>
│   │   │   ├── hinic_pmd_ethdev.h<br>
│   │   │   ├── hinic_pmd_flow.c<br>
│   │   │   ├── hinic_pmd_rx.c<br>
│   │   │   ├── hinic_pmd_rx.h<br>
│   │   │   ├── hinic_pmd_tx.c<br>
│   │   │   ├── hinic_pmd_tx.h<br>

│   │   │   └── version.map<br>
│   │   ├── hns3<br>
│   │   │   ├── hns3_cmd.c<br>
│   │   │   ├── hns3_cmd.h<br>
│   │   │   ├── hns3_common.c<br>
│   │   │   ├── hns3_common.h<br>
│   │   │   ├── hns3_dcb.c<br>
│   │   │   ├── hns3_dcb.h<br>
│   │   │   ├── hns3_ethdev.c<br>
│   │   │   ├── hns3_ethdev_dump.c<br>
│   │   │   ├── hns3_ethdev.h<br>
│   │   │   ├── hns3_ethdev_vf.c<br>
│   │   │   ├── hns3_fdir.c<br>
│   │   │   ├── hns3_fdir.h<br>
│   │   │   ├── hns3_flow.c<br>
│   │   │   ├── hns3_flow.h<br>
│   │   │   ├── hns3_intr.c<br>
│   │   │   ├── hns3_intr.h<br>
│   │   │   ├── hns3_logs.h<br>
│   │   │   ├── hns3_mbx.c<br>
│   │   │   ├── hns3_mbx.h<br>
│   │   │   ├── hns3_mp.c<br>
│   │   │   ├── hns3_mp.h<br>
│   │   │   ├── hns3_ptp.c<br>
│   │   │   ├── hns3_regs.c<br>
│   │   │   ├── hns3_regs.h<br>
│   │   │   ├── hns3_rss.c<br>
│   │   │   ├── hns3_rss.h<br>
│   │   │   ├── hns3_rxtx.c<br>
│   │   │   ├── hns3_rxtx.h<br>
│   │   │   ├── hns3_rxtx_vec.c<br>
│   │   │   ├── hns3_rxtx_vec.h<br>
│   │   │   ├── hns3_rxtx_vec_neon.h<br>
│   │   │   ├── hns3_rxtx_vec_sve.c<br>
│   │   │   ├── hns3_stats.c<br>
│   │   │   ├── hns3_stats.h<br>
│   │   │   ├── hns3_tm.c<br>
│   │   │   ├── hns3_tm.h<br>

│   │   │   └── version.map<br>
│   │   ├── i40e<br>
│   │   │   ├── base<br>
│   │   │   │   ├── i40e_adminq.c<br>
│   │   │   │   ├── i40e_adminq_cmd.h<br>
│   │   │   │   ├── i40e_adminq.h<br>
│   │   │   │   ├── i40e_alloc.h<br>
│   │   │   │   ├── i40e_common.c<br>
│   │   │   │   ├── i40e_dcb.c<br>
│   │   │   │   ├── i40e_dcb.h<br>
│   │   │   │   ├── i40e_devids.h<br>
│   │   │   │   ├── i40e_diag.c<br>
│   │   │   │   ├── i40e_diag.h<br>
│   │   │   │   ├── i40e_hmc.c<br>
│   │   │   │   ├── i40e_hmc.h<br>
│   │   │   │   ├── i40e_lan_hmc.c<br>
│   │   │   │   ├── i40e_lan_hmc.h<br>
│   │   │   │   ├── i40e_nvm.c<br>
│   │   │   │   ├── i40e_osdep.h<br>
│   │   │   │   ├── i40e_prototype.h<br>
│   │   │   │   ├── i40e_register.h<br>
│   │   │   │   ├── i40e_status.h<br>
│   │   │   │   ├── i40e_type.h<br>

│   │   │   │   ├── README<br>
│   │   │   │   └── virtchnl.h<br>
│   │   │   ├── i40e_ethdev.c<br>
│   │   │   ├── i40e_ethdev.h<br>
│   │   │   ├── i40e_fdir.c<br>
│   │   │   ├── i40e_flow.c<br>
│   │   │   ├── i40e_hash.c<br>
│   │   │   ├── i40e_hash.h<br>
│   │   │   ├── i40e_logs.h<br>
│   │   │   ├── i40e_pf.c<br>
│   │   │   ├── i40e_pf.h<br>
│   │   │   ├── i40e_regs.h<br>
│   │   │   ├── i40e_rxtx.c<br>
│   │   │   ├── i40e_rxtx_common_avx.h<br>
│   │   │   ├── i40e_rxtx.h<br>
│   │   │   ├── i40e_rxtx_vec_altivec.c<br>
│   │   │   ├── i40e_rxtx_vec_avx2.c<br>
│   │   │   ├── i40e_rxtx_vec_avx512.c<br>
│   │   │   ├── i40e_rxtx_vec_common.h<br>
│   │   │   ├── i40e_rxtx_vec_neon.c<br>
│   │   │   ├── i40e_rxtx_vec_sse.c<br>
│   │   │   ├── i40e_tm.c<br>
│   │   │   ├── i40e_vf_representor.c<br>

│   │   │   ├── rte_pmd_i40e.c<br>
│   │   │   ├── rte_pmd_i40e.h<br>
│   │   │   └── version.map<br>
│   │   ├── iavf<br>
│   │   │   ├── iavf_ethdev.c<br>
│   │   │   ├── iavf_fdir.c<br>
│   │   │   ├── iavf_generic_flow.c<br>
│   │   │   ├── iavf_generic_flow.h<br>
│   │   │   ├── iavf.h<br>
│   │   │   ├── iavf_hash.c<br>
│   │   │   ├── iavf_ipsec_crypto.c<br>
│   │   │   ├── iavf_ipsec_crypto_capabilities.h<br>
│   │   │   ├── iavf_ipsec_crypto.h<br>
│   │   │   ├── iavf_log.h<br>
│   │   │   ├── iavf_rxtx.c<br>
│   │   │   ├── iavf_rxtx.h<br>
│   │   │   ├── iavf_rxtx_vec_avx2.c<br>
│   │   │   ├── iavf_rxtx_vec_avx512.c<br>
│   │   │   ├── iavf_rxtx_vec_common.h<br>
│   │   │   ├── iavf_rxtx_vec_sse.c<br>
│   │   │   ├── iavf_tm.c<br>
│   │   │   ├── iavf_vchnl.c<br>

│   │   │   ├── rte_pmd_iavf.h<br>
│   │   │   └── version.map<br>
│   │   ├── ice<br>
│   │   │   ├── base<br>
│   │   │   │   ├── ice_acl.c<br>
│   │   │   │   ├── ice_acl_ctrl.c<br>
│   │   │   │   ├── ice_acl.h<br>
│   │   │   │   ├── ice_adminq_cmd.h<br>
│   │   │   │   ├── ice_alloc.h<br>
│   │   │   │   ├── ice_bitops.h<br>
│   │   │   │   ├── ice_bst_tcam.c<br>
│   │   │   │   ├── ice_bst_tcam.h<br>
│   │   │   │   ├── ice_cgu_regs.h<br>
│   │   │   │   ├── ice_common.c<br>
│   │   │   │   ├── ice_common.h<br>
│   │   │   │   ├── ice_controlq.c<br>
│   │   │   │   ├── ice_controlq.h<br>
│   │   │   │   ├── ice_dcb.c<br>
│   │   │   │   ├── ice_dcb.h<br>
│   │   │   │   ├── ice_devids.h<br>
│   │   │   │   ├── ice_fdir.c<br>
│   │   │   │   ├── ice_fdir.h<br>
│   │   │   │   ├── ice_flex_pipe.c<br>
│   │   │   │   ├── ice_flex_pipe.h<br>
│   │   │   │   ├── ice_flex_type.h<br>
│   │   │   │   ├── ice_flg_rd.c<br>
│   │   │   │   ├── ice_flg_rd.h<br>
│   │   │   │   ├── ice_flow.c<br>
│   │   │   │   ├── ice_flow.h<br>
│   │   │   │   ├── ice_hw_autogen.h<br>
│   │   │   │   ├── ice_imem.c<br>
│   │   │   │   ├── ice_imem.h<br>
│   │   │   │   ├── ice_lan_tx_rx.h<br>
│   │   │   │   ├── ice_metainit.c<br>
│   │   │   │   ├── ice_metainit.h<br>
│   │   │   │   ├── ice_mk_grp.c<br>
│   │   │   │   ├── ice_mk_grp.h<br>
│   │   │   │   ├── ice_nvm.c<br>
│   │   │   │   ├── ice_nvm.h<br>
│   │   │   │   ├── ice_osdep.h<br>
│   │   │   │   ├── ice_parser.c<br>
│   │   │   │   ├── ice_parser.h<br>
│   │   │   │   ├── ice_parser_rt.c<br>
│   │   │   │   ├── ice_parser_rt.h<br>
│   │   │   │   ├── ice_parser_util.h<br>
│   │   │   │   ├── ice_pg_cam.c<br>
│   │   │   │   ├── ice_pg_cam.h<br>
│   │   │   │   ├── ice_protocol_type.h<br>
│   │   │   │   ├── ice_proto_grp.c<br>
│   │   │   │   ├── ice_proto_grp.h<br>
│   │   │   │   ├── ice_ptp_consts.h<br>
│   │   │   │   ├── ice_ptp_hw.c<br>
│   │   │   │   ├── ice_ptp_hw.h<br>
│   │   │   │   ├── ice_ptype_mk.c<br>
│   │   │   │   ├── ice_ptype_mk.h<br>
│   │   │   │   ├── ice_sbq_cmd.h<br>
│   │   │   │   ├── ice_sched.c<br>
│   │   │   │   ├── ice_sched.h<br>
│   │   │   │   ├── ice_status.h<br>
│   │   │   │   ├── ice_switch.c<br>
│   │   │   │   ├── ice_switch.h<br>
│   │   │   │   ├── ice_tmatch.h<br>
│   │   │   │   ├── ice_type.h<br>
│   │   │   │   ├── ice_vlan_mode.c<br>
│   │   │   │   ├── ice_vlan_mode.h<br>
│   │   │   │   ├── ice_xlt_kb.c<br>
│   │   │   │   ├── ice_xlt_kb.h<br>

│   │   │   │   └── README<br>
│   │   │   ├── ice_acl_filter.c<br>
│   │   │   ├── ice_dcf.c<br>
│   │   │   ├── ice_dcf_ethdev.c<br>
│   │   │   ├── ice_dcf_ethdev.h<br>
│   │   │   ├── ice_dcf.h<br>
│   │   │   ├── ice_dcf_parent.c<br>
│   │   │   ├── ice_dcf_sched.c<br>
│   │   │   ├── ice_dcf_vf_representor.c<br>
│   │   │   ├── ice_ethdev.c<br>
│   │   │   ├── ice_ethdev.h<br>
│   │   │   ├── ice_fdir_filter.c<br>
│   │   │   ├── ice_generic_flow.c<br>
│   │   │   ├── ice_generic_flow.h<br>
│   │   │   ├── ice_hash.c<br>
│   │   │   ├── ice_logs.h<br>
│   │   │   ├── ice_rxtx.c<br>
│   │   │   ├── ice_rxtx_common_avx.h<br>
│   │   │   ├── ice_rxtx.h<br>
│   │   │   ├── ice_rxtx_vec_avx2.c<br>
│   │   │   ├── ice_rxtx_vec_avx512.c<br>
│   │   │   ├── ice_rxtx_vec_common.h<br>
│   │   │   ├── ice_rxtx_vec_sse.c<br>
│   │   │   ├── ice_switch_filter.c<br>

│   │   │   ├── rte_pmd_ice.h<br>
│   │   │   └── version.map<br>
│   │   ├── igc<br>
│   │   │   ├── base<br>
│   │   │   │   ├── igc_82571.h<br>
│   │   │   │   ├── igc_82575.h<br>
│   │   │   │   ├── igc_api.c<br>
│   │   │   │   ├── igc_api.h<br>
│   │   │   │   ├── igc_base.c<br>
│   │   │   │   ├── igc_base.h<br>
│   │   │   │   ├── igc_defines.h<br>
│   │   │   │   ├── igc_hw.h<br>
│   │   │   │   ├── igc_i225.c<br>
│   │   │   │   ├── igc_i225.h<br>
│   │   │   │   ├── igc_ich8lan.h<br>
│   │   │   │   ├── igc_mac.c<br>
│   │   │   │   ├── igc_mac.h<br>
│   │   │   │   ├── igc_manage.c<br>
│   │   │   │   ├── igc_manage.h<br>
│   │   │   │   ├── igc_nvm.c<br>
│   │   │   │   ├── igc_nvm.h<br>
│   │   │   │   ├── igc_osdep.c<br>
│   │   │   │   ├── igc_osdep.h<br>
│   │   │   │   ├── igc_phy.c<br>
│   │   │   │   ├── igc_phy.h<br>
│   │   │   │   ├── igc_regs.h<br>

│   │   │   │   └── README<br>
│   │   │   ├── igc_ethdev.c<br>
│   │   │   ├── igc_ethdev.h<br>
│   │   │   ├── igc_filter.c<br>
│   │   │   ├── igc_filter.h<br>
│   │   │   ├── igc_flow.c<br>
│   │   │   ├── igc_flow.h<br>
│   │   │   ├── igc_logs.c<br>
│   │   │   ├── igc_logs.h<br>
│   │   │   ├── igc_txrx.c<br>
│   │   │   ├── igc_txrx.h<br>

│   │   │   └── version.map<br>
│   │   ├── ionic<br>
│   │   │   ├── ionic_dev.c<br>
│   │   │   ├── ionic_dev.h<br>
│   │   │   ├── ionic_ethdev.c<br>
│   │   │   ├── ionic_ethdev.h<br>
│   │   │   ├── ionic.h<br>
│   │   │   ├── ionic_if.h<br>
│   │   │   ├── ionic_lif.c<br>
│   │   │   ├── ionic_lif.h<br>
│   │   │   ├── ionic_logs.h<br>
│   │   │   ├── ionic_mac_api.c<br>
│   │   │   ├── ionic_mac_api.h<br>
│   │   │   ├── ionic_main.c<br>
│   │   │   ├── ionic_osdep.h<br>
│   │   │   ├── ionic_regs.h<br>
│   │   │   ├── ionic_rx_filter.c<br>
│   │   │   ├── ionic_rx_filter.h<br>
│   │   │   ├── ionic_rxtx.c<br>
│   │   │   ├── ionic_rxtx.h<br>

│   │   │   └── version.map<br>
│   │   ├── ipn3ke<br>
│   │   │   ├── ipn3ke_ethdev.c<br>
│   │   │   ├── ipn3ke_ethdev.h<br>
│   │   │   ├── ipn3ke_flow.c<br>
│   │   │   ├── ipn3ke_flow.h<br>
│   │   │   ├── ipn3ke_logs.h<br>
│   │   │   ├── ipn3ke_rawdev_api.h<br>
│   │   │   ├── ipn3ke_representor.c<br>
│   │   │   ├── ipn3ke_tm.c<br>

│   │   │   └── version.map<br>
│   │   ├── ixgbe<br>
│   │   │   ├── base<br>
│   │   │   │   ├── ixgbe_82598.c<br>
│   │   │   │   ├── ixgbe_82598.h<br>
│   │   │   │   ├── ixgbe_82599.c<br>
│   │   │   │   ├── ixgbe_82599.h<br>
│   │   │   │   ├── ixgbe_api.c<br>
│   │   │   │   ├── ixgbe_api.h<br>
│   │   │   │   ├── ixgbe_common.c<br>
│   │   │   │   ├── ixgbe_common.h<br>
│   │   │   │   ├── ixgbe_dcb_82598.c<br>
│   │   │   │   ├── ixgbe_dcb_82598.h<br>
│   │   │   │   ├── ixgbe_dcb_82599.c<br>
│   │   │   │   ├── ixgbe_dcb_82599.h<br>
│   │   │   │   ├── ixgbe_dcb.c<br>
│   │   │   │   ├── ixgbe_dcb.h<br>
│   │   │   │   ├── ixgbe_hv_vf.c<br>
│   │   │   │   ├── ixgbe_hv_vf.h<br>
│   │   │   │   ├── ixgbe_mbx.c<br>
│   │   │   │   ├── ixgbe_mbx.h<br>
│   │   │   │   ├── ixgbe_osdep.h<br>
│   │   │   │   ├── ixgbe_phy.c<br>
│   │   │   │   ├── ixgbe_phy.h<br>
│   │   │   │   ├── ixgbe_type.h<br>
│   │   │   │   ├── ixgbe_vf.c<br>
│   │   │   │   ├── ixgbe_vf.h<br>
│   │   │   │   ├── ixgbe_x540.c<br>
│   │   │   │   ├── ixgbe_x540.h<br>
│   │   │   │   ├── ixgbe_x550.c<br>
│   │   │   │   ├── ixgbe_x550.h<br>

│   │   │   │   └── README<br>
│   │   │   ├── ixgbe_82599_bypass.c<br>
│   │   │   ├── ixgbe_bypass_api.h<br>
│   │   │   ├── ixgbe_bypass.c<br>
│   │   │   ├── ixgbe_bypass_defines.h<br>
│   │   │   ├── ixgbe_bypass.h<br>
│   │   │   ├── ixgbe_ethdev.c<br>
│   │   │   ├── ixgbe_ethdev.h<br>
│   │   │   ├── ixgbe_fdir.c<br>
│   │   │   ├── ixgbe_flow.c<br>
│   │   │   ├── ixgbe_ipsec.c<br>
│   │   │   ├── ixgbe_ipsec.h<br>
│   │   │   ├── ixgbe_logs.h<br>
│   │   │   ├── ixgbe_pf.c<br>
│   │   │   ├── ixgbe_regs.h<br>
│   │   │   ├── ixgbe_rxtx.c<br>
│   │   │   ├── ixgbe_rxtx.h<br>
│   │   │   ├── ixgbe_rxtx_vec_common.h<br>
│   │   │   ├── ixgbe_rxtx_vec_neon.c<br>
│   │   │   ├── ixgbe_rxtx_vec_sse.c<br>
│   │   │   ├── ixgbe_tm.c<br>
│   │   │   ├── ixgbe_vf_representor.c<br>

│   │   │   ├── rte_pmd_ixgbe.c<br>
│   │   │   ├── rte_pmd_ixgbe.h<br>
│   │   │   └── version.map<br>
│   │   ├── kni<br>

│   │   │   ├── rte_eth_kni.c<br>
│   │   │   └── version.map<br>
│   │   ├── liquidio<br>
│   │   │   ├── base<br>
│   │   │   │   ├── lio_23xx_reg.h<br>
│   │   │   │   ├── lio_23xx_vf.c<br>
│   │   │   │   ├── lio_23xx_vf.h<br>
│   │   │   │   ├── lio_hw_defs.h<br>
│   │   │   │   ├── lio_mbox.c<br>
│   │   │   │   └── lio_mbox.h<br>
│   │   │   ├── lio_ethdev.c<br>
│   │   │   ├── lio_ethdev.h<br>
│   │   │   ├── lio_logs.h<br>
│   │   │   ├── lio_rxtx.c<br>
│   │   │   ├── lio_rxtx.h<br>
│   │   │   ├── lio_struct.h<br>

│   │   │   └── version.map<br>
│   │   ├── memif<br>
│   │   │   ├── memif.h<br>
│   │   │   ├── memif_socket.c<br>
│   │   │   ├── memif_socket.h<br>

│   │   │   ├── rte_eth_memif.c<br>
│   │   │   ├── rte_eth_memif.h<br>
│   │   │   └── version.map<br>

│   │   ├── mlx4<br>

│   │   │   ├── mlx4.c<br>
│   │   │   ├── mlx4_ethdev.c<br>
│   │   │   ├── mlx4_flow.c<br>
│   │   │   ├── mlx4_flow.h<br>
│   │   │   ├── mlx4_glue.c<br>
│   │   │   ├── mlx4_glue.h<br>
│   │   │   ├── mlx4.h<br>
│   │   │   ├── mlx4_intr.c<br>
│   │   │   ├── mlx4_mp.c<br>
│   │   │   ├── mlx4_mr.c<br>
│   │   │   ├── mlx4_mr.h<br>
│   │   │   ├── mlx4_prm.h<br>
│   │   │   ├── mlx4_rxq.c<br>
│   │   │   ├── mlx4_rxtx.c<br>
│   │   │   ├── mlx4_rxtx.h<br>
│   │   │   ├── mlx4_txq.c<br>
│   │   │   ├── mlx4_utils.c<br>
│   │   │   ├── mlx4_utils.h<br>
│   │   │   └── version.map<br>
│   │   ├── mlx5<br>
│   │   │   ├── linux<br>

│   │   │   │   ├── mlx5_ethdev_os.c<br>
│   │   │   │   ├── mlx5_flow_os.c<br>
│   │   │   │   ├── mlx5_flow_os.h<br>
│   │   │   │   ├── mlx5_mp_os.c<br>
│   │   │   │   ├── mlx5_os.c<br>
│   │   │   │   ├── mlx5_os.h<br>
│   │   │   │   ├── mlx5_socket.c<br>
│   │   │   │   ├── mlx5_verbs.c<br>
│   │   │   │   ├── mlx5_verbs.h<br>
│   │   │   │   └── mlx5_vlan_os.c<br>

│   │   │   ├── mlx5.c<br>
│   │   │   ├── mlx5_defs.h<br>
│   │   │   ├── mlx5_devx.c<br>
│   │   │   ├── mlx5_devx.h<br>
│   │   │   ├── mlx5_dr.c<br>
│   │   │   ├── mlx5_dr.h<br>
│   │   │   ├── mlx5_ethdev.c<br>
│   │   │   ├── mlx5_flow_aso.c<br>
│   │   │   ├── mlx5_flow.c<br>
│   │   │   ├── mlx5_flow_dv.c<br>
│   │   │   ├── mlx5_flow_flex.c<br>
│   │   │   ├── mlx5_flow.h<br>
│   │   │   ├── mlx5_flow_hw.c<br>
│   │   │   ├── mlx5_flow_meter.c<br>
│   │   │   ├── mlx5_flow_verbs.c<br>
│   │   │   ├── mlx5.h<br>
│   │   │   ├── mlx5_mac.c<br>
│   │   │   ├── mlx5_rss.c<br>
│   │   │   ├── mlx5_rx.c<br>
│   │   │   ├── mlx5_rx.h<br>
│   │   │   ├── mlx5_rxmode.c<br>
│   │   │   ├── mlx5_rxq.c<br>
│   │   │   ├── mlx5_rxtx.c<br>
│   │   │   ├── mlx5_rxtx.h<br>
│   │   │   ├── mlx5_rxtx_vec_altivec.h<br>
│   │   │   ├── mlx5_rxtx_vec.c<br>
│   │   │   ├── mlx5_rxtx_vec.h<br>
│   │   │   ├── mlx5_rxtx_vec_neon.h<br>
│   │   │   ├── mlx5_rxtx_vec_sse.h<br>
│   │   │   ├── mlx5_stats.c<br>
│   │   │   ├── mlx5_trigger.c<br>
│   │   │   ├── mlx5_tx.c<br>
│   │   │   ├── mlx5_tx_empw.c<br>
│   │   │   ├── mlx5_tx.h<br>
│   │   │   ├── mlx5_tx_mpw.c<br>
│   │   │   ├── mlx5_tx_nompw.c<br>
│   │   │   ├── mlx5_txpp.c<br>
│   │   │   ├── mlx5_txq.c<br>
│   │   │   ├── mlx5_tx_txpp.c<br>
│   │   │   ├── mlx5_utils.c<br>
│   │   │   ├── mlx5_utils.h<br>
│   │   │   ├── mlx5_vlan.c<br>
│   │   │   ├── rte_pmd_mlx5.h<br>
│   │   │   ├── version.map<br>
│   │   │   └── windows<br>

│   │   │       ├── mlx5_ethdev_os.c<br>
│   │   │       ├── mlx5_flow_os.c<br>
│   │   │       ├── mlx5_flow_os.h<br>
│   │   │       ├── mlx5_mp_os.c<br>
│   │   │       ├── mlx5_os.c<br>
│   │   │       ├── mlx5_os.h<br>
│   │   │       └── mlx5_vlan_os.c<br>
│   │   ├── mvneta<br>

│   │   │   ├── mvneta_ethdev.c<br>
│   │   │   ├── mvneta_ethdev.h<br>
│   │   │   ├── mvneta_rxtx.c<br>
│   │   │   ├── mvneta_rxtx.h<br>
│   │   │   └── version.map<br>
│   │   ├── mvpp2<br>

│   │   │   ├── mrvl_ethdev.c<br>
│   │   │   ├── mrvl_ethdev.h<br>
│   │   │   ├── mrvl_flow.c<br>
│   │   │   ├── mrvl_flow.h<br>
│   │   │   ├── mrvl_mtr.c<br>
│   │   │   ├── mrvl_mtr.h<br>
│   │   │   ├── mrvl_qos.c<br>
│   │   │   ├── mrvl_qos.h<br>
│   │   │   ├── mrvl_tm.c<br>
│   │   │   ├── mrvl_tm.h<br>
│   │   │   └── version.map<br>
│   │   ├── netvsc<br>
│   │   │   ├── hn_ethdev.c<br>
│   │   │   ├── hn_logs.h<br>
│   │   │   ├── hn_nvs.c<br>
│   │   │   ├── hn_nvs.h<br>
│   │   │   ├── hn_rndis.c<br>
│   │   │   ├── hn_rndis.h<br>
│   │   │   ├── hn_rxtx.c<br>
│   │   │   ├── hn_var.h<br>
│   │   │   ├── hn_vf.c<br>

│   │   │   ├── ndis.h<br>
│   │   │   ├── rndis.h<br>
│   │   │   └── version.map<br>
│   │   ├── nfb<br>

│   │   │   ├── nfb_ethdev.c<br>
│   │   │   ├── nfb.h<br>
│   │   │   ├── nfb_rx.c<br>
│   │   │   ├── nfb_rx.h<br>
│   │   │   ├── nfb_rxmode.c<br>
│   │   │   ├── nfb_rxmode.h<br>
│   │   │   ├── nfb_stats.c<br>
│   │   │   ├── nfb_stats.h<br>
│   │   │   ├── nfb_tx.c<br>
│   │   │   ├── nfb_tx.h<br>
│   │   │   └── version.map<br>
│   │   ├── nfp<br>

│   │   │   ├── nfp_common.c<br>
│   │   │   ├── nfp_common.h<br>
│   │   │   ├── nfpcore<br>
│   │   │   │   ├── nfp6000<br>
│   │   │   │   │   ├── nfp6000.h<br>
│   │   │   │   │   └── nfp_xpb.h<br>
│   │   │   │   ├── nfp-common<br>
│   │   │   │   │   ├── nfp_cppat.h<br>
│   │   │   │   │   ├── nfp_platform.h<br>
│   │   │   │   │   └── nfp_resid.h<br>
│   │   │   │   ├── nfp_cppcore.c<br>
│   │   │   │   ├── nfp_cpp.h<br>
│   │   │   │   ├── nfp_cpp_pcie_ops.c<br>
│   │   │   │   ├── nfp_crc.c<br>
│   │   │   │   ├── nfp_crc.h<br>
│   │   │   │   ├── nfp_hwinfo.c<br>
│   │   │   │   ├── nfp_hwinfo.h<br>
│   │   │   │   ├── nfp_mip.c<br>
│   │   │   │   ├── nfp_mip.h<br>
│   │   │   │   ├── nfp_mutex.c<br>
│   │   │   │   ├── nfp_nffw.c<br>
│   │   │   │   ├── nfp_nffw.h<br>
│   │   │   │   ├── nfp_nsp.c<br>
│   │   │   │   ├── nfp_nsp_cmds.c<br>
│   │   │   │   ├── nfp_nsp_eth.c<br>
│   │   │   │   ├── nfp_nsp.h<br>
│   │   │   │   ├── nfp_resource.c<br>
│   │   │   │   ├── nfp_resource.h<br>
│   │   │   │   ├── nfp_rtsym.c<br>
│   │   │   │   ├── nfp_rtsym.h<br>
│   │   │   │   └── nfp_target.h<br>
│   │   │   ├── nfp_cpp_bridge.c<br>
│   │   │   ├── nfp_cpp_bridge.h<br>
│   │   │   ├── nfp_ctrl.h<br>
│   │   │   ├── nfp_ethdev.c<br>
│   │   │   ├── nfp_ethdev_vf.c<br>
│   │   │   ├── nfp_logs.h<br>
│   │   │   ├── nfp_rxtx.c<br>
│   │   │   ├── nfp_rxtx.h<br>
│   │   │   └── version.map<br>
│   │   ├── ngbe<br>
│   │   │   ├── base<br>

│   │   │   │   ├── ngbe_devids.h<br>
│   │   │   │   ├── ngbe_dummy.h<br>
│   │   │   │   ├── ngbe_eeprom.c<br>
│   │   │   │   ├── ngbe_eeprom.h<br>
│   │   │   │   ├── ngbe.h<br>
│   │   │   │   ├── ngbe_hw.c<br>
│   │   │   │   ├── ngbe_hw.h<br>
│   │   │   │   ├── ngbe_mbx.c<br>
│   │   │   │   ├── ngbe_mbx.h<br>
│   │   │   │   ├── ngbe_mng.c<br>
│   │   │   │   ├── ngbe_mng.h<br>
│   │   │   │   ├── ngbe_osdep.h<br>
│   │   │   │   ├── ngbe_phy.c<br>
│   │   │   │   ├── ngbe_phy.h<br>
│   │   │   │   ├── ngbe_phy_mvl.c<br>
│   │   │   │   ├── ngbe_phy_mvl.h<br>
│   │   │   │   ├── ngbe_phy_rtl.c<br>
│   │   │   │   ├── ngbe_phy_rtl.h<br>
│   │   │   │   ├── ngbe_phy_yt.c<br>
│   │   │   │   ├── ngbe_phy_yt.h<br>
│   │   │   │   ├── ngbe_regs.h<br>
│   │   │   │   ├── ngbe_status.h<br>
│   │   │   │   └── ngbe_type.h<br>

│   │   │   ├── ngbe_ethdev.c<br>
│   │   │   ├── ngbe_ethdev.h<br>
│   │   │   ├── ngbe_logs.h<br>
│   │   │   ├── ngbe_pf.c<br>
│   │   │   ├── ngbe_ptypes.c<br>
│   │   │   ├── ngbe_ptypes.h<br>
│   │   │   ├── ngbe_regs_group.h<br>
│   │   │   ├── ngbe_rxtx.c<br>
│   │   │   ├── ngbe_rxtx.h<br>
│   │   │   └── version.map<br>
│   │   ├── null<br>

│   │   │   ├── rte_eth_null.c<br>
│   │   │   └── version.map<br>
│   │   ├── octeontx<br>
│   │   │   ├── base<br>

│   │   │   │   ├── octeontx_bgx.c<br>
│   │   │   │   ├── octeontx_bgx.h<br>
│   │   │   │   ├── octeontx_io.h<br>
│   │   │   │   ├── octeontx_pki_var.h<br>
│   │   │   │   ├── octeontx_pkivf.c<br>
│   │   │   │   ├── octeontx_pkivf.h<br>
│   │   │   │   ├── octeontx_pkovf.c<br>
│   │   │   │   └── octeontx_pkovf.h<br>

│   │   │   ├── octeontx_ethdev.c<br>
│   │   │   ├── octeontx_ethdev.h<br>
│   │   │   ├── octeontx_ethdev_ops.c<br>
│   │   │   ├── octeontx_logs.h<br>
│   │   │   ├── octeontx_rxtx.c<br>
│   │   │   ├── octeontx_rxtx.h<br>
│   │   │   └── version.map<br>
│   │   ├── octeontx_ep<br>

│   │   │   ├── otx2_ep_vf.c<br>
│   │   │   ├── otx2_ep_vf.h<br>
│   │   │   ├── otx_ep_common.h<br>
│   │   │   ├── otx_ep_ethdev.c<br>
│   │   │   ├── otx_ep_rxtx.c<br>
│   │   │   ├── otx_ep_rxtx.h<br>
│   │   │   ├── otx_ep_vf.c<br>
│   │   │   ├── otx_ep_vf.h<br>
│   │   │   └── version.map<br>
│   │   ├── pcap<br>

│   │   │   ├── pcap_ethdev.c<br>
│   │   │   ├── pcap_osdep_freebsd.c<br>
│   │   │   ├── pcap_osdep.h<br>
│   │   │   ├── pcap_osdep_linux.c<br>
│   │   │   ├── pcap_osdep_windows.c<br>
│   │   │   └── version.map<br>
│   │   ├── pfe<br>
│   │   │   ├── base<br>
│   │   │   │   ├── cbus<br>
│   │   │   │   │   ├── bmu.h<br>
│   │   │   │   │   ├── class_csr.h<br>
│   │   │   │   │   ├── emac_mtip.h<br>
│   │   │   │   │   ├── gpi.h<br>
│   │   │   │   │   ├── hif.h<br>
│   │   │   │   │   ├── hif_nocpy.h<br>
│   │   │   │   │   ├── tmu_csr.h<br>
│   │   │   │   │   └── util_csr.h<br>
│   │   │   │   ├── cbus.h<br>
│   │   │   │   └── pfe.h<br>

│   │   │   ├── pfe_ethdev.c<br>
│   │   │   ├── pfe_eth.h<br>
│   │   │   ├── pfe_hal.c<br>
│   │   │   ├── pfe_hif.c<br>
│   │   │   ├── pfe_hif.h<br>
│   │   │   ├── pfe_hif_lib.c<br>
│   │   │   ├── pfe_hif_lib.h<br>
│   │   │   ├── pfe_logs.h<br>
│   │   │   ├── pfe_mod.h<br>
│   │   │   └── version.map<br>
│   │   ├── qede<br>
│   │   │   ├── base<br>
│   │   │   │   ├── bcm_osal.c<br>
│   │   │   │   ├── bcm_osal.h<br>
│   │   │   │   ├── common_hsi.h<br>
│   │   │   │   ├── ecore_attn_values.h<br>
│   │   │   │   ├── ecore_chain.h<br>
│   │   │   │   ├── ecore_cxt_api.h<br>
│   │   │   │   ├── ecore_cxt.c<br>
│   │   │   │   ├── ecore_cxt.h<br>
│   │   │   │   ├── ecore_dcbx_api.h<br>
│   │   │   │   ├── ecore_dcbx.c<br>
│   │   │   │   ├── ecore_dcbx.h<br>
│   │   │   │   ├── ecore_dev_api.h<br>
│   │   │   │   ├── ecore_dev.c<br>
│   │   │   │   ├── ecore_gtt_reg_addr.h<br>
│   │   │   │   ├── ecore_gtt_values.h<br>
│   │   │   │   ├── ecore.h<br>
│   │   │   │   ├── ecore_hsi_common.h<br>
│   │   │   │   ├── ecore_hsi_debug_tools.h<br>
│   │   │   │   ├── ecore_hsi_eth.h<br>
│   │   │   │   ├── ecore_hsi_func_common.h<br>
│   │   │   │   ├── ecore_hsi_init_func.h<br>
│   │   │   │   ├── ecore_hsi_init_tool.h<br>
│   │   │   │   ├── ecore_hw.c<br>
│   │   │   │   ├── ecore_hw_defs.h<br>
│   │   │   │   ├── ecore_hw.h<br>
│   │   │   │   ├── ecore_init_fw_funcs.c<br>
│   │   │   │   ├── ecore_init_fw_funcs.h<br>
│   │   │   │   ├── ecore_init_ops.c<br>
│   │   │   │   ├── ecore_init_ops.h<br>
│   │   │   │   ├── ecore_int_api.h<br>
│   │   │   │   ├── ecore_int.c<br>
│   │   │   │   ├── ecore_int.h<br>
│   │   │   │   ├── ecore_iov_api.h<br>
│   │   │   │   ├── ecore_iro.h<br>
│   │   │   │   ├── ecore_iro_values.h<br>
│   │   │   │   ├── ecore_l2_api.h<br>
│   │   │   │   ├── ecore_l2.c<br>
│   │   │   │   ├── ecore_l2.h<br>
│   │   │   │   ├── ecore_mcp_api.h<br>
│   │   │   │   ├── ecore_mcp.c<br>
│   │   │   │   ├── ecore_mcp.h<br>
│   │   │   │   ├── ecore_mng_tlv.c<br>
│   │   │   │   ├── ecore_proto_if.h<br>
│   │   │   │   ├── ecore_rt_defs.h<br>
│   │   │   │   ├── ecore_sp_api.h<br>
│   │   │   │   ├── ecore_sp_commands.c<br>
│   │   │   │   ├── ecore_sp_commands.h<br>
│   │   │   │   ├── ecore_spq.c<br>
│   │   │   │   ├── ecore_spq.h<br>
│   │   │   │   ├── ecore_sriov.c<br>
│   │   │   │   ├── ecore_sriov.h<br>
│   │   │   │   ├── ecore_status.h<br>
│   │   │   │   ├── ecore_utils.h<br>
│   │   │   │   ├── ecore_vf_api.h<br>
│   │   │   │   ├── ecore_vf.c<br>
│   │   │   │   ├── ecore_vf.h<br>
│   │   │   │   ├── ecore_vfpf_if.h<br>
│   │   │   │   ├── eth_common.h<br>
│   │   │   │   ├── mcp_public.h<br>

│   │   │   │   ├── nvm_cfg.h<br>
│   │   │   │   └── reg_addr.h<br>

│   │   │   ├── qede_debug.c<br>
│   │   │   ├── qede_debug.h<br>
│   │   │   ├── qede_ethdev.c<br>
│   │   │   ├── qede_ethdev.h<br>
│   │   │   ├── qede_filter.c<br>
│   │   │   ├── qede_if.h<br>
│   │   │   ├── qede_logs.h<br>
│   │   │   ├── qede_main.c<br>
│   │   │   ├── qede_regs.c<br>
│   │   │   ├── qede_rxtx.c<br>
│   │   │   ├── qede_rxtx.h<br>
│   │   │   ├── qede_sriov.c<br>
│   │   │   ├── qede_sriov.h<br>
│   │   │   └── version.map<br>
│   │   ├── ring<br>

│   │   │   ├── rte_eth_ring.c<br>
│   │   │   ├── rte_eth_ring.h<br>
│   │   │   └── version.map<br>
│   │   ├── sfc<br>

│   │   │   ├── sfc.c<br>
│   │   │   ├── sfc_debug.h<br>
│   │   │   ├── sfc_dp.c<br>
│   │   │   ├── sfc_dp.h<br>
│   │   │   ├── sfc_dp_rx.h<br>
│   │   │   ├── sfc_dp_tx.h<br>
│   │   │   ├── sfc_ef100.h<br>
│   │   │   ├── sfc_ef100_rx.c<br>
│   │   │   ├── sfc_ef100_tx.c<br>
│   │   │   ├── sfc_ef10_essb_rx.c<br>
│   │   │   ├── sfc_ef10.h<br>
│   │   │   ├── sfc_ef10_rx.c<br>
│   │   │   ├── sfc_ef10_rx_ev.h<br>
│   │   │   ├── sfc_ef10_tx.c<br>
│   │   │   ├── sfc_ethdev.c<br>
│   │   │   ├── sfc_ethdev_state.h<br>
│   │   │   ├── sfc_ev.c<br>
│   │   │   ├── sfc_ev.h<br>
│   │   │   ├── sfc_filter.c<br>
│   │   │   ├── sfc_filter.h<br>
│   │   │   ├── sfc_flow.c<br>
│   │   │   ├── sfc_flow.h<br>
│   │   │   ├── sfc_flow_rss.c<br>
│   │   │   ├── sfc_flow_rss.h<br>
│   │   │   ├── sfc_flow_tunnel.c<br>
│   │   │   ├── sfc_flow_tunnel.h<br>
│   │   │   ├── sfc.h<br>
│   │   │   ├── sfc_intr.c<br>
│   │   │   ├── sfc_kvargs.c<br>
│   │   │   ├── sfc_kvargs.h<br>
│   │   │   ├── sfc_log.h<br>
│   │   │   ├── sfc_mae.c<br>
│   │   │   ├── sfc_mae_counter.c<br>
│   │   │   ├── sfc_mae_counter.h<br>
│   │   │   ├── sfc_mae.h<br>
│   │   │   ├── sfc_mcdi.c<br>
│   │   │   ├── sfc_nic_dma.c<br>
│   │   │   ├── sfc_nic_dma_dp.h<br>
│   │   │   ├── sfc_nic_dma.h<br>
│   │   │   ├── sfc_port.c<br>
│   │   │   ├── sfc_repr.c<br>
│   │   │   ├── sfc_repr.h<br>
│   │   │   ├── sfc_repr_proxy_api.h<br>
│   │   │   ├── sfc_repr_proxy.c<br>
│   │   │   ├── sfc_repr_proxy.h<br>
│   │   │   ├── sfc_rx.c<br>
│   │   │   ├── sfc_rx.h<br>
│   │   │   ├── sfc_service.c<br>
│   │   │   ├── sfc_service.h<br>
│   │   │   ├── sfc_sriov.c<br>
│   │   │   ├── sfc_sriov.h<br>
│   │   │   ├── sfc_stats.h<br>
│   │   │   ├── sfc_switch.c<br>
│   │   │   ├── sfc_switch.h<br>
│   │   │   ├── sfc_sw_stats.c<br>
│   │   │   ├── sfc_sw_stats.h<br>
│   │   │   ├── sfc_tso.c<br>
│   │   │   ├── sfc_tso.h<br>
│   │   │   ├── sfc_tweak.h<br>
│   │   │   ├── sfc_tx.c<br>
│   │   │   ├── sfc_tx.h<br>
│   │   │   └── version.map<br>
│   │   ├── softnic<br>
│   │   │   ├── conn.c<br>
│   │   │   ├── conn.h<br>
│   │   │   ├── firmware.cli<br>

│   │   │   ├── parser.c<br>
│   │   │   ├── parser.h<br>
│   │   │   ├── rte_eth_softnic_action.c<br>
│   │   │   ├── rte_eth_softnic.c<br>
│   │   │   ├── rte_eth_softnic_cli.c<br>
│   │   │   ├── rte_eth_softnic_cryptodev.c<br>
│   │   │   ├── rte_eth_softnic_flow.c<br>
│   │   │   ├── rte_eth_softnic.h<br>
│   │   │   ├── rte_eth_softnic_internals.h<br>
│   │   │   ├── rte_eth_softnic_link.c<br>
│   │   │   ├── rte_eth_softnic_mempool.c<br>
│   │   │   ├── rte_eth_softnic_meter.c<br>
│   │   │   ├── rte_eth_softnic_pipeline.c<br>
│   │   │   ├── rte_eth_softnic_swq.c<br>
│   │   │   ├── rte_eth_softnic_tap.c<br>
│   │   │   ├── rte_eth_softnic_thread.c<br>
│   │   │   ├── rte_eth_softnic_tm.c<br>
│   │   │   └── version.map<br>
│   │   ├── tap<br>

│   │   │   ├── rte_eth_tap.c<br>
│   │   │   ├── rte_eth_tap.h<br>
│   │   │   ├── tap_bpf_api.c<br>
│   │   │   ├── tap_bpf.h<br>
│   │   │   ├── tap_bpf_insns.h<br>
│   │   │   ├── tap_bpf_program.c<br>
│   │   │   ├── tap_flow.c<br>
│   │   │   ├── tap_flow.h<br>
│   │   │   ├── tap_intr.c<br>
│   │   │   ├── tap_log.h<br>
│   │   │   ├── tap_netlink.c<br>
│   │   │   ├── tap_netlink.h<br>
│   │   │   ├── tap_rss.h<br>
│   │   │   ├── tap_tcmsgs.c<br>
│   │   │   ├── tap_tcmsgs.h<br>
│   │   │   └── version.map<br>
│   │   ├── thunderx<br>
│   │   │   ├── base<br>

│   │   │   │   ├── nicvf_bsvf.c<br>
│   │   │   │   ├── nicvf_bsvf.h<br>
│   │   │   │   ├── nicvf_hw.c<br>
│   │   │   │   ├── nicvf_hw_defs.h<br>
│   │   │   │   ├── nicvf_hw.h<br>
│   │   │   │   ├── nicvf_mbox.c<br>
│   │   │   │   ├── nicvf_mbox.h<br>
│   │   │   │   └── nicvf_plat.h<br>

│   │   │   ├── nicvf_ethdev.c<br>
│   │   │   ├── nicvf_ethdev.h<br>
│   │   │   ├── nicvf_logs.h<br>
│   │   │   ├── nicvf_rxtx.c<br>
│   │   │   ├── nicvf_rxtx.h<br>
│   │   │   ├── nicvf_struct.h<br>
│   │   │   ├── nicvf_svf.c<br>
│   │   │   ├── nicvf_svf.h<br>
│   │   │   └── version.map<br>
│   │   ├── txgbe<br>
│   │   │   ├── base<br>

│   │   │   │   ├── txgbe_dcb.c<br>
│   │   │   │   ├── txgbe_dcb.h<br>
│   │   │   │   ├── txgbe_dcb_hw.c<br>
│   │   │   │   ├── txgbe_dcb_hw.h<br>
│   │   │   │   ├── txgbe_devids.h<br>
│   │   │   │   ├── txgbe_dummy.h<br>
│   │   │   │   ├── txgbe_eeprom.c<br>
│   │   │   │   ├── txgbe_eeprom.h<br>
│   │   │   │   ├── txgbe.h<br>
│   │   │   │   ├── txgbe_hw.c<br>
│   │   │   │   ├── txgbe_hw.h<br>
│   │   │   │   ├── txgbe_mbx.c<br>
│   │   │   │   ├── txgbe_mbx.h<br>
│   │   │   │   ├── txgbe_mng.c<br>
│   │   │   │   ├── txgbe_mng.h<br>
│   │   │   │   ├── txgbe_osdep.h<br>
│   │   │   │   ├── txgbe_phy.c<br>
│   │   │   │   ├── txgbe_phy.h<br>
│   │   │   │   ├── txgbe_regs.h<br>
│   │   │   │   ├── txgbe_status.h<br>
│   │   │   │   ├── txgbe_type.h<br>
│   │   │   │   ├── txgbe_vf.c<br>
│   │   │   │   └── txgbe_vf.h<br>

│   │   │   ├── rte_pmd_txgbe.h<br>
│   │   │   ├── txgbe_ethdev.c<br>
│   │   │   ├── txgbe_ethdev.h<br>
│   │   │   ├── txgbe_ethdev_vf.c<br>
│   │   │   ├── txgbe_fdir.c<br>
│   │   │   ├── txgbe_flow.c<br>
│   │   │   ├── txgbe_ipsec.c<br>
│   │   │   ├── txgbe_ipsec.h<br>
│   │   │   ├── txgbe_logs.h<br>
│   │   │   ├── txgbe_pf.c<br>
│   │   │   ├── txgbe_ptypes.c<br>
│   │   │   ├── txgbe_ptypes.h<br>
│   │   │   ├── txgbe_regs_group.h<br>
│   │   │   ├── txgbe_rxtx.c<br>
│   │   │   ├── txgbe_rxtx.h<br>
│   │   │   ├── txgbe_tm.c<br>
│   │   │   └── version.map<br>
│   │   ├── vdev_netvsc<br>

│   │   │   ├── vdev_netvsc.c<br>
│   │   │   └── version.map<br>
│   │   ├── vhost<br>

│   │   │   ├── rte_eth_vhost.c<br>
│   │   │   ├── rte_eth_vhost.h<br>
│   │   │   └── version.map<br>
│   │   ├── virtio<br>

│   │   │   ├── version.map<br>
│   │   │   ├── virtio.c<br>
│   │   │   ├── virtio_ethdev.c<br>
│   │   │   ├── virtio_ethdev.h<br>
│   │   │   ├── virtio.h<br>
│   │   │   ├── virtio_logs.h<br>
│   │   │   ├── virtio_pci.c<br>
│   │   │   ├── virtio_pci_ethdev.c<br>
│   │   │   ├── virtio_pci.h<br>
│   │   │   ├── virtio_ring.h<br>
│   │   │   ├── virtio_rxtx.c<br>
│   │   │   ├── virtio_rxtx.h<br>
│   │   │   ├── virtio_rxtx_packed_avx.h<br>
│   │   │   ├── virtio_rxtx_packed.c<br>
│   │   │   ├── virtio_rxtx_packed.h<br>
│   │   │   ├── virtio_rxtx_packed_neon.h<br>
│   │   │   ├── virtio_rxtx_simple_altivec.c<br>
│   │   │   ├── virtio_rxtx_simple.c<br>
│   │   │   ├── virtio_rxtx_simple.h<br>
│   │   │   ├── virtio_rxtx_simple_neon.c<br>
│   │   │   ├── virtio_rxtx_simple_sse.c<br>
│   │   │   ├── virtio_user<br>
│   │   │   │   ├── vhost.h<br>
│   │   │   │   ├── vhost_kernel.c<br>
│   │   │   │   ├── vhost_kernel_tap.c<br>
│   │   │   │   ├── vhost_kernel_tap.h<br>
│   │   │   │   ├── vhost_user.c<br>
│   │   │   │   ├── vhost_vdpa.c<br>
│   │   │   │   ├── virtio_user_dev.c<br>
│   │   │   │   └── virtio_user_dev.h<br>
│   │   │   ├── virtio_user_ethdev.c<br>
│   │   │   ├── virtqueue.c<br>
│   │   │   └── virtqueue.h<br>
│   │   └── vmxnet3<br>
│   │       ├── base<br>
│   │       │   ├── README<br>
│   │       │   ├── upt1_defs.h<br>
│   │       │   ├── vmware_pack_begin.h<br>
│   │       │   ├── vmware_pack_end.h<br>
│   │       │   ├── vmxnet3_defs.h<br>
│   │       │   └── vmxnet3_osdep.h<br>

│   │       ├── version.map<br>
│   │       ├── vmxnet3_ethdev.c<br>
│   │       ├── vmxnet3_ethdev.h<br>
│   │       ├── vmxnet3_logs.h<br>
│   │       ├── vmxnet3_ring.h<br>
│   │       └── vmxnet3_rxtx.c<br>
│   ├── raw<br>
│   │   ├── cnxk_bphy<br>
│   │   │   ├── cnxk_bphy.c<br>
│   │   │   ├── cnxk_bphy_cgx.c<br>
│   │   │   ├── cnxk_bphy_cgx.h<br>
│   │   │   ├── cnxk_bphy_cgx_test.c<br>
│   │   │   ├── cnxk_bphy_irq.c<br>
│   │   │   ├── cnxk_bphy_irq.h<br>

│   │   │   ├── rte_pmd_bphy.h<br>
│   │   │   └── version.map<br>
│   │   ├── cnxk_gpio<br>
│   │   │   ├── cnxk_gpio.c<br>
│   │   │   ├── cnxk_gpio.h<br>
│   │   │   ├── cnxk_gpio_irq.c<br>
│   │   │   ├── cnxk_gpio_selftest.c<br>

│   │   │   ├── rte_pmd_cnxk_gpio.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa2_cmdif<br>
│   │   │   ├── dpaa2_cmdif.c<br>
│   │   │   ├── dpaa2_cmdif_logs.h<br>

│   │   │   ├── rte_pmd_dpaa2_cmdif.h<br>
│   │   │   └── version.map<br>
│   │   ├── dpaa2_qdma<br>
│   │   │   ├── dpaa2_qdma.c<br>
│   │   │   ├── dpaa2_qdma.h<br>
│   │   │   ├── dpaa2_qdma_logs.h<br>

│   │   │   ├── rte_pmd_dpaa2_qdma.h<br>
│   │   │   └── version.map<br>
│   │   ├── ifpga<br>
│   │   │   ├── base<br>
│   │   │   │   ├── ifpga_api.c<br>
│   │   │   │   ├── ifpga_api.h<br>
│   │   │   │   ├── ifpga_compat.h<br>
│   │   │   │   ├── ifpga_defines.h<br>
│   │   │   │   ├── ifpga_enumerate.c<br>
│   │   │   │   ├── ifpga_enumerate.h<br>
│   │   │   │   ├── ifpga_feature_dev.c<br>
│   │   │   │   ├── ifpga_feature_dev.h<br>
│   │   │   │   ├── ifpga_fme.c<br>
│   │   │   │   ├── ifpga_fme_dperf.c<br>
│   │   │   │   ├── ifpga_fme_error.c<br>
│   │   │   │   ├── ifpga_fme_iperf.c<br>
│   │   │   │   ├── ifpga_fme_pr.c<br>
│   │   │   │   ├── ifpga_fme_rsu.c<br>
│   │   │   │   ├── ifpga_hw.h<br>
│   │   │   │   ├── ifpga_port.c<br>
│   │   │   │   ├── ifpga_port_error.c<br>
│   │   │   │   ├── ifpga_sec_mgr.c<br>
│   │   │   │   ├── ifpga_sec_mgr.h<br>

│   │   │   │   ├── opae_at24_eeprom.c<br>
│   │   │   │   ├── opae_at24_eeprom.h<br>
│   │   │   │   ├── opae_debug.c<br>
│   │   │   │   ├── opae_debug.h<br>
│   │   │   │   ├── opae_eth_group.c<br>
│   │   │   │   ├── opae_eth_group.h<br>
│   │   │   │   ├── opae_hw_api.c<br>
│   │   │   │   ├── opae_hw_api.h<br>
│   │   │   │   ├── opae_i2c.c<br>
│   │   │   │   ├── opae_i2c.h<br>
│   │   │   │   ├── opae_ifpga_hw_api.c<br>
│   │   │   │   ├── opae_ifpga_hw_api.h<br>
│   │   │   │   ├── opae_intel_max10.c<br>
│   │   │   │   ├── opae_intel_max10.h<br>
│   │   │   │   ├── opae_osdep.h<br>
│   │   │   │   ├── opae_spi.c<br>
│   │   │   │   ├── opae_spi.h<br>
│   │   │   │   ├── opae_spi_transaction.c<br>
│   │   │   │   ├── osdep_raw<br>
│   │   │   │   │   └── osdep_generic.h<br>
│   │   │   │   ├── osdep_rte<br>
│   │   │   │   │   └── osdep_generic.h<br>
│   │   │   │   └── README<br>
│   │   │   ├── ifpga_rawdev.c<br>
│   │   │   ├── ifpga_rawdev.h<br>

│   │   │   ├── rte_pmd_ifpga.c<br>
│   │   │   ├── rte_pmd_ifpga.h<br>
│   │   │   └── version.map<br>
│   │   ├── ioat<br>
│   │   │   ├── dpdk_idxd_cfg.py -> ../../dma/idxd/dpdk_idxd_cfg.py<br>
│   │   │   ├── idxd_bus.c<br>
│   │   │   ├── idxd_pci.c<br>
│   │   │   ├── ioat_common.c<br>
│   │   │   ├── ioat_private.h<br>
│   │   │   ├── ioat_rawdev.c<br>
│   │   │   ├── ioat_rawdev_test.c<br>
│   │   │   ├── ioat_spec.h<br>

│   │   │   ├── rte_idxd_rawdev_fns.h<br>
│   │   │   ├── rte_ioat_rawdev_fns.h<br>
│   │   │   ├── rte_ioat_rawdev.h<br>
│   │   │   └── version.map<br>

│   │   ├── ntb<br>

│   │   │   ├── ntb.c<br>
│   │   │   ├── ntb.h<br>
│   │   │   ├── ntb_hw_intel.c<br>
│   │   │   ├── ntb_hw_intel.h<br>
│   │   │   ├── rte_pmd_ntb.h<br>
│   │   │   └── version.map<br>
│   │   └── skeleton<br>

│   │       ├── skeleton_rawdev.c<br>
│   │       ├── skeleton_rawdev.h<br>
│   │       ├── skeleton_rawdev_test.c<br>
│   │       └── version.map<br>
│   ├── regex<br>
│   │   ├── cn9k<br>
│   │   │   ├── cn9k_regexdev.c<br>
│   │   │   ├── cn9k_regexdev_compiler.c<br>
│   │   │   ├── cn9k_regexdev_compiler.h<br>
│   │   │   ├── cn9k_regexdev.h<br>

│   │   │   └── version.map<br>

│   │   └── mlx5<br>

│   │       ├── mlx5_regex.c<br>
│   │       ├── mlx5_regex_control.c<br>
│   │       ├── mlx5_regex_devx.c<br>
│   │       ├── mlx5_regex_fastpath.c<br>
│   │       ├── mlx5_regex.h<br>
│   │       ├── mlx5_regex_utils.h<br>
│   │       ├── mlx5_rxp.c<br>
│   │       ├── mlx5_rxp.h<br>
│   │       └── version.map<br>
│   └── vdpa<br>
│       ├── ifc<br>
│       │   ├── base<br>
│       │   │   ├── ifcvf.c<br>
│       │   │   ├── ifcvf.h<br>
│       │   │   └── ifcvf_osdep.h<br>
│       │   ├── ifcvf_vdpa.c<br>

│       │   └── version.map<br>

│       ├── mlx5<br>

│       │   ├── mlx5_vdpa.c<br>
│       │   ├── mlx5_vdpa_event.c<br>
│       │   ├── mlx5_vdpa.h<br>
│       │   ├── mlx5_vdpa_lm.c<br>
│       │   ├── mlx5_vdpa_mem.c<br>
│       │   ├── mlx5_vdpa_steer.c<br>
│       │   ├── mlx5_vdpa_utils.h<br>
│       │   ├── mlx5_vdpa_virtq.c<br>
│       │   └── version.map<br>
│       └── sfc<br>

│           ├── sfc_vdpa.c<br>
│           ├── sfc_vdpa_debug.h<br>
│           ├── sfc_vdpa_filter.c<br>
│           ├── sfc_vdpa.h<br>
│           ├── sfc_vdpa_hw.c<br>
│           ├── sfc_vdpa_log.h<br>
│           ├── sfc_vdpa_mcdi.c<br>
│           ├── sfc_vdpa_ops.c<br>
│           ├── sfc_vdpa_ops.h<br>
│           └── version.map<br>
├── examples<br>
│   ├── bbdev_app<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── bond<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── Makefile<br>

│   ├── bpf<br>
│   │   ├── dummy.c<br>
│   │   ├── README<br>
│   │   ├── t1.c<br>
│   │   ├── t2.c<br>
│   │   └── t3.c<br>
│   ├── cmdline<br>
│   │   ├── commands.c<br>
│   │   ├── commands.h<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   │   ├── parse_obj_list.c<br>
│   │   └── parse_obj_list.h<br>
│   ├── distributor<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── dma<br>
│   │   ├── dmafwd.c<br>
│   │   ├── Makefile<br>

│   ├── ethtool<br>
│   │   ├── ethtool-app<br>
│   │   │   ├── ethapp.c<br>
│   │   │   ├── ethapp.h<br>
│   │   │   ├── main.c<br>
│   │   │   └── Makefile<br>
│   │   ├── lib<br>
│   │   │   ├── Makefile<br>
│   │   │   ├── rte_ethtool.c<br>
│   │   │   └── rte_ethtool.h<br>
│   │   ├── Makefile<br>

│   ├── eventdev_pipeline<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   │   ├── pipeline_common.h<br>
│   │   ├── pipeline_worker_generic.c<br>
│   │   └── pipeline_worker_tx.c<br>
│   ├── fips_validation<br>
│   │   ├── fips_dev_self_test.c<br>
│   │   ├── fips_dev_self_test.h<br>
│   │   ├── fips_validation_aes.c<br>
│   │   ├── fips_validation.c<br>
│   │   ├── fips_validation_ccm.c<br>
│   │   ├── fips_validation_cmac.c<br>
│   │   ├── fips_validation_gcm.c<br>
│   │   ├── fips_validation.h<br>
│   │   ├── fips_validation_hmac.c<br>
│   │   ├── fips_validation_sha.c<br>
│   │   ├── fips_validation_tdes.c<br>
│   │   ├── fips_validation_xts.c<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── flow_classify<br>
│   │   ├── flow_classify.c<br>
│   │   ├── ipv4_rules_file.txt<br>
│   │   ├── Makefile<br>

│   ├── flow_filtering<br>
│   │   ├── flow_blocks.c<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── helloworld<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── ip_fragmentation<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── ip_pipeline<br>
│   │   ├── action.c<br>
│   │   ├── action.h<br>
│   │   ├── cli.c<br>
│   │   ├── cli.h<br>
│   │   ├── common.h<br>
│   │   ├── conn.c<br>
│   │   ├── conn.h<br>
│   │   ├── cryptodev.c<br>
│   │   ├── cryptodev.h<br>
│   │   ├── examples<br>
│   │   │   ├── firewall.cli<br>
│   │   │   ├── flow.cli<br>
│   │   │   ├── flow_crypto.cli<br>
│   │   │   ├── kni.cli<br>
│   │   │   ├── l2fwd.cli<br>
│   │   │   ├── route.cli<br>
│   │   │   ├── route_ecmp.cli<br>
│   │   │   ├── rss.cli<br>
│   │   │   └── tap.cli<br>
│   │   ├── kni.c<br>
│   │   ├── kni.h<br>
│   │   ├── link.c<br>
│   │   ├── link.h<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>
│   │   ├── mempool.c<br>
│   │   ├── mempool.h<br>

│   │   ├── parser.c<br>
│   │   ├── parser.h<br>
│   │   ├── pipeline.c<br>
│   │   ├── pipeline.h<br>
│   │   ├── swq.c<br>
│   │   ├── swq.h<br>
│   │   ├── tap.c<br>
│   │   ├── tap.h<br>
│   │   ├── thread.c<br>
│   │   ├── thread.h<br>
│   │   ├── tmgr.c<br>
│   │   └── tmgr.h<br>
│   ├── ip_reassembly<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── ipsec-secgw<br>
│   │   ├── ep0.cfg<br>
│   │   ├── ep1.cfg<br>
│   │   ├── esp.c<br>
│   │   ├── esp.h<br>
│   │   ├── event_helper.c<br>
│   │   ├── event_helper.h<br>
│   │   ├── flow.c<br>
│   │   ├── flow.h<br>
│   │   ├── ipip.h<br>
│   │   ├── ipsec.c<br>
│   │   ├── ipsec.h<br>
│   │   ├── ipsec_process.c<br>
│   │   ├── ipsec-secgw.c<br>
│   │   ├── ipsec-secgw.h<br>
│   │   ├── ipsec_worker.c<br>
│   │   ├── ipsec_worker.h<br>
│   │   ├── Makefile<br>

│   │   ├── parser.c<br>
│   │   ├── parser.h<br>
│   │   ├── rt.c<br>
│   │   ├── sa.c<br>
│   │   ├── sad.c<br>
│   │   ├── sad.h<br>
│   │   ├── sp4.c<br>
│   │   ├── sp6.c<br>
│   │   └── test<br>
│   │       ├── bypass_defs.sh<br>
│   │       ├── common_defs_secgw.sh<br>
│   │       ├── common_defs.sh<br>
│   │       ├── data_rxtx.sh<br>
│   │       ├── linux_test.sh<br>
│   │       ├── load_env.sh<br>
│   │       ├── pkttest.py<br>
│   │       ├── pkttest.sh<br>
│   │       ├── run_test.sh<br>
│   │       ├── trs_3descbc_sha1_common_defs.sh<br>
│   │       ├── trs_3descbc_sha1_defs.sh<br>
│   │       ├── trs_aescbc_sha1_common_defs.sh<br>
│   │       ├── trs_aescbc_sha1_defs.sh<br>
│   │       ├── trs_aesctr_sha1_common_defs.sh<br>
│   │       ├── trs_aesctr_sha1_defs.sh<br>
│   │       ├── trs_aesgcm_common_defs.sh<br>
│   │       ├── trs_aesgcm_defs.sh<br>
│   │       ├── trs_ipv6opts.py<br>
│   │       ├── tun_3descbc_sha1_common_defs.sh<br>
│   │       ├── tun_3descbc_sha1_defs.sh<br>
│   │       ├── tun_aescbc_sha1_common_defs.sh<br>
│   │       ├── tun_aescbc_sha1_defs.sh<br>
│   │       ├── tun_aesctr_sha1_common_defs.sh<br>
│   │       ├── tun_aesctr_sha1_defs.sh<br>
│   │       ├── tun_aesgcm_common_defs.sh<br>
│   │       ├── tun_aesgcm_defs.sh<br>
│   │       └── tun_null_header_reconstruct.py<br>
│   ├── ipv4_multicast<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── kni<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd-cat<br>
│   │   ├── cat.c<br>
│   │   ├── cat.h<br>
│   │   ├── l2fwd-cat.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd-crypto<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd-event<br>
│   │   ├── l2fwd_common.c<br>
│   │   ├── l2fwd_common.h<br>
│   │   ├── l2fwd_event.c<br>
│   │   ├── l2fwd_event_generic.c<br>
│   │   ├── l2fwd_event.h<br>
│   │   ├── l2fwd_event_internal_port.c<br>
│   │   ├── l2fwd_poll.c<br>
│   │   ├── l2fwd_poll.h<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd-jobstats<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l2fwd-keepalive<br>
│   │   ├── ka-agent<br>
│   │   │   ├── main.c<br>
│   │   │   └── Makefile<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   │   ├── shm.c<br>
│   │   └── shm.h<br>
│   ├── l3fwd<br>
│   │   ├── em_default_v4.cfg<br>
│   │   ├── em_default_v6.cfg<br>
│   │   ├── em_route_parse.c<br>
│   │   ├── l3fwd_altivec.h<br>
│   │   ├── l3fwd_common.h<br>
│   │   ├── l3fwd_em.c<br>
│   │   ├── l3fwd_em.h<br>
│   │   ├── l3fwd_em_hlm.h<br>
│   │   ├── l3fwd_em_hlm_neon.h<br>
│   │   ├── l3fwd_em_hlm_sse.h<br>
│   │   ├── l3fwd_em_sequential.h<br>
│   │   ├── l3fwd_event.c<br>
│   │   ├── l3fwd_event_generic.c<br>
│   │   ├── l3fwd_event.h<br>
│   │   ├── l3fwd_event_internal_port.c<br>
│   │   ├── l3fwd_fib.c<br>
│   │   ├── l3fwd.h<br>
│   │   ├── l3fwd_lpm_altivec.h<br>
│   │   ├── l3fwd_lpm.c<br>
│   │   ├── l3fwd_lpm.h<br>
│   │   ├── l3fwd_lpm_neon.h<br>
│   │   ├── l3fwd_lpm_sse.h<br>
│   │   ├── l3fwd_neon.h<br>
│   │   ├── l3fwd_route.h<br>
│   │   ├── l3fwd_sse.h<br>
│   │   ├── lpm_default_v4.cfg<br>
│   │   ├── lpm_default_v6.cfg<br>
│   │   ├── lpm_route_parse.c<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l3fwd-acl<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l3fwd-graph<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── l3fwd-power<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── Makefile<br>

│   │   ├── perf_core.c<br>
│   │   └── perf_core.h<br>
│   ├── link_status_interrupt<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>


│   ├── multi_process<br>
│   │   ├── client_server_mp<br>
│   │   │   ├── Makefile<br>
│   │   │   ├── mp_client<br>
│   │   │   │   ├── client.c<br>
│   │   │   │   ├── Makefile<br>

│   │   │   ├── mp_server<br>
│   │   │   │   ├── args.c<br>
│   │   │   │   ├── args.h<br>
│   │   │   │   ├── init.c<br>
│   │   │   │   ├── init.h<br>
│   │   │   │   ├── main.c<br>
│   │   │   │   ├── Makefile<br>

│   │   │   └── shared<br>
│   │   │       └── common.h<br>
│   │   ├── hotplug_mp<br>
│   │   │   ├── commands.c<br>
│   │   │   ├── commands.h<br>
│   │   │   ├── main.c<br>
│   │   │   ├── Makefile<br>

│   │   ├── Makefile<br>
│   │   ├── simple_mp<br>
│   │   │   ├── main.c<br>
│   │   │   ├── Makefile<br>

│   │   │   ├── mp_commands.c<br>
│   │   │   └── mp_commands.h<br>
│   │   └── symmetric_mp<br>
│   │       ├── main.c<br>
│   │       ├── Makefile<br>

│   ├── ntb<br>
│   │   ├── Makefile<br>

│   │   └── ntb_fwd.c<br>
│   ├── packet_ordering<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── pipeline<br>
│   │   ├── cli.c<br>
│   │   ├── cli.h<br>
│   │   ├── conn.c<br>
│   │   ├── conn.h<br>
│   │   ├── examples<br>
│   │   │   ├── fib.cli<br>
│   │   │   ├── fib_nexthop_group_table.txt<br>
│   │   │   ├── fib_nexthop_table.txt<br>
│   │   │   ├── fib_routing_table.txt<br>
│   │   │   ├── fib.spec<br>
│   │   │   ├── l2fwd.cli<br>
│   │   │   ├── l2fwd_macswp.cli<br>
│   │   │   ├── l2fwd_macswp_pcap.cli<br>
│   │   │   ├── l2fwd_macswp.spec<br>
│   │   │   ├── l2fwd_pcap.cli<br>
│   │   │   ├── l2fwd.spec<br>
│   │   │   ├── learner.cli<br>
│   │   │   ├── learner.spec<br>
│   │   │   ├── meter.cli<br>
│   │   │   ├── meter.spec<br>
│   │   │   ├── packet.txt<br>
│   │   │   ├── registers.cli<br>
│   │   │   ├── registers.spec<br>
│   │   │   ├── selector.cli<br>
│   │   │   ├── selector.spec<br>
│   │   │   ├── selector.txt<br>
│   │   │   ├── varbit.cli<br>
│   │   │   ├── varbit.spec<br>
│   │   │   ├── vxlan.cli<br>
│   │   │   ├── vxlan_pcap.cli<br>
│   │   │   ├── vxlan.spec<br>
│   │   │   ├── vxlan_table.py<br>
│   │   │   └── vxlan_table.txt<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   │   ├── obj.c<br>
│   │   ├── obj.h<br>
│   │   ├── thread.c<br>
│   │   └── thread.h<br>
│   ├── ptpclient<br>
│   │   ├── Makefile<br>

│   │   └── ptpclient.c<br>
│   ├── qos_meter<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── Makefile<br>

│   │   ├── rte_policer.c<br>
│   │   └── rte_policer.h<br>
│   ├── qos_sched<br>
│   │   ├── app_thread.c<br>
│   │   ├── args.c<br>
│   │   ├── cfg_file.c<br>
│   │   ├── cfg_file.h<br>
│   │   ├── cmdline.c<br>
│   │   ├── init.c<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── Makefile<br>

│   │   ├── profile.cfg<br>
│   │   ├── profile_ov.cfg<br>
│   │   └── stats.c<br>
│   ├── rxtx_callbacks<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── server_node_efd<br>
│   │   ├── Makefile<br>
│   │   ├── node<br>
│   │   │   ├── Makefile<br>

│   │   │   └── node.c<br>
│   │   ├── server<br>
│   │   │   ├── args.c<br>
│   │   │   ├── args.h<br>
│   │   │   ├── init.c<br>
│   │   │   ├── init.h<br>
│   │   │   ├── main.c<br>
│   │   │   ├── Makefile<br>

│   │   └── shared<br>
│   │       └── common.h<br>
│   ├── service_cores<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── skeleton<br>
│   │   ├── basicfwd.c<br>
│   │   ├── Makefile<br>

│   ├── timer<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── vdpa<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── vhost<br>
│   │   ├── main.c<br>
│   │   ├── main.h<br>
│   │   ├── Makefile<br>

│   │   └── virtio_net.c<br>
│   ├── vhost_blk<br>
│   │   ├── blk.c<br>
│   │   ├── blk_spec.h<br>
│   │   ├── Makefile<br>

│   │   ├── vhost_blk.c<br>
│   │   ├── vhost_blk_compat.c<br>
│   │   └── vhost_blk.h<br>
│   ├── vhost_crypto<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── vmdq<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   ├── vmdq_dcb<br>
│   │   ├── main.c<br>
│   │   ├── Makefile<br>

│   └── vm_power_manager<br>
│       ├── channel_manager.c<br>
│       ├── channel_manager.h<br>
│       ├── channel_monitor.c<br>
│       ├── channel_monitor.h<br>
│       ├── guest_cli<br>
│       │   ├── main.c<br>
│       │   ├── Makefile<br>

│       │   ├── parse.c<br>
│       │   ├── parse.h<br>
│       │   ├── vm_power_cli_guest.c<br>
│       │   └── vm_power_cli_guest.h<br>
│       ├── main.c<br>
│       ├── Makefile<br>

│       ├── oob_monitor.h<br>
│       ├── oob_monitor_nop.c<br>
│       ├── oob_monitor_x86.c<br>
│       ├── parse.c<br>
│       ├── parse.h<br>
│       ├── power_manager.c<br>
│       ├── power_manager.h<br>
│       ├── vm_power_cli.c<br>
│       └── vm_power_cli.h<br>
├── kernel<br>
│   ├── freebsd<br>
│   │   ├── BSDmakefile.meson<br>
│   │   ├── contigmem<br>
│   │   │   ├── BSDmakefile<br>
│   │   │   ├── contigmem.c<br>


│   │   └── nic_uio<br>
│   │       ├── BSDmakefile<br>

│   │       └── nic_uio.c<br>
│   ├── linux<br>
│   │   ├── kni<br>
│   │   │   ├── compat.h<br>
│   │   │   ├── Kbuild<br>
│   │   │   ├── kni_dev.h<br>
│   │   │   ├── kni_fifo.h<br>
│   │   │   ├── kni_misc.c<br>
│   │   │   ├── kni_net.c<br>



├── lib<br>
│   ├── acl<br>
│   │   ├── acl_bld.c<br>
│   │   ├── acl_gen.c<br>
│   │   ├── acl.h<br>
│   │   ├── acl_run_altivec.c<br>
│   │   ├── acl_run_altivec.h<br>
│   │   ├── acl_run_avx2.c<br>
│   │   ├── acl_run_avx2.h<br>
│   │   ├── acl_run_avx512.c<br>
│   │   ├── acl_run_avx512_common.h<br>
│   │   ├── acl_run_avx512x16.h<br>
│   │   ├── acl_run_avx512x8.h<br>
│   │   ├── acl_run.h<br>
│   │   ├── acl_run_neon.c<br>
│   │   ├── acl_run_neon.h<br>
│   │   ├── acl_run_scalar.c<br>
│   │   ├── acl_run_sse.c<br>
│   │   ├── acl_run_sse.h<br>
│   │   ├── acl_vect.h<br>

│   │   ├── rte_acl.c<br>
│   │   ├── rte_acl.h<br>
│   │   ├── rte_acl_osdep.h<br>
│   │   ├── tb_mem.c<br>
│   │   ├── tb_mem.h<br>
│   │   └── version.map<br>
│   ├── bbdev<br>

│   │   ├── rte_bbdev.c<br>
│   │   ├── rte_bbdev.h<br>
│   │   ├── rte_bbdev_op.h<br>
│   │   ├── rte_bbdev_pmd.h<br>
│   │   └── version.map<br>
│   ├── bitratestats<br>

│   │   ├── rte_bitrate.c<br>
│   │   ├── rte_bitrate.h<br>
│   │   └── version.map<br>
│   ├── bpf<br>
│   │   ├── bpf.c<br>
│   │   ├── bpf_convert.c<br>
│   │   ├── bpf_def.h<br>
│   │   ├── bpf_dump.c<br>
│   │   ├── bpf_exec.c<br>
│   │   ├── bpf_impl.h<br>
│   │   ├── bpf_jit_arm64.c<br>
│   │   ├── bpf_jit_x86.c<br>
│   │   ├── bpf_load.c<br>
│   │   ├── bpf_load_elf.c<br>
│   │   ├── bpf_pkt.c<br>
│   │   ├── bpf_stub.c<br>
│   │   ├── bpf_validate.c<br>

│   │   ├── rte_bpf_ethdev.h<br>
│   │   ├── rte_bpf.h<br>
│   │   └── version.map<br>
│   ├── cfgfile<br>

│   │   ├── rte_cfgfile.c<br>
│   │   ├── rte_cfgfile.h<br>
│   │   └── version.map<br>
│   ├── cmdline<br>
│   │   ├── cmdline.c<br>
│   │   ├── cmdline_cirbuf.c<br>
│   │   ├── cmdline_cirbuf.h<br>
│   │   ├── cmdline.h<br>
│   │   ├── cmdline_os_unix.c<br>
│   │   ├── cmdline_os_windows.c<br>
│   │   ├── cmdline_parse.c<br>
│   │   ├── cmdline_parse_etheraddr.c<br>
│   │   ├── cmdline_parse_etheraddr.h<br>
│   │   ├── cmdline_parse.h<br>
│   │   ├── cmdline_parse_ipaddr.c<br>
│   │   ├── cmdline_parse_ipaddr.h<br>
│   │   ├── cmdline_parse_num.c<br>
│   │   ├── cmdline_parse_num.h<br>
│   │   ├── cmdline_parse_portlist.c<br>
│   │   ├── cmdline_parse_portlist.h<br>
│   │   ├── cmdline_parse_string.c<br>
│   │   ├── cmdline_parse_string.h<br>
│   │   ├── cmdline_private.h<br>
│   │   ├── cmdline_rdline.c<br>
│   │   ├── cmdline_rdline.h<br>
│   │   ├── cmdline_socket.c<br>
│   │   ├── cmdline_socket.h<br>
│   │   ├── cmdline_vt100.c<br>
│   │   ├── cmdline_vt100.h<br>

│   │   └── version.map<br>
│   ├── compressdev<br>

│   │   ├── rte_comp.c<br>
│   │   ├── rte_comp.h<br>
│   │   ├── rte_compressdev.c<br>
│   │   ├── rte_compressdev.h<br>
│   │   ├── rte_compressdev_internal.h<br>
│   │   ├── rte_compressdev_pmd.c<br>
│   │   ├── rte_compressdev_pmd.h<br>
│   │   └── version.map<br>
│   ├── cryptodev<br>
│   │   ├── cryptodev_pmd.c<br>
│   │   ├── cryptodev_pmd.h<br>
│   │   ├── cryptodev_trace_points.c<br>

│   │   ├── rte_crypto_asym.h<br>
│   │   ├── rte_cryptodev.c<br>
│   │   ├── rte_cryptodev_core.h<br>
│   │   ├── rte_cryptodev.h<br>
│   │   ├── rte_cryptodev_trace_fp.h<br>
│   │   ├── rte_cryptodev_trace.h<br>
│   │   ├── rte_crypto.h<br>
│   │   ├── rte_crypto_sym.h<br>
│   │   └── version.map<br>
│   ├── distributor<br>
│   │   ├── distributor_private.h<br>

│   │   ├── rte_distributor.c<br>
│   │   ├── rte_distributor.h<br>
│   │   ├── rte_distributor_match_generic.c<br>
│   │   ├── rte_distributor_match_sse.c<br>
│   │   ├── rte_distributor_single.c<br>
│   │   ├── rte_distributor_single.h<br>
│   │   └── version.map<br>
│   ├── dmadev<br>

│   │   ├── rte_dmadev.c<br>
│   │   ├── rte_dmadev_core.h<br>
│   │   ├── rte_dmadev.h<br>
│   │   ├── rte_dmadev_pmd.h<br>
│   │   └── version.map<br>
│   ├── eal<br>
│   │   ├── arm<br>
│   │   │   ├── include<br>

│   │   │   │   ├── rte_atomic_32.h<br>
│   │   │   │   ├── rte_atomic_64.h<br>
│   │   │   │   ├── rte_atomic.h<br>
│   │   │   │   ├── rte_byteorder.h<br>
│   │   │   │   ├── rte_cpuflags_32.h<br>
│   │   │   │   ├── rte_cpuflags_64.h<br>
│   │   │   │   ├── rte_cpuflags.h<br>
│   │   │   │   ├── rte_cycles_32.h<br>
│   │   │   │   ├── rte_cycles_64.h<br>
│   │   │   │   ├── rte_cycles.h<br>
│   │   │   │   ├── rte_io_64.h<br>
│   │   │   │   ├── rte_io.h<br>
│   │   │   │   ├── rte_mcslock.h<br>
│   │   │   │   ├── rte_memcpy_32.h<br>
│   │   │   │   ├── rte_memcpy_64.h<br>
│   │   │   │   ├── rte_memcpy.h<br>
│   │   │   │   ├── rte_pause_32.h<br>
│   │   │   │   ├── rte_pause_64.h<br>
│   │   │   │   ├── rte_pause.h<br>
│   │   │   │   ├── rte_pflock.h<br>
│   │   │   │   ├── rte_power_intrinsics.h<br>
│   │   │   │   ├── rte_prefetch_32.h<br>
│   │   │   │   ├── rte_prefetch_64.h<br>
│   │   │   │   ├── rte_prefetch.h<br>
│   │   │   │   ├── rte_rwlock.h<br>
│   │   │   │   ├── rte_spinlock.h<br>
│   │   │   │   ├── rte_ticketlock.h<br>
│   │   │   │   └── rte_vect.h<br>

│   │   │   ├── rte_cpuflags.c<br>
│   │   │   ├── rte_cycles.c<br>
│   │   │   ├── rte_hypervisor.c<br>
│   │   │   └── rte_power_intrinsics.c<br>
│   │   ├── common<br>
│   │   │   ├── eal_common_bus.c<br>
│   │   │   ├── eal_common_class.c<br>
│   │   │   ├── eal_common_config.c<br>
│   │   │   ├── eal_common_cpuflags.c<br>
│   │   │   ├── eal_common_debug.c<br>
│   │   │   ├── eal_common_devargs.c<br>
│   │   │   ├── eal_common_dev.c<br>
│   │   │   ├── eal_common_dynmem.c<br>
│   │   │   ├── eal_common_errno.c<br>
│   │   │   ├── eal_common_fbarray.c<br>
│   │   │   ├── eal_common_hexdump.c<br>
│   │   │   ├── eal_common_hypervisor.c<br>
│   │   │   ├── eal_common_interrupts.c<br>
│   │   │   ├── eal_common_launch.c<br>
│   │   │   ├── eal_common_lcore.c<br>
│   │   │   ├── eal_common_log.c<br>
│   │   │   ├── eal_common_mcfg.c<br>
│   │   │   ├── eal_common_memalloc.c<br>
│   │   │   ├── eal_common_memory.c<br>
│   │   │   ├── eal_common_memzone.c<br>
│   │   │   ├── eal_common_options.c<br>
│   │   │   ├── eal_common_proc.c<br>
│   │   │   ├── eal_common_string_fns.c<br>
│   │   │   ├── eal_common_tailqs.c<br>
│   │   │   ├── eal_common_thread.c<br>
│   │   │   ├── eal_common_timer.c<br>
│   │   │   ├── eal_common_trace.c<br>
│   │   │   ├── eal_common_trace_ctf.c<br>
│   │   │   ├── eal_common_trace_points.c<br>
│   │   │   ├── eal_common_trace_utils.c<br>
│   │   │   ├── eal_common_uuid.c<br>
│   │   │   ├── eal_filesystem.h<br>
│   │   │   ├── eal_firmware.h<br>
│   │   │   ├── eal_hugepages.h<br>
│   │   │   ├── eal_internal_cfg.h<br>
│   │   │   ├── eal_interrupts.h<br>
│   │   │   ├── eal_log.h<br>
│   │   │   ├── eal_memalloc.h<br>
│   │   │   ├── eal_memcfg.h<br>
│   │   │   ├── eal_options.h<br>
│   │   │   ├── eal_private.h<br>
│   │   │   ├── eal_thread.h<br>
│   │   │   ├── eal_trace.h<br>
│   │   │   ├── hotplug_mp.c<br>
│   │   │   ├── hotplug_mp.h<br>
│   │   │   ├── malloc_elem.c<br>
│   │   │   ├── malloc_elem.h<br>
│   │   │   ├── malloc_heap.c<br>
│   │   │   ├── malloc_heap.h<br>
│   │   │   ├── malloc_mp.c<br>
│   │   │   ├── malloc_mp.h<br>

│   │   │   ├── rte_keepalive.c<br>
│   │   │   ├── rte_malloc.c<br>
│   │   │   ├── rte_random.c<br>
│   │   │   ├── rte_reciprocal.c<br>
│   │   │   ├── rte_service.c<br>
│   │   │   └── rte_version.c<br>
│   │   ├── freebsd<br>
│   │   │   ├── eal_alarm.c<br>
│   │   │   ├── eal_alarm_private.h<br>
│   │   │   ├── eal.c<br>
│   │   │   ├── eal_cpuflags.c<br>
│   │   │   ├── eal_debug.c<br>
│   │   │   ├── eal_dev.c<br>
│   │   │   ├── eal_hugepage_info.c<br>
│   │   │   ├── eal_interrupts.c<br>
│   │   │   ├── eal_lcore.c<br>
│   │   │   ├── eal_memalloc.c<br>
│   │   │   ├── eal_memory.c<br>
│   │   │   ├── eal_thread.c<br>
│   │   │   ├── eal_timer.c<br>
│   │   │   ├── include<br>

│   │   │   │   ├── rte_os.h<br>
│   │   │   │   └── rte_os_shim.h<br>

│   │   ├── include<br>
│   │   │   ├── generic<br>
│   │   │   │   ├── rte_atomic.h<br>
│   │   │   │   ├── rte_byteorder.h<br>
│   │   │   │   ├── rte_cpuflags.h<br>
│   │   │   │   ├── rte_cycles.h<br>
│   │   │   │   ├── rte_io.h<br>
│   │   │   │   ├── rte_mcslock.h<br>
│   │   │   │   ├── rte_memcpy.h<br>
│   │   │   │   ├── rte_pause.h<br>
│   │   │   │   ├── rte_pflock.h<br>
│   │   │   │   ├── rte_power_intrinsics.h<br>
│   │   │   │   ├── rte_prefetch.h<br>
│   │   │   │   ├── rte_rwlock.h<br>
│   │   │   │   ├── rte_spinlock.h<br>
│   │   │   │   ├── rte_ticketlock.h<br>
│   │   │   │   └── rte_vect.h<br>

│   │   │   ├── rte_alarm.h<br>
│   │   │   ├── rte_bitmap.h<br>
│   │   │   ├── rte_bitops.h<br>
│   │   │   ├── rte_branch_prediction.h<br>
│   │   │   ├── rte_bus.h<br>
│   │   │   ├── rte_class.h<br>
│   │   │   ├── rte_common.h<br>
│   │   │   ├── rte_compat.h<br>
│   │   │   ├── rte_debug.h<br>
│   │   │   ├── rte_devargs.h<br>
│   │   │   ├── rte_dev.h<br>
│   │   │   ├── rte_eal.h<br>
│   │   │   ├── rte_eal_memconfig.h<br>
│   │   │   ├── rte_eal_paging.h<br>
│   │   │   ├── rte_eal_trace.h<br>
│   │   │   ├── rte_epoll.h<br>
│   │   │   ├── rte_errno.h<br>
│   │   │   ├── rte_fbarray.h<br>
│   │   │   ├── rte_function_versioning.h<br>
│   │   │   ├── rte_hexdump.h<br>
│   │   │   ├── rte_hypervisor.h<br>
│   │   │   ├── rte_interrupts.h<br>
│   │   │   ├── rte_keepalive.h<br>
│   │   │   ├── rte_launch.h<br>
│   │   │   ├── rte_lcore.h<br>
│   │   │   ├── rte_log.h<br>
│   │   │   ├── rte_malloc.h<br>
│   │   │   ├── rte_memory.h<br>
│   │   │   ├── rte_memzone.h<br>
│   │   │   ├── rte_pci_dev_feature_defs.h<br>
│   │   │   ├── rte_pci_dev_features.h<br>
│   │   │   ├── rte_per_lcore.h<br>
│   │   │   ├── rte_random.h<br>
│   │   │   ├── rte_reciprocal.h<br>
│   │   │   ├── rte_service_component.h<br>
│   │   │   ├── rte_service.h<br>
│   │   │   ├── rte_string_fns.h<br>
│   │   │   ├── rte_tailq.h<br>
│   │   │   ├── rte_test.h<br>
│   │   │   ├── rte_thread.h<br>
│   │   │   ├── rte_time.h<br>
│   │   │   ├── rte_trace.h<br>
│   │   │   ├── rte_trace_point.h<br>
│   │   │   ├── rte_trace_point_register.h<br>
│   │   │   ├── rte_uuid.h<br>
│   │   │   ├── rte_version.h<br>
│   │   │   └── rte_vfio.h<br>
│   │   ├── linux<br>
│   │   │   ├── eal_alarm.c<br>
│   │   │   ├── eal.c<br>
│   │   │   ├── eal_cpuflags.c<br>
│   │   │   ├── eal_debug.c<br>
│   │   │   ├── eal_dev.c<br>
│   │   │   ├── eal_hugepage_info.c<br>
│   │   │   ├── eal_interrupts.c<br>
│   │   │   ├── eal_lcore.c<br>
│   │   │   ├── eal_log.c<br>
│   │   │   ├── eal_memalloc.c<br>
│   │   │   ├── eal_memory.c<br>
│   │   │   ├── eal_thread.c<br>
│   │   │   ├── eal_timer.c<br>
│   │   │   ├── eal_vfio.c<br>
│   │   │   ├── eal_vfio.h<br>
│   │   │   ├── eal_vfio_mp_sync.c<br>
│   │   │   ├── include<br>

│   │   │   │   ├── rte_os.h<br>
│   │   │   │   └── rte_os_shim.h<br>


│   │   ├── ppc<br>
│   │   │   ├── include<br>

│   │   │   │   ├── rte_altivec.h<br>
│   │   │   │   ├── rte_atomic.h<br>
│   │   │   │   ├── rte_byteorder.h<br>
│   │   │   │   ├── rte_cpuflags.h<br>
│   │   │   │   ├── rte_cycles.h<br>
│   │   │   │   ├── rte_io.h<br>
│   │   │   │   ├── rte_mcslock.h<br>
│   │   │   │   ├── rte_memcpy.h<br>
│   │   │   │   ├── rte_pause.h<br>
│   │   │   │   ├── rte_pflock.h<br>
│   │   │   │   ├── rte_power_intrinsics.h<br>
│   │   │   │   ├── rte_prefetch.h<br>
│   │   │   │   ├── rte_rwlock.h<br>
│   │   │   │   ├── rte_spinlock.h<br>
│   │   │   │   ├── rte_ticketlock.h<br>
│   │   │   │   └── rte_vect.h<br>

│   │   │   ├── rte_cpuflags.c<br>
│   │   │   ├── rte_cycles.c<br>
│   │   │   ├── rte_hypervisor.c<br>
│   │   │   └── rte_power_intrinsics.c<br>
│   │   ├── unix<br>
│   │   │   ├── eal_file.c<br>
│   │   │   ├── eal_filesystem.c<br>
│   │   │   ├── eal_firmware.c<br>
│   │   │   ├── eal_unix_memory.c<br>
│   │   │   ├── eal_unix_timer.c<br>

│   │   │   └── rte_thread.c<br>
│   │   ├── version.map<br>
│   │   ├── windows<br>
│   │   │   ├── eal_alarm.c<br>
│   │   │   ├── eal.c<br>
│   │   │   ├── eal_debug.c<br>
│   │   │   ├── eal_dev.c<br>
│   │   │   ├── eal_file.c<br>
│   │   │   ├── eal_hugepages.c<br>
│   │   │   ├── eal_interrupts.c<br>
│   │   │   ├── eal_lcore.c<br>
│   │   │   ├── eal_log.c<br>
│   │   │   ├── eal_memalloc.c<br>
│   │   │   ├── eal_memory.c<br>
│   │   │   ├── eal_mp.c<br>
│   │   │   ├── eal_thread.c<br>
│   │   │   ├── eal_timer.c<br>
│   │   │   ├── eal_windows.h<br>
│   │   │   ├── fnmatch.c<br>
│   │   │   ├── getopt.c<br>
│   │   │   ├── include<br>
│   │   │   │   ├── dirent.h<br>
│   │   │   │   ├── fnmatch.h<br>
│   │   │   │   ├── getopt.h<br>

│   │   │   │   ├── pthread.h<br>
│   │   │   │   ├── regex.h<br>
│   │   │   │   ├── rte_os.h<br>
│   │   │   │   ├── rte_os_shim.h<br>
│   │   │   │   ├── rte_virt2phys.h<br>
│   │   │   │   ├── rte_windows.h<br>
│   │   │   │   ├── sched.h<br>
│   │   │   │   ├── sys<br>
│   │   │   │   │   └── queue.h<br>
│   │   │   │   └── unistd.h<br>

│   │   │   └── rte_thread.c<br>
│   │   └── x86<br>
│   │       ├── include<br>

│   │       │   ├── rte_atomic_32.h<br>
│   │       │   ├── rte_atomic_64.h<br>
│   │       │   ├── rte_atomic.h<br>
│   │       │   ├── rte_byteorder_32.h<br>
│   │       │   ├── rte_byteorder_64.h<br>
│   │       │   ├── rte_byteorder.h<br>
│   │       │   ├── rte_cpuflags.h<br>
│   │       │   ├── rte_cycles.h<br>
│   │       │   ├── rte_io.h<br>
│   │       │   ├── rte_mcslock.h<br>
│   │       │   ├── rte_memcpy.h<br>
│   │       │   ├── rte_pause.h<br>
│   │       │   ├── rte_pflock.h<br>
│   │       │   ├── rte_power_intrinsics.h<br>
│   │       │   ├── rte_prefetch.h<br>
│   │       │   ├── rte_rtm.h<br>
│   │       │   ├── rte_rwlock.h<br>
│   │       │   ├── rte_spinlock.h<br>
│   │       │   ├── rte_ticketlock.h<br>
│   │       │   └── rte_vect.h<br>

│   │       ├── rte_cpuflags.c<br>
│   │       ├── rte_cpuid.h<br>
│   │       ├── rte_cycles.c<br>
│   │       ├── rte_hypervisor.c<br>
│   │       ├── rte_power_intrinsics.c<br>
│   │       └── rte_spinlock.c<br>
│   ├── efd<br>

│   │   ├── rte_efd_arm64.h<br>
│   │   ├── rte_efd.c<br>
│   │   ├── rte_efd.h<br>
│   │   ├── rte_efd_x86.h<br>
│   │   └── version.map<br>
│   ├── ethdev<br>
│   │   ├── ethdev_driver.c<br>
│   │   ├── ethdev_driver.h<br>
│   │   ├── ethdev_pci.h<br>
│   │   ├── ethdev_private.c<br>
│   │   ├── ethdev_private.h<br>
│   │   ├── ethdev_profile.c<br>
│   │   ├── ethdev_profile.h<br>
│   │   ├── ethdev_trace_points.c<br>
│   │   ├── ethdev_vdev.h<br>

│   │   ├── rte_class_eth.c<br>
│   │   ├── rte_dev_info.h<br>
│   │   ├── rte_eth_ctrl.h<br>
│   │   ├── rte_ethdev.c<br>
│   │   ├── rte_ethdev_core.h<br>
│   │   ├── rte_ethdev.h<br>
│   │   ├── rte_ethdev_trace_fp.h<br>
│   │   ├── rte_ethdev_trace.h<br>
│   │   ├── rte_flow.c<br>
│   │   ├── rte_flow_driver.h<br>
│   │   ├── rte_flow.h<br>
│   │   ├── rte_mtr.c<br>
│   │   ├── rte_mtr_driver.h<br>
│   │   ├── rte_mtr.h<br>
│   │   ├── rte_tm.c<br>
│   │   ├── rte_tm_driver.h<br>
│   │   ├── rte_tm.h<br>
│   │   └── version.map<br>
│   ├── eventdev<br>
│   │   ├── eventdev_pmd.h<br>
│   │   ├── eventdev_pmd_pci.h<br>
│   │   ├── eventdev_pmd_vdev.h<br>
│   │   ├── eventdev_private.c<br>
│   │   ├── eventdev_trace.h<br>
│   │   ├── eventdev_trace_points.c<br>
│   │   ├── event_timer_adapter_pmd.h<br>

│   │   ├── rte_event_crypto_adapter.c<br>
│   │   ├── rte_event_crypto_adapter.h<br>
│   │   ├── rte_eventdev.c<br>
│   │   ├── rte_eventdev_core.h<br>
│   │   ├── rte_eventdev.h<br>
│   │   ├── rte_eventdev_trace_fp.h<br>
│   │   ├── rte_event_eth_rx_adapter.c<br>
│   │   ├── rte_event_eth_rx_adapter.h<br>
│   │   ├── rte_event_eth_tx_adapter.c<br>
│   │   ├── rte_event_eth_tx_adapter.h<br>
│   │   ├── rte_event_ring.c<br>
│   │   ├── rte_event_ring.h<br>
│   │   ├── rte_event_timer_adapter.c<br>
│   │   ├── rte_event_timer_adapter.h<br>
│   │   └── version.map<br>
│   ├── fib<br>
│   │   ├── dir24_8_avx512.c<br>
│   │   ├── dir24_8_avx512.h<br>
│   │   ├── dir24_8.c<br>
│   │   ├── dir24_8.h<br>

│   │   ├── rte_fib6.c<br>
│   │   ├── rte_fib6.h<br>
│   │   ├── rte_fib.c<br>
│   │   ├── rte_fib.h<br>
│   │   ├── trie_avx512.c<br>
│   │   ├── trie_avx512.h<br>
│   │   ├── trie.c<br>
│   │   ├── trie.h<br>
│   │   └── version.map<br>
│   ├── flow_classify<br>

│   │   ├── rte_flow_classify.c<br>
│   │   ├── rte_flow_classify.h<br>
│   │   ├── rte_flow_classify_parse.c<br>
│   │   ├── rte_flow_classify_parse.h<br>
│   │   └── version.map<br>
│   ├── gpudev<br>
│   │   ├── gpudev.c<br>
│   │   ├── gpudev_driver.h<br>

│   │   ├── rte_gpudev.h<br>
│   │   └── version.map<br>
│   ├── graph<br>
│   │   ├── graph.c<br>
│   │   ├── graph_debug.c<br>
│   │   ├── graph_ops.c<br>
│   │   ├── graph_populate.c<br>
│   │   ├── graph_private.h<br>
│   │   ├── graph_stats.c<br>

│   │   ├── node.c<br>
│   │   ├── rte_graph.h<br>
│   │   ├── rte_graph_worker.h<br>
│   │   └── version.map<br>
│   ├── gro<br>
│   │   ├── gro_tcp4.c<br>
│   │   ├── gro_tcp4.h<br>
│   │   ├── gro_udp4.c<br>
│   │   ├── gro_udp4.h<br>
│   │   ├── gro_vxlan_tcp4.c<br>
│   │   ├── gro_vxlan_tcp4.h<br>
│   │   ├── gro_vxlan_udp4.c<br>
│   │   ├── gro_vxlan_udp4.h<br>

│   │   ├── rte_gro.c<br>
│   │   ├── rte_gro.h<br>
│   │   └── version.map<br>
│   ├── gso<br>
│   │   ├── gso_common.c<br>
│   │   ├── gso_common.h<br>
│   │   ├── gso_tcp4.c<br>
│   │   ├── gso_tcp4.h<br>
│   │   ├── gso_tunnel_tcp4.c<br>
│   │   ├── gso_tunnel_tcp4.h<br>
│   │   ├── gso_tunnel_udp4.c<br>
│   │   ├── gso_tunnel_udp4.h<br>
│   │   ├── gso_udp4.c<br>
│   │   ├── gso_udp4.h<br>

│   │   ├── rte_gso.c<br>
│   │   ├── rte_gso.h<br>
│   │   └── version.map<br>
│   ├── hash<br>

│   │   ├── rte_cmp_arm64.h<br>
│   │   ├── rte_cmp_x86.h<br>
│   │   ├── rte_crc_arm64.h<br>
│   │   ├── rte_cuckoo_hash.c<br>
│   │   ├── rte_cuckoo_hash.h<br>
│   │   ├── rte_fbk_hash.c<br>
│   │   ├── rte_fbk_hash.h<br>
│   │   ├── rte_hash_crc.h<br>
│   │   ├── rte_hash.h<br>
│   │   ├── rte_jhash.h<br>
│   │   ├── rte_thash.c<br>
│   │   ├── rte_thash_gfni.h<br>
│   │   ├── rte_thash.h<br>
│   │   ├── rte_thash_x86_gfni.h<br>
│   │   └── version.map<br>
│   ├── ip_frag<br>
│   │   ├── ip_frag_common.h<br>
│   │   ├── ip_frag_internal.c<br>
│   │   ├── ip_reassembly.h<br>

│   │   ├── rte_ip_frag_common.c<br>
│   │   ├── rte_ip_frag.h<br>
│   │   ├── rte_ipv4_fragmentation.c<br>
│   │   ├── rte_ipv4_reassembly.c<br>
│   │   ├── rte_ipv6_fragmentation.c<br>
│   │   ├── rte_ipv6_reassembly.c<br>
│   │   └── version.map<br>
│   ├── ipsec<br>
│   │   ├── crypto.h<br>
│   │   ├── esp_inb.c<br>
│   │   ├── esp_outb.c<br>
│   │   ├── iph.h<br>
│   │   ├── ipsec_sad.c<br>
│   │   ├── ipsec_sqn.h<br>
│   │   ├── ipsec_telemetry.c<br>

│   │   ├── misc.h<br>
│   │   ├── pad.h<br>
│   │   ├── rte_ipsec_group.h<br>
│   │   ├── rte_ipsec.h<br>
│   │   ├── rte_ipsec_sad.h<br>
│   │   ├── rte_ipsec_sa.h<br>
│   │   ├── sa.c<br>
│   │   ├── sa.h<br>
│   │   ├── ses.c<br>
│   │   └── version.map<br>
│   ├── jobstats<br>

│   │   ├── rte_jobstats.c<br>
│   │   ├── rte_jobstats.h<br>
│   │   └── version.map<br>
│   ├── kni<br>

│   │   ├── rte_kni.c<br>
│   │   ├── rte_kni_common.h<br>
│   │   ├── rte_kni_fifo.h<br>
│   │   ├── rte_kni.h<br>
│   │   └── version.map<br>
│   ├── kvargs<br>

│   │   ├── rte_kvargs.c<br>
│   │   ├── rte_kvargs.h<br>
│   │   └── version.map<br>
│   ├── latencystats<br>

│   │   ├── rte_latencystats.c<br>
│   │   ├── rte_latencystats.h<br>
│   │   └── version.map<br>
│   ├── lpm<br>

│   │   ├── rte_lpm6.c<br>
│   │   ├── rte_lpm6.h<br>
│   │   ├── rte_lpm_altivec.h<br>
│   │   ├── rte_lpm.c<br>
│   │   ├── rte_lpm.h<br>
│   │   ├── rte_lpm_neon.h<br>
│   │   ├── rte_lpm_sse.h<br>
│   │   ├── rte_lpm_sve.h<br>
│   │   └── version.map<br>
│   ├── mbuf<br>

│   │   ├── rte_mbuf.c<br>
│   │   ├── rte_mbuf_core.h<br>
│   │   ├── rte_mbuf_dyn.c<br>
│   │   ├── rte_mbuf_dyn.h<br>
│   │   ├── rte_mbuf.h<br>
│   │   ├── rte_mbuf_pool_ops.c<br>
│   │   ├── rte_mbuf_pool_ops.h<br>
│   │   ├── rte_mbuf_ptype.c<br>
│   │   ├── rte_mbuf_ptype.h<br>
│   │   └── version.map<br>
│   ├── member<br>

│   │   ├── rte_member.c<br>
│   │   ├── rte_member.h<br>
│   │   ├── rte_member_ht.c<br>
│   │   ├── rte_member_ht.h<br>
│   │   ├── rte_member_vbf.c<br>
│   │   ├── rte_member_vbf.h<br>
│   │   ├── rte_member_x86.h<br>
│   │   └── version.map<br>
│   ├── mempool<br>
│   │   ├── mempool_trace_points.c<br>

│   │   ├── rte_mempool.c<br>
│   │   ├── rte_mempool.h<br>
│   │   ├── rte_mempool_ops.c<br>
│   │   ├── rte_mempool_ops_default.c<br>
│   │   ├── rte_mempool_trace_fp.h<br>
│   │   ├── rte_mempool_trace.h<br>
│   │   └── version.map<br>

│   ├── meter<br>

│   │   ├── rte_meter.c<br>
│   │   ├── rte_meter.h<br>
│   │   └── version.map<br>
│   ├── metrics<br>

│   │   ├── rte_metrics.c<br>
│   │   ├── rte_metrics.h<br>
│   │   ├── rte_metrics_telemetry.c<br>
│   │   ├── rte_metrics_telemetry.h<br>
│   │   └── version.map<br>
│   ├── net<br>

│   │   ├── net_crc_avx512.c<br>
│   │   ├── net_crc.h<br>
│   │   ├── net_crc_neon.c<br>
│   │   ├── net_crc_sse.c<br>
│   │   ├── rte_arp.c<br>
│   │   ├── rte_arp.h<br>
│   │   ├── rte_ecpri.h<br>
│   │   ├── rte_esp.h<br>
│   │   ├── rte_ether.c<br>
│   │   ├── rte_ether.h<br>
│   │   ├── rte_geneve.h<br>
│   │   ├── rte_gre.h<br>
│   │   ├── rte_gtp.h<br>
│   │   ├── rte_higig.h<br>
│   │   ├── rte_icmp.h<br>
│   │   ├── rte_ip.h<br>
│   │   ├── rte_l2tpv2.h<br>
│   │   ├── rte_mpls.h<br>
│   │   ├── rte_net.c<br>
│   │   ├── rte_net_crc.c<br>
│   │   ├── rte_net_crc.h<br>
│   │   ├── rte_net.h<br>
│   │   ├── rte_ppp.h<br>
│   │   ├── rte_sctp.h<br>
│   │   ├── rte_tcp.h<br>
│   │   ├── rte_udp.h<br>
│   │   ├── rte_vxlan.h<br>
│   │   └── version.map<br>
│   ├── node<br>
│   │   ├── ethdev_ctrl.c<br>
│   │   ├── ethdev_rx.c<br>
│   │   ├── ethdev_rx_priv.h<br>
│   │   ├── ethdev_tx.c<br>
│   │   ├── ethdev_tx_priv.h<br>
│   │   ├── ip4_lookup.c<br>
│   │   ├── ip4_lookup_neon.h<br>
│   │   ├── ip4_lookup_sse.h<br>
│   │   ├── ip4_rewrite.c<br>
│   │   ├── ip4_rewrite_priv.h<br>
│   │   ├── log.c<br>

│   │   ├── node_private.h<br>
│   │   ├── null.c<br>
│   │   ├── pkt_cls.c<br>
│   │   ├── pkt_cls_priv.h<br>
│   │   ├── pkt_drop.c<br>
│   │   ├── rte_node_eth_api.h<br>
│   │   ├── rte_node_ip4_api.h<br>
│   │   └── version.map<br>
│   ├── pcapng<br>

│   │   ├── pcapng_proto.h<br>
│   │   ├── rte_pcapng.c<br>
│   │   ├── rte_pcapng.h<br>
│   │   └── version.map<br>
│   ├── pci<br>

│   │   ├── rte_pci.c<br>
│   │   ├── rte_pci.h<br>
│   │   └── version.map<br>
│   ├── pdump<br>

│   │   ├── rte_pdump.c<br>
│   │   ├── rte_pdump.h<br>
│   │   └── version.map<br>
│   ├── pipeline<br>

│   │   ├── rte_pipeline.c<br>
│   │   ├── rte_pipeline.h<br>
│   │   ├── rte_port_in_action.c<br>
│   │   ├── rte_port_in_action.h<br>
│   │   ├── rte_swx_ctl.c<br>
│   │   ├── rte_swx_ctl.h<br>
│   │   ├── rte_swx_extern.h<br>
│   │   ├── rte_swx_pipeline.c<br>
│   │   ├── rte_swx_pipeline.h<br>
│   │   ├── rte_swx_pipeline_internal.h<br>
│   │   ├── rte_swx_pipeline_spec.c<br>
│   │   ├── rte_table_action.c<br>
│   │   ├── rte_table_action.h<br>
│   │   └── version.map<br>
│   ├── port<br>

│   │   ├── rte_port_ethdev.c<br>
│   │   ├── rte_port_ethdev.h<br>
│   │   ├── rte_port_eventdev.c<br>
│   │   ├── rte_port_eventdev.h<br>
│   │   ├── rte_port_fd.c<br>
│   │   ├── rte_port_fd.h<br>
│   │   ├── rte_port_frag.c<br>
│   │   ├── rte_port_frag.h<br>
│   │   ├── rte_port.h<br>
│   │   ├── rte_port_kni.c<br>
│   │   ├── rte_port_kni.h<br>
│   │   ├── rte_port_ras.c<br>
│   │   ├── rte_port_ras.h<br>
│   │   ├── rte_port_ring.c<br>
│   │   ├── rte_port_ring.h<br>
│   │   ├── rte_port_sched.c<br>
│   │   ├── rte_port_sched.h<br>
│   │   ├── rte_port_source_sink.c<br>
│   │   ├── rte_port_source_sink.h<br>
│   │   ├── rte_port_sym_crypto.c<br>
│   │   ├── rte_port_sym_crypto.h<br>
│   │   ├── rte_swx_port_ethdev.c<br>
│   │   ├── rte_swx_port_ethdev.h<br>
│   │   ├── rte_swx_port_fd.c<br>
│   │   ├── rte_swx_port_fd.h<br>
│   │   ├── rte_swx_port.h<br>
│   │   ├── rte_swx_port_ring.c<br>
│   │   ├── rte_swx_port_ring.h<br>
│   │   ├── rte_swx_port_source_sink.c<br>
│   │   ├── rte_swx_port_source_sink.h<br>
│   │   └── version.map<br>
│   ├── power<br>
│   │   ├── guest_channel.c<br>
│   │   ├── guest_channel.h<br>

│   │   ├── power_acpi_cpufreq.c<br>
│   │   ├── power_acpi_cpufreq.h<br>
│   │   ├── power_common.c<br>
│   │   ├── power_common.h<br>
│   │   ├── power_cppc_cpufreq.c<br>
│   │   ├── power_cppc_cpufreq.h<br>
│   │   ├── power_kvm_vm.c<br>
│   │   ├── power_kvm_vm.h<br>
│   │   ├── power_pstate_cpufreq.c<br>
│   │   ├── power_pstate_cpufreq.h<br>
│   │   ├── rte_power.c<br>
│   │   ├── rte_power_empty_poll.c<br>
│   │   ├── rte_power_empty_poll.h<br>
│   │   ├── rte_power_guest_channel.h<br>
│   │   ├── rte_power.h<br>
│   │   ├── rte_power_pmd_mgmt.c<br>
│   │   ├── rte_power_pmd_mgmt.h<br>
│   │   └── version.map<br>
│   ├── rawdev<br>

│   │   ├── rte_rawdev.c<br>
│   │   ├── rte_rawdev.h<br>
│   │   ├── rte_rawdev_pmd.h<br>
│   │   └── version.map<br>
│   ├── rcu<br>

│   │   ├── rcu_qsbr_pvt.h<br>
│   │   ├── rte_rcu_qsbr.c<br>
│   │   ├── rte_rcu_qsbr.h<br>
│   │   └── version.map<br>
│   ├── regexdev<br>

│   │   ├── rte_regexdev.c<br>
│   │   ├── rte_regexdev_core.h<br>
│   │   ├── rte_regexdev_driver.h<br>
│   │   ├── rte_regexdev.h<br>
│   │   └── version.map<br>
│   ├── reorder<br>

│   │   ├── rte_reorder.c<br>
│   │   ├── rte_reorder.h<br>
│   │   └── version.map<br>
│   ├── rib<br>

│   │   ├── rte_rib6.c<br>
│   │   ├── rte_rib6.h<br>
│   │   ├── rte_rib.c<br>
│   │   ├── rte_rib.h<br>
│   │   └── version.map<br>
│   ├── ring<br>

│   │   ├── rte_ring.c<br>
│   │   ├── rte_ring_c11_pvt.h<br>
│   │   ├── rte_ring_core.h<br>
│   │   ├── rte_ring_elem.h<br>
│   │   ├── rte_ring_elem_pvt.h<br>
│   │   ├── rte_ring_generic_pvt.h<br>
│   │   ├── rte_ring.h<br>
│   │   ├── rte_ring_hts_elem_pvt.h<br>
│   │   ├── rte_ring_hts.h<br>
│   │   ├── rte_ring_peek_elem_pvt.h<br>
│   │   ├── rte_ring_peek.h<br>
│   │   ├── rte_ring_peek_zc.h<br>
│   │   ├── rte_ring_rts_elem_pvt.h<br>
│   │   ├── rte_ring_rts.h<br>
│   │   └── version.map<br>
│   ├── sched<br>

│   │   ├── rte_approx.c<br>
│   │   ├── rte_approx.h<br>
│   │   ├── rte_pie.c<br>
│   │   ├── rte_pie.h<br>
│   │   ├── rte_red.c<br>
│   │   ├── rte_red.h<br>
│   │   ├── rte_sched.c<br>
│   │   ├── rte_sched_common.h<br>
│   │   ├── rte_sched.h<br>
│   │   └── version.map<br>
│   ├── security<br>

│   │   ├── rte_security.c<br>
│   │   ├── rte_security_driver.h<br>
│   │   ├── rte_security.h<br>
│   │   └── version.map<br>
│   ├── stack<br>

│   │   ├── rte_stack.c<br>
│   │   ├── rte_stack.h<br>
│   │   ├── rte_stack_lf.c<br>
│   │   ├── rte_stack_lf_c11.h<br>
│   │   ├── rte_stack_lf_generic.h<br>
│   │   ├── rte_stack_lf.h<br>
│   │   ├── rte_stack_lf_stubs.h<br>
│   │   ├── rte_stack_std.c<br>
│   │   ├── rte_stack_std.h<br>
│   │   ├── stack_pvt.h<br>
│   │   └── version.map<br>
│   ├── table<br>

│   │   ├── rte_lru_arm64.h<br>
│   │   ├── rte_lru.h<br>
│   │   ├── rte_lru_x86.h<br>
│   │   ├── rte_swx_table_em.c<br>
│   │   ├── rte_swx_table_em.h<br>
│   │   ├── rte_swx_table.h<br>
│   │   ├── rte_swx_table_learner.c<br>
│   │   ├── rte_swx_table_learner.h<br>
│   │   ├── rte_swx_table_selector.c<br>
│   │   ├── rte_swx_table_selector.h<br>
│   │   ├── rte_swx_table_wm.c<br>
│   │   ├── rte_swx_table_wm.h<br>
│   │   ├── rte_table_acl.c<br>
│   │   ├── rte_table_acl.h<br>
│   │   ├── rte_table_array.c<br>
│   │   ├── rte_table_array.h<br>
│   │   ├── rte_table.h<br>
│   │   ├── rte_table_hash_cuckoo.c<br>
│   │   ├── rte_table_hash_cuckoo.h<br>
│   │   ├── rte_table_hash_ext.c<br>
│   │   ├── rte_table_hash_func_arm64.h<br>
│   │   ├── rte_table_hash_func.h<br>
│   │   ├── rte_table_hash.h<br>
│   │   ├── rte_table_hash_key16.c<br>
│   │   ├── rte_table_hash_key32.c<br>
│   │   ├── rte_table_hash_key8.c<br>
│   │   ├── rte_table_hash_lru.c<br>
│   │   ├── rte_table_lpm.c<br>
│   │   ├── rte_table_lpm.h<br>
│   │   ├── rte_table_lpm_ipv6.c<br>
│   │   ├── rte_table_lpm_ipv6.h<br>
│   │   ├── rte_table_stub.c<br>
│   │   ├── rte_table_stub.h<br>
│   │   └── version.map<br>
│   ├── telemetry<br>

│   │   ├── rte_telemetry.h<br>
│   │   ├── telemetry.c<br>
│   │   ├── telemetry_data.c<br>
│   │   ├── telemetry_data.h<br>
│   │   ├── telemetry_internal.h<br>
│   │   ├── telemetry_json.h<br>
│   │   ├── telemetry_legacy.c<br>
│   │   └── version.map<br>
│   ├── timer<br>

│   │   ├── rte_timer.c<br>
│   │   ├── rte_timer.h<br>
│   │   └── version.map<br>
│   └── vhost<br>
│       ├── fd_man.c<br>
│       ├── fd_man.h<br>
│       ├── iotlb.c<br>
│       ├── iotlb.h<br>

│       ├── rte_vdpa.h<br>
│       ├── rte_vhost_async.h<br>
│       ├── rte_vhost_crypto.h<br>
│       ├── rte_vhost.h<br>
│       ├── socket.c<br>
│       ├── vdpa.c<br>
│       ├── vdpa_driver.h<br>
│       ├── version.map<br>
│       ├── vhost.c<br>
│       ├── vhost_crypto.c<br>
│       ├── vhost.h<br>
│       ├── vhost_user.c<br>
│       ├── vhost_user.h<br>
│       ├── virtio_crypto.h<br>
│       └── virtio_net.c<br>
├── license<br>
│   ├── bsd-2-clause.txt<br>
│   ├── bsd-3-clause.txt<br>
│   ├── exceptions.txt<br>
│   ├── gpl-2.0.txt<br>
│   ├── isc.txt<br>
│   ├── lgpl-2.1.txt<br>
│   ├── mit.txt<br>
│   └── README<br>
├── MAINTAINERS<br>
├── Makefile<br>

├── meson_options.txt<br>
├── README<br>
├── usertools<br>
│   ├── cpu_layout.py<br>
│   ├── dpdk-devbind.py<br>
│   ├── dpdk-hugepages.py<br>
│   ├── dpdk-pmdinfo.py<br>
│   ├── dpdk-telemetry-client.py<br>
│   ├── dpdk-telemetry.py<br>

└── VERSION<br>
