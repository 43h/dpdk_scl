# dpdk源码阅读笔记

## 版本 
22.03版本

## 源码目录
./
├── ABI_VERSION
├── app
│   ├── dumpcap
│   │   ├── main.c
│   │   └── meson.build
│   ├── meson.build
│   ├── pdump
│   │   ├── main.c
│   │   └── meson.build
│   ├── proc-info
│   │   ├── main.c
│   │   └── meson.build
│   ├── test
│   │   ├── commands.c
│   │   ├── has_hugepage.py
│   │   ├── meson.build
│   │   ├── packet_burst_generator.c
│   │   ├── packet_burst_generator.h
│   │   ├── process.h
│   │   ├── resource.c
│   │   ├── resource.h
│   │   ├── sample_packet_forward.c
│   │   ├── sample_packet_forward.h
│   │   ├── test_acl.c
│   │   ├── test_acl.h
│   │   ├── test_alarm.c
│   │   ├── test_atomic.c
│   │   ├── test_barrier.c
│   │   ├── test_bitmap.c
│   │   ├── test_bitops.c
│   │   ├── test_bitratestats.c
│   │   ├── test_bpf.c
│   │   ├── test_byteorder.c
│   │   ├── test.c
│   │   ├── test_cfgfile.c
│   │   ├── test_cfgfiles
│   │   │   └── etc
│   │   │       ├── empty.ini
│   │   │       ├── empty_key_value.ini
│   │   │       ├── invalid_section.ini
│   │   │       ├── line_too_long.ini
│   │   │       ├── missing_section.ini
│   │   │       ├── realloc_sections.ini
│   │   │       ├── sample1.ini
│   │   │       └── sample2.ini
│   │   ├── test_cksum.c
│   │   ├── test_cmdline.c
│   │   ├── test_cmdline_cirbuf.c
│   │   ├── test_cmdline_etheraddr.c
│   │   ├── test_cmdline.h
│   │   ├── test_cmdline_ipaddr.c
│   │   ├── test_cmdline_lib.c
│   │   ├── test_cmdline_num.c
│   │   ├── test_cmdline_portlist.c
│   │   ├── test_cmdline_string.c
│   │   ├── test_common.c
│   │   ├── test_compressdev.c
│   │   ├── test_compressdev_test_buffer.h
│   │   ├── test_cpuflags.c
│   │   ├── test_crc.c
│   │   ├── test_cryptodev_aead_test_vectors.h
│   │   ├── test_cryptodev_aes_test_vectors.h
│   │   ├── test_cryptodev_asym.c
│   │   ├── test_cryptodev_asym_util.h
│   │   ├── test_cryptodev_blockcipher.c
│   │   ├── test_cryptodev_blockcipher.h
│   │   ├── test_cryptodev.c
│   │   ├── test_cryptodev_des_test_vectors.h
│   │   ├── test_cryptodev_dh_test_vectors.h
│   │   ├── test_cryptodev_dsa_test_vectors.h
│   │   ├── test_cryptodev_ecdsa_test_vectors.h
│   │   ├── test_cryptodev_ecpm_test_vectors.h
│   │   ├── test_cryptodev.h
│   │   ├── test_cryptodev_hash_test_vectors.h
│   │   ├── test_cryptodev_hmac_test_vectors.h
│   │   ├── test_cryptodev_kasumi_hash_test_vectors.h
│   │   ├── test_cryptodev_kasumi_test_vectors.h
│   │   ├── test_cryptodev_mixed_test_vectors.h
│   │   ├── test_cryptodev_mod_test_vectors.h
│   │   ├── test_cryptodev_rsa_test_vectors.h
│   │   ├── test_cryptodev_security_docsis_test_vectors.h
│   │   ├── test_cryptodev_security_ipsec.c
│   │   ├── test_cryptodev_security_ipsec.h
│   │   ├── test_cryptodev_security_ipsec_test_vectors.h
│   │   ├── test_cryptodev_security_pdcp.c
│   │   ├── test_cryptodev_security_pdcp_sdap_test_vectors.h
│   │   ├── test_cryptodev_security_pdcp_test_func.h
│   │   ├── test_cryptodev_security_pdcp_test_vectors.h
│   │   ├── test_cryptodev_snow3g_hash_test_vectors.h
│   │   ├── test_cryptodev_snow3g_test_vectors.h
│   │   ├── test_cryptodev_zuc_test_vectors.h
│   │   ├── test_cycles.c
│   │   ├── test_debug.c
│   │   ├── test_devargs.c
│   │   ├── test_distributor.c
│   │   ├── test_distributor_perf.c
│   │   ├── test_dmadev_api.c
│   │   ├── test_dmadev_api.h
│   │   ├── test_dmadev.c
│   │   ├── test_eal_flags.c
│   │   ├── test_eal_fs.c
│   │   ├── test_efd.c
│   │   ├── test_efd_perf.c
│   │   ├── test_errno.c
│   │   ├── test_ethdev_link.c
│   │   ├── test_event_crypto_adapter.c
│   │   ├── test_eventdev.c
│   │   ├── test_event_eth_rx_adapter.c
│   │   ├── test_event_eth_tx_adapter.c
│   │   ├── test_event_ring.c
│   │   ├── test_event_timer_adapter.c
│   │   ├── test_external_mem.c
│   │   ├── test_fbarray.c
│   │   ├── test_fib6.c
│   │   ├── test_fib6_perf.c
│   │   ├── test_fib.c
│   │   ├── test_fib_perf.c
│   │   ├── test_flow_classify.c
│   │   ├── test_flow_classify.h
│   │   ├── test_func_reentrancy.c
│   │   ├── test_graph.c
│   │   ├── test_graph_perf.c
│   │   ├── test.h
│   │   ├── test_hash.c
│   │   ├── test_hash_functions.c
│   │   ├── test_hash_multiwriter.c
│   │   ├── test_hash_perf.c
│   │   ├── test_hash_readwrite.c
│   │   ├── test_hash_readwrite_lf_perf.c
│   │   ├── test_interrupts.c
│   │   ├── test_ipfrag.c
│   │   ├── test_ipsec.c
│   │   ├── test_ipsec_perf.c
│   │   ├── test_ipsec_sad.c
│   │   ├── test_kni.c
│   │   ├── test_kvargs.c
│   │   ├── test_latencystats.c
│   │   ├── test_lcores.c
│   │   ├── test_link_bonding.c
│   │   ├── test_link_bonding_mode4.c
│   │   ├── test_link_bonding_rssconf.c
│   │   ├── test_logs.c
│   │   ├── test_lpm6.c
│   │   ├── test_lpm6_data.h
│   │   ├── test_lpm6_perf.c
│   │   ├── test_lpm.c
│   │   ├── test_lpm_perf.c
│   │   ├── test_malloc.c
│   │   ├── test_malloc_perf.c
│   │   ├── test_mbuf.c
│   │   ├── test_mcslock.c
│   │   ├── test_member.c
│   │   ├── test_member_perf.c
│   │   ├── test_memcpy.c
│   │   ├── test_memcpy_perf.c
│   │   ├── test_memory.c
│   │   ├── test_mempool.c
│   │   ├── test_mempool_perf.c
│   │   ├── test_memzone.c
│   │   ├── test_meter.c
│   │   ├── test_metrics.c
│   │   ├── test_mp_secondary.c
│   │   ├── test_pcapng.c
│   │   ├── test_pdump.c
│   │   ├── test_pdump.h
│   │   ├── test_per_lcore.c
│   │   ├── test_pflock.c
│   │   ├── test_pie.c
│   │   ├── test_pmd_perf.c
│   │   ├── test_pmd_ring.c
│   │   ├── test_pmd_ring_perf.c
│   │   ├── test_power.c
│   │   ├── test_power_cpufreq.c
│   │   ├── test_power_kvm_vm.c
│   │   ├── test_prefetch.c
│   │   ├── test_rand_perf.c
│   │   ├── test_rawdev.c
│   │   ├── test_rcu_qsbr.c
│   │   ├── test_rcu_qsbr_perf.c
│   │   ├── test_reciprocal_division.c
│   │   ├── test_reciprocal_division_perf.c
│   │   ├── test_red.c
│   │   ├── test_reorder.c
│   │   ├── test_resource.c
│   │   ├── test_rib6.c
│   │   ├── test_rib.c
│   │   ├── test_ring.c
│   │   ├── test_ring.h
│   │   ├── test_ring_hts_stress.c
│   │   ├── test_ring_mpmc_stress.c
│   │   ├── test_ring_mt_peek_stress.c
│   │   ├── test_ring_mt_peek_stress_zc.c
│   │   ├── test_ring_perf.c
│   │   ├── test_ring_rts_stress.c
│   │   ├── test_ring_st_peek_stress.c
│   │   ├── test_ring_st_peek_stress_zc.c
│   │   ├── test_ring_stress.c
│   │   ├── test_ring_stress.h
│   │   ├── test_ring_stress_impl.h
│   │   ├── test_rwlock.c
│   │   ├── test_sched.c
│   │   ├── test_security.c
│   │   ├── test_service_cores.c
│   │   ├── test_spinlock.c
│   │   ├── test_stack.c
│   │   ├── test_stack_perf.c
│   │   ├── test_string_fns.c
│   │   ├── test_table_acl.c
│   │   ├── test_table_acl.h
│   │   ├── test_table.c
│   │   ├── test_table_combined.c
│   │   ├── test_table_combined.h
│   │   ├── test_table.h
│   │   ├── test_table_pipeline.c
│   │   ├── test_table_pipeline.h
│   │   ├── test_table_ports.c
│   │   ├── test_table_ports.h
│   │   ├── test_table_tables.c
│   │   ├── test_table_tables.h
│   │   ├── test_tailq.c
│   │   ├── test_telemetry_data.c
│   │   ├── test_telemetry_json.c
│   │   ├── test_thash.c
│   │   ├── test_thash_perf.c
│   │   ├── test_ticketlock.c
│   │   ├── test_timer.c
│   │   ├── test_timer_perf.c
│   │   ├── test_timer_racecond.c
│   │   ├── test_timer_secondary.c
│   │   ├── test_trace.c
│   │   ├── test_trace.h
│   │   ├── test_trace_perf.c
│   │   ├── test_trace_register.c
│   │   ├── test_vdev.c
│   │   ├── test_version.c
│   │   ├── test_xmmt_ops.h
│   │   ├── virtual_pmd.c
│   │   └── virtual_pmd.h
│   ├── test-acl
│   │   ├── input
│   │   │   ├── acl1v4_5_rule
│   │   │   ├── acl1v4_5_trace
│   │   │   ├── acl1v6_1_rule
│   │   │   └── acl1v6_1_trace
│   │   ├── main.c
│   │   ├── meson.build
│   │   └── test-acl.sh
│   ├── test-bbdev
│   │   ├── ldpc_dec_default.data -> test_vectors/ldpc_dec_v2342_drop.data
│   │   ├── ldpc_enc_default.data -> test_vectors/ldpc_enc_v2342.data
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── meson.build
│   │   ├── test_bbdev.c
│   │   ├── test_bbdev_perf.c
│   │   ├── test-bbdev.py
│   │   ├── test_bbdev_vector.c
│   │   ├── test_bbdev_vector.h
│   │   ├── test_vectors
│   │   │   ├── bbdev_null.data
│   │   │   ├── ldpc_dec_HARQ_1_0.data
│   │   │   ├── ldpc_dec_HARQ_1_1.data
│   │   │   ├── ldpc_dec_HARQ_1_2.data
│   │   │   ├── ldpc_dec_v11835.data
│   │   │   ├── ldpc_dec_v2342_drop.data
│   │   │   ├── ldpc_dec_v7813.data
│   │   │   ├── ldpc_dec_v8480.data
│   │   │   ├── ldpc_dec_v8568.data
│   │   │   ├── ldpc_dec_v9503.data
│   │   │   ├── ldpc_enc_v11835.data
│   │   │   ├── ldpc_enc_v2342.data
│   │   │   ├── ldpc_enc_v7813.data
│   │   │   ├── ldpc_enc_v8568.data
│   │   │   ├── ldpc_enc_v9503.data
│   │   │   ├── turbo_dec_c1_k40_r0_e17280_sbd_negllr.data
│   │   │   ├── turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_high_snr.data
│   │   │   ├── turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_low_snr.data
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_posllr.data
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_sbd_negllr.data
│   │   │   ├── turbo_dec_c1_k6144_r0_e34560_sbd_posllr.data
│   │   │   ├── turbo_dec_c2_k3136_r0_e4920_sbd_negllr_crc24b.data
│   │   │   ├── turbo_enc_c1_k40_r0_e1190_rm.data
│   │   │   ├── turbo_enc_c1_k40_r0_e1194_rm.data
│   │   │   ├── turbo_enc_c1_k40_r0_e1196_rm.data
│   │   │   ├── turbo_enc_c1_k40_r0_e272_rm.data
│   │   │   ├── turbo_enc_c1_k6144_r0_e120_rm_rvidx.data
│   │   │   ├── turbo_enc_c1_k6144_r0_e18444.data
│   │   │   ├── turbo_enc_c1_k6144_r0_e18448_crc24a.data
│   │   │   ├── turbo_enc_c1_k6144_r0_e32256_crc24b_rm.data
│   │   │   └── turbo_enc_c3_k4800_r2_e14412_crc24b.data
│   │   ├── turbo_dec_default.data -> test_vectors/turbo_dec_c1_k6144_r0_e10376_crc24b_sbd_negllr_high_snr.data
│   │   └── turbo_enc_default.data -> test_vectors/turbo_enc_c1_k6144_r0_e18444.data
│   ├── test-cmdline
│   │   ├── cmdline_test.c
│   │   ├── cmdline_test_data.py
│   │   ├── cmdline_test.h
│   │   ├── cmdline_test.py
│   │   ├── commands.c
│   │   └── meson.build
│   ├── test-compress-perf
│   │   ├── comp_perf.h
│   │   ├── comp_perf_options.h
│   │   ├── comp_perf_options_parse.c
│   │   ├── comp_perf_test_common.c
│   │   ├── comp_perf_test_common.h
│   │   ├── comp_perf_test_cyclecount.c
│   │   ├── comp_perf_test_cyclecount.h
│   │   ├── comp_perf_test_throughput.c
│   │   ├── comp_perf_test_throughput.h
│   │   ├── comp_perf_test_verify.c
│   │   ├── comp_perf_test_verify.h
│   │   ├── main.c
│   │   └── meson.build
│   ├── test-crypto-perf
│   │   ├── configs
│   │   │   ├── crypto-perf-aesni-gcm.json
│   │   │   ├── crypto-perf-aesni-mb.json
│   │   │   └── crypto-perf-qat.json
│   │   ├── cperf.h
│   │   ├── cperf_ops.c
│   │   ├── cperf_ops.h
│   │   ├── cperf_options.h
│   │   ├── cperf_options_parsing.c
│   │   ├── cperf_test_common.c
│   │   ├── cperf_test_common.h
│   │   ├── cperf_test_latency.c
│   │   ├── cperf_test_latency.h
│   │   ├── cperf_test_pmd_cyclecount.c
│   │   ├── cperf_test_pmd_cyclecount.h
│   │   ├── cperf_test_throughput.c
│   │   ├── cperf_test_throughput.h
│   │   ├── cperf_test_vector_parsing.c
│   │   ├── cperf_test_vector_parsing.h
│   │   ├── cperf_test_vectors.c
│   │   ├── cperf_test_vectors.h
│   │   ├── cperf_test_verify.c
│   │   ├── cperf_test_verify.h
│   │   ├── data
│   │   │   ├── aes_cbc_128_sha.data
│   │   │   ├── aes_cbc_192_sha.data
│   │   │   └── aes_cbc_256_sha.data
│   │   ├── dpdk-graph-crypto-perf.py
│   │   ├── main.c
│   │   └── meson.build
│   ├── test-eventdev
│   │   ├── evt_common.h
│   │   ├── evt_main.c
│   │   ├── evt_options.c
│   │   ├── evt_options.h
│   │   ├── evt_test.c
│   │   ├── evt_test.h
│   │   ├── meson.build
│   │   ├── parser.c
│   │   ├── parser.h
│   │   ├── test_order_atq.c
│   │   ├── test_order_common.c
│   │   ├── test_order_common.h
│   │   ├── test_order_queue.c
│   │   ├── test_perf_atq.c
│   │   ├── test_perf_common.c
│   │   ├── test_perf_common.h
│   │   ├── test_perf_queue.c
│   │   ├── test_pipeline_atq.c
│   │   ├── test_pipeline_common.c
│   │   ├── test_pipeline_common.h
│   │   └── test_pipeline_queue.c
│   ├── test-fib
│   │   ├── main.c
│   │   └── meson.build
│   ├── test-flow-perf
│   │   ├── actions_gen.c
│   │   ├── actions_gen.h
│   │   ├── config.h
│   │   ├── flow_gen.c
│   │   ├── flow_gen.h
│   │   ├── items_gen.c
│   │   ├── items_gen.h
│   │   ├── main.c
│   │   └── meson.build
│   ├── test-gpudev
│   │   ├── main.c
│   │   └── meson.build
│   ├── test-pipeline
│   │   ├── config.c
│   │   ├── init.c
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── meson.build
│   │   ├── pipeline_acl.c
│   │   ├── pipeline_hash.c
│   │   ├── pipeline_lpm.c
│   │   ├── pipeline_lpm_ipv6.c
│   │   ├── pipeline_stub.c
│   │   └── runtime.c
│   ├── test-pmd
│   │   ├── 5tswap.c
│   │   ├── bpf_cmd.c
│   │   ├── bpf_cmd.h
│   │   ├── cmd_flex_item.c
│   │   ├── cmdline.c
│   │   ├── cmdline_flow.c
│   │   ├── cmdline_mtr.c
│   │   ├── cmdline_mtr.h
│   │   ├── cmdline_tm.c
│   │   ├── cmdline_tm.h
│   │   ├── config.c
│   │   ├── csumonly.c
│   │   ├── flowgen.c
│   │   ├── icmpecho.c
│   │   ├── ieee1588fwd.c
│   │   ├── iofwd.c
│   │   ├── macfwd.c
│   │   ├── macswap.c
│   │   ├── macswap_common.h
│   │   ├── macswap.h
│   │   ├── macswap_neon.h
│   │   ├── macswap_sse.h
│   │   ├── meson.build
│   │   ├── noisy_vnf.c
│   │   ├── parameters.c
│   │   ├── rxonly.c
│   │   ├── shared_rxq_fwd.c
│   │   ├── testpmd.c
│   │   ├── testpmd.h
│   │   ├── txonly.c
│   │   └── util.c
│   ├── test-regex
│   │   ├── main.c
│   │   └── meson.build
│   └── test-sad
│       ├── main.c
│       └── meson.build
├── buildtools
│   ├── binutils-avx512-check.py
│   ├── call-sphinx-build.py
│   ├── check-symbols.sh
│   ├── chkincs
│   │   ├── gen_c_file_for_header.py
│   │   ├── main.c
│   │   ├── main.cpp
│   │   └── meson.build
│   ├── coff.py
│   ├── gen-pmdinfo-cfile.py
│   ├── get-cpu-count.py
│   ├── get-numa-count.py
│   ├── list-dir-globs.py
│   ├── map-list-symbol.sh
│   ├── map_to_win.py
│   ├── meson.build
│   ├── options-ibverbs-static.sh
│   ├── pkg-config
│   │   ├── meson.build
│   │   └── set-static-linker-flags.py
│   ├── pmdinfogen.py
│   ├── symlink-drivers-solibs.py
│   └── symlink-drivers-solibs.sh
├── config
│   ├── arm
│   │   ├── arm32_armv8_linux_gcc
│   │   ├── arm64_armada_linux_gcc
│   │   ├── arm64_armv8_linux_clang_ubuntu1804
│   │   ├── arm64_armv8_linux_gcc
│   │   ├── arm64_bluefield_linux_gcc
│   │   ├── arm64_centriq2400_linux_gcc
│   │   ├── arm64_cn10k_linux_gcc
│   │   ├── arm64_cn9k_linux_gcc
│   │   ├── arm64_dpaa_linux_gcc
│   │   ├── arm64_emag_linux_gcc
│   │   ├── arm64_graviton2_linux_gcc
│   │   ├── arm64_kunpeng920_linux_gcc
│   │   ├── arm64_kunpeng930_linux_gcc
│   │   ├── arm64_n1sdp_linux_gcc
│   │   ├── arm64_n2_linux_gcc
│   │   ├── arm64_stingray_linux_gcc
│   │   ├── arm64_thunderx2_linux_gcc
│   │   ├── arm64_thunderxt88_linux_gcc
│   │   ├── armv8_machine.py
│   │   └── meson.build
│   ├── meson.build
│   ├── ppc
│   │   ├── meson.build
│   │   ├── ppc64le-power8-linux-gcc
│   │   └── ppc64le-power8-linux-gcc-ubuntu1804
│   ├── rte_config.h
│   └── x86
│       ├── cross-mingw
│       └── meson.build
├── devtools
│   ├── build-dict.sh
│   ├── build-tags.sh
│   ├── check-abi.sh
│   ├── check-abi-version.sh
│   ├── check-doc-vs-code.sh
│   ├── check-dup-includes.sh
│   ├── check-forbidden-tokens.awk
│   ├── check-git-log.sh
│   ├── check-maintainers.sh
│   ├── check-meson.py
│   ├── checkpatches.sh
│   ├── check-spdx-tag.sh
│   ├── check-symbol-change.sh
│   ├── check-symbol-maps.sh
│   ├── cocci
│   │   ├── mtod-offset.cocci
│   │   ├── namespace_ethdev.cocci
│   │   ├── nullfree.cocci
│   │   ├── prefix_mbuf_offload_flags.cocci
│   │   ├── strlcpy.cocci
│   │   └── strlcpy-with-header.cocci
│   ├── cocci.sh
│   ├── gen-abi.sh
│   ├── get-maintainer.sh
│   ├── git-log-fixes.sh
│   ├── libabigail.abignore
│   ├── load-devel-config
│   ├── parse-flow-support.sh
│   ├── process-iwyu.py
│   ├── test-meson-builds.sh
│   ├── test-null.sh
│   ├── update-abi.sh
│   ├── update-patches.py
│   ├── update_version_map_abi.py
│   └── words-case.txt
├── doc
│   ├── api
│   │   ├── doxy-api.conf.in
│   │   ├── doxy-api-index.md
│   │   ├── doxy-html-custom.sh
│   │   ├── generate_doxygen.sh
│   │   ├── generate_examples.sh
│   │   └── meson.build
│   ├── guides
│   │   ├── bbdevs
│   │   │   ├── acc100.rst
│   │   │   ├── features
│   │   │   │   ├── acc100.ini
│   │   │   │   ├── default.ini
│   │   │   │   ├── fpga_5gnr_fec.ini
│   │   │   │   ├── fpga_lte_fec.ini
│   │   │   │   ├── la12xx.ini
│   │   │   │   ├── null.ini
│   │   │   │   └── turbo_sw.ini
│   │   │   ├── fpga_5gnr_fec.rst
│   │   │   ├── fpga_lte_fec.rst
│   │   │   ├── index.rst
│   │   │   ├── la12xx.rst
│   │   │   ├── null.rst
│   │   │   ├── overview.rst
│   │   │   └── turbo_sw.rst
│   │   ├── compressdevs
│   │   │   ├── features
│   │   │   │   ├── default.ini
│   │   │   │   ├── isal.ini
│   │   │   │   ├── mlx5.ini
│   │   │   │   ├── octeontx.ini
│   │   │   │   ├── qat.ini
│   │   │   │   └── zlib.ini
│   │   │   ├── index.rst
│   │   │   ├── isal.rst
│   │   │   ├── mlx5.rst
│   │   │   ├── octeontx.rst
│   │   │   ├── overview.rst
│   │   │   ├── qat_comp.rst
│   │   │   └── zlib.rst
│   │   ├── conf.py
│   │   ├── contributing
│   │   │   ├── abi_policy.rst
│   │   │   ├── abi_versioning.rst
│   │   │   ├── cheatsheet.rst
│   │   │   ├── coding_style.rst
│   │   │   ├── design.rst
│   │   │   ├── documentation.rst
│   │   │   ├── img
│   │   │   │   ├── abi_stability_policy.svg
│   │   │   │   ├── patch_cheatsheet.svg
│   │   │   │   └── what_is_an_abi.svg
│   │   │   ├── index.rst
│   │   │   ├── patches.rst
│   │   │   ├── stable.rst
│   │   │   ├── unit_test.rst
│   │   │   └── vulnerability.rst
│   │   ├── cryptodevs
│   │   │   ├── aesni_gcm.rst
│   │   │   ├── aesni_mb.rst
│   │   │   ├── armv8.rst
│   │   │   ├── bcmfs.rst
│   │   │   ├── caam_jr.rst
│   │   │   ├── ccp.rst
│   │   │   ├── chacha20_poly1305.rst
│   │   │   ├── cnxk.rst
│   │   │   ├── dpaa2_sec.rst
│   │   │   ├── dpaa_sec.rst
│   │   │   ├── features
│   │   │   │   ├── aesni_gcm.ini
│   │   │   │   ├── aesni_mb.ini
│   │   │   │   ├── armv8.ini
│   │   │   │   ├── bcmfs.ini
│   │   │   │   ├── caam_jr.ini
│   │   │   │   ├── ccp.ini
│   │   │   │   ├── chacha20_poly1305.ini
│   │   │   │   ├── cn10k.ini
│   │   │   │   ├── cn9k.ini
│   │   │   │   ├── default.ini
│   │   │   │   ├── dpaa2_sec.ini
│   │   │   │   ├── dpaa_sec.ini
│   │   │   │   ├── kasumi.ini
│   │   │   │   ├── mlx5.ini
│   │   │   │   ├── mvsam.ini
│   │   │   │   ├── nitrox.ini
│   │   │   │   ├── null.ini
│   │   │   │   ├── octeontx.ini
│   │   │   │   ├── openssl.ini
│   │   │   │   ├── qat.ini
│   │   │   │   ├── snow3g.ini
│   │   │   │   ├── virtio.ini
│   │   │   │   └── zuc.ini
│   │   │   ├── img
│   │   │   │   └── scheduler-overview.svg
│   │   │   ├── index.rst
│   │   │   ├── kasumi.rst
│   │   │   ├── mlx5.rst
│   │   │   ├── mvsam.rst
│   │   │   ├── nitrox.rst
│   │   │   ├── null.rst
│   │   │   ├── octeontx.rst
│   │   │   ├── openssl.rst
│   │   │   ├── overview.rst
│   │   │   ├── qat.rst
│   │   │   ├── scheduler.rst
│   │   │   ├── snow3g.rst
│   │   │   ├── virtio.rst
│   │   │   └── zuc.rst
│   │   ├── custom.css
│   │   ├── dmadevs
│   │   │   ├── cnxk.rst
│   │   │   ├── dpaa.rst
│   │   │   ├── hisilicon.rst
│   │   │   ├── idxd.rst
│   │   │   ├── index.rst
│   │   │   └── ioat.rst
│   │   ├── eventdevs
│   │   │   ├── cnxk.rst
│   │   │   ├── dlb2.rst
│   │   │   ├── dpaa2.rst
│   │   │   ├── dpaa.rst
│   │   │   ├── dsw.rst
│   │   │   ├── features
│   │   │   │   ├── cnxk.ini
│   │   │   │   ├── default.ini
│   │   │   │   ├── dlb2.ini
│   │   │   │   ├── dpaa2.ini
│   │   │   │   ├── dpaa.ini
│   │   │   │   ├── dsw.ini
│   │   │   │   ├── octeontx.ini
│   │   │   │   ├── opdl.ini
│   │   │   │   └── sw.ini
│   │   │   ├── index.rst
│   │   │   ├── octeontx.rst
│   │   │   ├── opdl.rst
│   │   │   ├── overview.rst
│   │   │   └── sw.rst
│   │   ├── faq
│   │   │   ├── faq.rst
│   │   │   └── index.rst
│   │   ├── freebsd_gsg
│   │   │   ├── build_dpdk.rst
│   │   │   ├── build_sample_apps.rst
│   │   │   ├── freebsd_eal_parameters.rst
│   │   │   ├── index.rst
│   │   │   ├── install_from_ports.rst
│   │   │   └── intro.rst
│   │   ├── gpus
│   │   │   ├── cuda.rst
│   │   │   ├── features
│   │   │   │   ├── cuda.ini
│   │   │   │   └── default.ini
│   │   │   ├── index.rst
│   │   │   └── overview.rst
│   │   ├── howto
│   │   │   ├── avx512.rst
│   │   │   ├── debug_troubleshoot.rst
│   │   │   ├── flow_bifurcation.rst
│   │   │   ├── img
│   │   │   │   ├── dtg_consumer_ring.svg
│   │   │   │   ├── dtg_crypto.svg
│   │   │   │   ├── dtg_distributor_worker.svg
│   │   │   │   ├── dtg_mempool.svg
│   │   │   │   ├── dtg_pdump.svg
│   │   │   │   ├── dtg_producer_ring.svg
│   │   │   │   ├── dtg_qos_tx.svg
│   │   │   │   ├── dtg_rx_rate.svg
│   │   │   │   ├── dtg_rx_tx_drop.svg
│   │   │   │   ├── dtg_sample_app_model.svg
│   │   │   │   ├── dtg_service.svg
│   │   │   │   ├── flow_bifurcation_overview.svg
│   │   │   │   ├── lm_bond_virtio_sriov.svg
│   │   │   │   ├── lm_vhost_user.svg
│   │   │   │   ├── packet_capture_framework.svg
│   │   │   │   ├── pvp_2nics.svg
│   │   │   │   ├── use_models_for_running_dpdk_in_containers.svg
│   │   │   │   ├── vf_daemon_overview.svg
│   │   │   │   ├── virtio_user_as_exceptional_path.svg
│   │   │   │   └── virtio_user_for_container_networking.svg
│   │   │   ├── index.rst
│   │   │   ├── lm_bond_virtio_sriov.rst
│   │   │   ├── lm_virtio_vhost_user.rst
│   │   │   ├── openwrt.rst
│   │   │   ├── packet_capture_framework.rst
│   │   │   ├── pvp_reference_benchmark.rst
│   │   │   ├── rte_flow.rst
│   │   │   ├── telemetry.rst
│   │   │   ├── vfd.rst
│   │   │   ├── virtio_user_as_exceptional_path.rst
│   │   │   └── virtio_user_for_container_networking.rst
│   │   ├── index.rst
│   │   ├── linux_gsg
│   │   │   ├── build_dpdk.rst
│   │   │   ├── build_sample_apps.rst
│   │   │   ├── cross_build_dpdk_for_arm64.rst
│   │   │   ├── eal_args.include.rst
│   │   │   ├── enable_func.rst
│   │   │   ├── index.rst
│   │   │   ├── intro.rst
│   │   │   ├── linux_drivers.rst
│   │   │   ├── linux_eal_parameters.rst
│   │   │   ├── nic_perf_intel_platform.rst
│   │   │   └── sys_reqs.rst
│   │   ├── mempool
│   │   │   ├── cnxk.rst
│   │   │   ├── index.rst
│   │   │   ├── octeontx.rst
│   │   │   ├── ring.rst
│   │   │   └── stack.rst
│   │   ├── meson.build
│   │   ├── nics
│   │   │   ├── af_packet.rst
│   │   │   ├── af_xdp.rst
│   │   │   ├── ark.rst
│   │   │   ├── atlantic.rst
│   │   │   ├── avp.rst
│   │   │   ├── axgbe.rst
│   │   │   ├── bnx2x.rst
│   │   │   ├── bnxt.rst
│   │   │   ├── build_and_test.rst
│   │   │   ├── cnxk.rst
│   │   │   ├── cxgbe.rst
│   │   │   ├── dpaa2.rst
│   │   │   ├── dpaa.rst
│   │   │   ├── e1000em.rst
│   │   │   ├── ena.rst
│   │   │   ├── enetc.rst
│   │   │   ├── enetfec.rst
│   │   │   ├── enic.rst
│   │   │   ├── fail_safe.rst
│   │   │   ├── features
│   │   │   │   ├── afpacket.ini
│   │   │   │   ├── af_xdp.ini
│   │   │   │   ├── ark.ini
│   │   │   │   ├── atlantic.ini
│   │   │   │   ├── avp.ini
│   │   │   │   ├── axgbe.ini
│   │   │   │   ├── bnx2x.ini
│   │   │   │   ├── bnxt.ini
│   │   │   │   ├── cnxk.ini
│   │   │   │   ├── cnxk_vec.ini
│   │   │   │   ├── cnxk_vf.ini
│   │   │   │   ├── cxgbe.ini
│   │   │   │   ├── cxgbevf.ini
│   │   │   │   ├── default.ini
│   │   │   │   ├── dpaa2.ini
│   │   │   │   ├── dpaa.ini
│   │   │   │   ├── e1000.ini
│   │   │   │   ├── ena.ini
│   │   │   │   ├── enetc.ini
│   │   │   │   ├── enetfec.ini
│   │   │   │   ├── enic.ini
│   │   │   │   ├── failsafe.ini
│   │   │   │   ├── fm10k.ini
│   │   │   │   ├── fm10k_vf.ini
│   │   │   │   ├── hinic.ini
│   │   │   │   ├── hns3.ini
│   │   │   │   ├── hns3_vf.ini
│   │   │   │   ├── i40e.ini
│   │   │   │   ├── iavf.ini
│   │   │   │   ├── ice_dcf.ini
│   │   │   │   ├── ice.ini
│   │   │   │   ├── igb.ini
│   │   │   │   ├── igb_vf.ini
│   │   │   │   ├── igc.ini
│   │   │   │   ├── ionic.ini
│   │   │   │   ├── ipn3ke.ini
│   │   │   │   ├── ixgbe.ini
│   │   │   │   ├── ixgbe_vf.ini
│   │   │   │   ├── liquidio.ini
│   │   │   │   ├── memif.ini
│   │   │   │   ├── mlx4.ini
│   │   │   │   ├── mlx5.ini
│   │   │   │   ├── mvneta.ini
│   │   │   │   ├── mvpp2.ini
│   │   │   │   ├── netvsc.ini
│   │   │   │   ├── nfb.ini
│   │   │   │   ├── nfp.ini
│   │   │   │   ├── ngbe.ini
│   │   │   │   ├── octeontx_ep.ini
│   │   │   │   ├── octeontx.ini
│   │   │   │   ├── pcap.ini
│   │   │   │   ├── pfe.ini
│   │   │   │   ├── qede.ini
│   │   │   │   ├── qede_vf.ini
│   │   │   │   ├── sfc.ini
│   │   │   │   ├── tap.ini
│   │   │   │   ├── thunderx.ini
│   │   │   │   ├── txgbe.ini
│   │   │   │   ├── txgbe_vf.ini
│   │   │   │   ├── vhost.ini
│   │   │   │   ├── virtio.ini
│   │   │   │   └── vmxnet3.ini
│   │   │   ├── features.rst
│   │   │   ├── fm10k.rst
│   │   │   ├── hinic.rst
│   │   │   ├── hns3.rst
│   │   │   ├── i40e.rst
│   │   │   ├── ice.rst
│   │   │   ├── igb.rst
│   │   │   ├── igc.rst
│   │   │   ├── img
│   │   │   │   ├── console.png
│   │   │   │   ├── fast_pkt_proc.png
│   │   │   │   ├── forward_stats.png
│   │   │   │   ├── host_vm_comms.png
│   │   │   │   ├── host_vm_comms_qemu.png
│   │   │   │   ├── ice_dcf.svg
│   │   │   │   ├── intel_perf_test_setup.svg
│   │   │   │   ├── inter_vm_comms.png
│   │   │   │   ├── mvpp2_tm.svg
│   │   │   │   ├── perf_benchmark.png
│   │   │   │   ├── single_port_nic.png
│   │   │   │   ├── vm_vm_comms.png
│   │   │   │   ├── vmxnet3_int.png
│   │   │   │   └── vswitch_vm.png
│   │   │   ├── index.rst
│   │   │   ├── intel_vf.rst
│   │   │   ├── ionic.rst
│   │   │   ├── ipn3ke.rst
│   │   │   ├── ixgbe.rst
│   │   │   ├── kni.rst
│   │   │   ├── liquidio.rst
│   │   │   ├── memif.rst
│   │   │   ├── mlx4.rst
│   │   │   ├── mlx5.rst
│   │   │   ├── mvneta.rst
│   │   │   ├── mvpp2.rst
│   │   │   ├── netvsc.rst
│   │   │   ├── nfb.rst
│   │   │   ├── nfp.rst
│   │   │   ├── ngbe.rst
│   │   │   ├── null.rst
│   │   │   ├── octeontx_ep.rst
│   │   │   ├── octeontx.rst
│   │   │   ├── overview.rst
│   │   │   ├── pcap_ring.rst
│   │   │   ├── pfe.rst
│   │   │   ├── qede.rst
│   │   │   ├── sfc_efx.rst
│   │   │   ├── softnic.rst
│   │   │   ├── tap.rst
│   │   │   ├── thunderx.rst
│   │   │   ├── txgbe.rst
│   │   │   ├── vdev_netvsc.rst
│   │   │   ├── vhost.rst
│   │   │   ├── virtio.rst
│   │   │   └── vmxnet3.rst
│   │   ├── platform
│   │   │   ├── bluefield.rst
│   │   │   ├── cnxk.rst
│   │   │   ├── dpaa2.rst
│   │   │   ├── dpaa.rst
│   │   │   ├── img
│   │   │   │   ├── cnxk_packet_flow_hw_accelerators.svg
│   │   │   │   └── cnxk_resource_virtualization.svg
│   │   │   ├── index.rst
│   │   │   ├── mlx5.rst
│   │   │   └── octeontx.rst
│   │   ├── prog_guide
│   │   │   ├── asan.rst
│   │   │   ├── bbdev.rst
│   │   │   ├── bpf_lib.rst
│   │   │   ├── build_app.rst
│   │   │   ├── build-sdk-meson.rst
│   │   │   ├── compressdev.rst
│   │   │   ├── cryptodev_lib.rst
│   │   │   ├── dmadev.rst
│   │   │   ├── efd_lib.rst
│   │   │   ├── env_abstraction_layer.rst
│   │   │   ├── event_crypto_adapter.rst
│   │   │   ├── eventdev.rst
│   │   │   ├── event_ethernet_rx_adapter.rst
│   │   │   ├── event_ethernet_tx_adapter.rst
│   │   │   ├── event_timer_adapter.rst
│   │   │   ├── fib_lib.rst
│   │   │   ├── flow_classify_lib.rst
│   │   │   ├── generic_receive_offload_lib.rst
│   │   │   ├── generic_segmentation_offload_lib.rst
│   │   │   ├── glossary.rst
│   │   │   ├── gpudev.rst
│   │   │   ├── graph_lib.rst
│   │   │   ├── hash_lib.rst
│   │   │   ├── img
│   │   │   │   ├── anatomy_of_a_node.svg
│   │   │   │   ├── architecture-overview.svg
│   │   │   │   ├── blk_diag_dropper.png
│   │   │   │   ├── bond-mode-0.svg
│   │   │   │   ├── bond-mode-1.svg
│   │   │   │   ├── bond-mode-2.svg
│   │   │   │   ├── bond-mode-3.svg
│   │   │   │   ├── bond-mode-4.svg
│   │   │   │   ├── bond-mode-5.svg
│   │   │   │   ├── bond-overview.svg
│   │   │   │   ├── cryptodev_sym_sess.svg
│   │   │   │   ├── crypto_op.svg
│   │   │   │   ├── crypto_xform_chain.svg
│   │   │   │   ├── data_struct_per_port.png
│   │   │   │   ├── dir_24_8_alg.svg
│   │   │   │   ├── dmadev.svg
│   │   │   │   ├── drop_probability_eq3.png
│   │   │   │   ├── drop_probability_eq4.png
│   │   │   │   ├── drop_probability_graph.png
│   │   │   │   ├── efd_i10.svg
│   │   │   │   ├── efd_i11.svg
│   │   │   │   ├── efd_i12.svg
│   │   │   │   ├── efd_i1.svg
│   │   │   │   ├── efd_i2.svg
│   │   │   │   ├── efd_i3.svg
│   │   │   │   ├── efd_i4.svg
│   │   │   │   ├── efd_i5.svg
│   │   │   │   ├── efd_i6.svg
│   │   │   │   ├── efd_i7.svg
│   │   │   │   ├── efd_i8.svg
│   │   │   │   ├── efd_i9.svg
│   │   │   │   ├── eq2_expression.png
│   │   │   │   ├── eq2_factor.png
│   │   │   │   ├── event_crypto_adapter_op_forward.svg
│   │   │   │   ├── event_crypto_adapter_op_new.svg
│   │   │   │   ├── eventdev_usage.svg
│   │   │   │   ├── ewma_filter_eq_1.png
│   │   │   │   ├── ewma_filter_eq_2.png
│   │   │   │   ├── ex_data_flow_tru_dropper.png
│   │   │   │   ├── figure32.png
│   │   │   │   ├── figure33.png
│   │   │   │   ├── figure34.png
│   │   │   │   ├── figure35.png
│   │   │   │   ├── figure37.png
│   │   │   │   ├── figure38.png
│   │   │   │   ├── figure39.png
│   │   │   │   ├── flow_tru_dropper.png
│   │   │   │   ├── graph_mem_layout.svg
│   │   │   │   ├── gro-key-algorithm.svg
│   │   │   │   ├── gso-output-segment-format.svg
│   │   │   │   ├── gso-three-seg-mbuf.svg
│   │   │   │   ├── hier_sched_blk.png
│   │   │   │   ├── kernel_nic_intf.png
│   │   │   │   ├── kni_traffic_flow.png
│   │   │   │   ├── link_the_nodes.svg
│   │   │   │   ├── linuxapp_launch.svg
│   │   │   │   ├── malloc_heap.svg
│   │   │   │   ├── mbuf1.svg
│   │   │   │   ├── mbuf2.svg
│   │   │   │   ├── m_definition.png
│   │   │   │   ├── member_i1.svg
│   │   │   │   ├── member_i2.svg
│   │   │   │   ├── member_i3.svg
│   │   │   │   ├── member_i4.svg
│   │   │   │   ├── member_i5.svg
│   │   │   │   ├── member_i6.svg
│   │   │   │   ├── member_i7.svg
│   │   │   │   ├── memory-management2.svg
│   │   │   │   ├── memory-management.svg
│   │   │   │   ├── mempool.svg
│   │   │   │   ├── multi_process_memory.svg
│   │   │   │   ├── packet_distributor1.png
│   │   │   │   ├── packet_distributor2.png
│   │   │   │   ├── pipe_prefetch_sm.png
│   │   │   │   ├── pkt_drop_probability.png
│   │   │   │   ├── pkt_flow_kni.png
│   │   │   │   ├── pkt_proc_pipeline_qos.png
│   │   │   │   ├── predictable_snat_1.svg
│   │   │   │   ├── predictable_snat_2.svg
│   │   │   │   ├── prefetch_pipeline.png
│   │   │   │   ├── rcu_general_info.svg
│   │   │   │   ├── rib_internals.svg
│   │   │   │   ├── rib_pic.svg
│   │   │   │   ├── ring1.svg
│   │   │   │   ├── ring-dequeue1.svg
│   │   │   │   ├── ring-dequeue2.svg
│   │   │   │   ├── ring-dequeue3.svg
│   │   │   │   ├── ring-enqueue1.svg
│   │   │   │   ├── ring-enqueue2.svg
│   │   │   │   ├── ring-enqueue3.svg
│   │   │   │   ├── ring-modulo1.svg
│   │   │   │   ├── ring-modulo2.svg
│   │   │   │   ├── ring-mp-enqueue1.svg
│   │   │   │   ├── ring-mp-enqueue2.svg
│   │   │   │   ├── ring-mp-enqueue3.svg
│   │   │   │   ├── ring-mp-enqueue4.svg
│   │   │   │   ├── ring-mp-enqueue5.svg
│   │   │   │   ├── rss_queue_assign.svg
│   │   │   │   ├── rte_flow_async_init.svg
│   │   │   │   ├── rte_flow_async_usage.svg
│   │   │   │   ├── rte_mtr_meter_chaining.svg
│   │   │   │   ├── sched_hier_per_port.svg
│   │   │   │   ├── stateful-op.svg
│   │   │   │   ├── stateless-op-shared.svg
│   │   │   │   ├── stateless-op.svg
│   │   │   │   ├── tbl24_tbl8.png
│   │   │   │   ├── tbl24_tbl8_tbl8.png
│   │   │   │   ├── turbo_tb_decode.svg
│   │   │   │   ├── turbo_tb_encode.svg
│   │   │   │   └── vhost_net_arch.png
│   │   │   ├── index.rst
│   │   │   ├── intro.rst
│   │   │   ├── ip_fragment_reassembly_lib.rst
│   │   │   ├── ipsec_lib.rst
│   │   │   ├── kernel_nic_interface.rst
│   │   │   ├── link_bonding_poll_mode_drv_lib.rst
│   │   │   ├── lpm6_lib.rst
│   │   │   ├── lpm_lib.rst
│   │   │   ├── lto.rst
│   │   │   ├── mbuf_lib.rst
│   │   │   ├── member_lib.rst
│   │   │   ├── mempool_lib.rst
│   │   │   ├── meson_ut.rst
│   │   │   ├── metrics_lib.rst
│   │   │   ├── multi_proc_support.rst
│   │   │   ├── overview.rst
│   │   │   ├── packet_classif_access_ctrl.rst
│   │   │   ├── packet_distrib_lib.rst
│   │   │   ├── packet_framework.rst
│   │   │   ├── pcapng_lib.rst
│   │   │   ├── pdump_lib.rst
│   │   │   ├── perf_opt_guidelines.rst
│   │   │   ├── poll_mode_drv.rst
│   │   │   ├── power_man.rst
│   │   │   ├── profile_app.rst
│   │   │   ├── qos_framework.rst
│   │   │   ├── rawdev.rst
│   │   │   ├── rcu_lib.rst
│   │   │   ├── regexdev.rst
│   │   │   ├── reorder_lib.rst
│   │   │   ├── rib_lib.rst
│   │   │   ├── ring_lib.rst
│   │   │   ├── rte_flow.rst
│   │   │   ├── rte_security.rst
│   │   │   ├── service_cores.rst
│   │   │   ├── source_org.rst
│   │   │   ├── stack_lib.rst
│   │   │   ├── switch_representation.rst
│   │   │   ├── telemetry_lib.rst
│   │   │   ├── thread_safety_dpdk_functions.rst
│   │   │   ├── timer_lib.rst
│   │   │   ├── toeplitz_hash_lib.rst
│   │   │   ├── trace_lib.rst
│   │   │   ├── traffic_management.rst
│   │   │   ├── traffic_metering_and_policing.rst
│   │   │   ├── vhost_lib.rst
│   │   │   └── writing_efficient_code.rst
│   │   ├── rawdevs
│   │   │   ├── cnxk_bphy.rst
│   │   │   ├── cnxk_gpio.rst
│   │   │   ├── dpaa2_cmdif.rst
│   │   │   ├── dpaa2_qdma.rst
│   │   │   ├── ifpga.rst
│   │   │   ├── index.rst
│   │   │   ├── ioat.rst
│   │   │   └── ntb.rst
│   │   ├── regexdevs
│   │   │   ├── cn9k.rst
│   │   │   ├── features
│   │   │   │   ├── cn9k.ini
│   │   │   │   ├── default.ini
│   │   │   │   └── mlx5.ini
│   │   │   ├── features_overview.rst
│   │   │   ├── index.rst
│   │   │   └── mlx5.rst
│   │   ├── rel_notes
│   │   │   ├── deprecation.rst
│   │   │   ├── index.rst
│   │   │   ├── known_issues.rst
│   │   │   ├── release_16_04.rst
│   │   │   ├── release_16_07.rst
│   │   │   ├── release_16_11.rst
│   │   │   ├── release_17_02.rst
│   │   │   ├── release_17_05.rst
│   │   │   ├── release_17_08.rst
│   │   │   ├── release_17_11.rst
│   │   │   ├── release_18_02.rst
│   │   │   ├── release_18_05.rst
│   │   │   ├── release_18_08.rst
│   │   │   ├── release_18_11.rst
│   │   │   ├── release_1_8.rst
│   │   │   ├── release_19_02.rst
│   │   │   ├── release_19_05.rst
│   │   │   ├── release_19_08.rst
│   │   │   ├── release_19_11.rst
│   │   │   ├── release_20_02.rst
│   │   │   ├── release_20_05.rst
│   │   │   ├── release_20_08.rst
│   │   │   ├── release_20_11.rst
│   │   │   ├── release_2_0.rst
│   │   │   ├── release_21_02.rst
│   │   │   ├── release_21_05.rst
│   │   │   ├── release_21_08.rst
│   │   │   ├── release_21_11.rst
│   │   │   ├── release_2_1.rst
│   │   │   ├── release_22_03.rst
│   │   │   └── release_2_2.rst
│   │   ├── sample_app_ug
│   │   │   ├── bbdev_app.rst
│   │   │   ├── cmd_line.rst
│   │   │   ├── compiling.rst
│   │   │   ├── dist_app.rst
│   │   │   ├── dma.rst
│   │   │   ├── ethtool.rst
│   │   │   ├── eventdev_pipeline.rst
│   │   │   ├── fips_validation.rst
│   │   │   ├── flow_classify.rst
│   │   │   ├── flow_filtering.rst
│   │   │   ├── hello_world.rst
│   │   │   ├── img
│   │   │   │   ├── client_svr_sym_multi_proc_app.png
│   │   │   │   ├── dist_app.svg
│   │   │   │   ├── dist_perf.svg
│   │   │   │   ├── example_rules.png
│   │   │   │   ├── exception_path_example.svg
│   │   │   │   ├── ipsec_endpoints.svg
│   │   │   │   ├── ipv4_acl_rule.png
│   │   │   │   ├── kernel_nic.png
│   │   │   │   ├── l2_fwd_benchmark_setup.svg
│   │   │   │   ├── l2_fwd_encrypt_flow.svg
│   │   │   │   ├── l2_fwd_virtenv_benchmark_setup.png
│   │   │   │   ├── l2_fwd_vm2vm.svg
│   │   │   │   ├── load_bal_app_arch.png
│   │   │   │   ├── overlay_networking.svg
│   │   │   │   ├── pipeline_overview.png
│   │   │   │   ├── ptpclient.svg
│   │   │   │   ├── qos_sched_app_arch.png
│   │   │   │   ├── quickassist_block_diagram.png
│   │   │   │   ├── ring_pipeline_perf_setup.png
│   │   │   │   ├── server_node_efd.svg
│   │   │   │   ├── sym_multi_proc_app.png
│   │   │   │   ├── test_pipeline_app.png
│   │   │   │   ├── threads_pipelines.png
│   │   │   │   ├── vmdq_dcb_example.svg
│   │   │   │   ├── vm_power_mgr_highlevel.svg
│   │   │   │   └── vm_power_mgr_vm_request_seq.svg
│   │   │   ├── index.rst
│   │   │   ├── intro.rst
│   │   │   ├── ip_frag.rst
│   │   │   ├── ip_pipeline.rst
│   │   │   ├── ip_reassembly.rst
│   │   │   ├── ipsec_secgw.rst
│   │   │   ├── ipv4_multicast.rst
│   │   │   ├── keep_alive.rst
│   │   │   ├── kernel_nic_interface.rst
│   │   │   ├── l2_forward_cat.rst
│   │   │   ├── l2_forward_crypto.rst
│   │   │   ├── l2_forward_event.rst
│   │   │   ├── l2_forward_job_stats.rst
│   │   │   ├── l2_forward_real_virtual.rst
│   │   │   ├── l3_forward_access_ctrl.rst
│   │   │   ├── l3_forward_graph.rst
│   │   │   ├── l3_forward_power_man.rst
│   │   │   ├── l3_forward.rst
│   │   │   ├── link_status_intr.rst
│   │   │   ├── multi_process.rst
│   │   │   ├── ntb.rst
│   │   │   ├── packet_ordering.rst
│   │   │   ├── pipeline.rst
│   │   │   ├── ptpclient.rst
│   │   │   ├── qos_metering.rst
│   │   │   ├── qos_scheduler.rst
│   │   │   ├── rxtx_callbacks.rst
│   │   │   ├── server_node_efd.rst
│   │   │   ├── service_cores.rst
│   │   │   ├── skeleton.rst
│   │   │   ├── test_pipeline.rst
│   │   │   ├── timer.rst
│   │   │   ├── vdpa.rst
│   │   │   ├── vhost_blk.rst
│   │   │   ├── vhost_crypto.rst
│   │   │   ├── vhost.rst
│   │   │   ├── vmdq_dcb_forwarding.rst
│   │   │   ├── vmdq_forwarding.rst
│   │   │   └── vm_power_management.rst
│   │   ├── testpmd_app_ug
│   │   │   ├── build_app.rst
│   │   │   ├── index.rst
│   │   │   ├── intro.rst
│   │   │   ├── run_app.rst
│   │   │   └── testpmd_funcs.rst
│   │   ├── tools
│   │   │   ├── comp_perf.rst
│   │   │   ├── cryptoperf.rst
│   │   │   ├── devbind.rst
│   │   │   ├── dumpcap.rst
│   │   │   ├── flow-perf.rst
│   │   │   ├── hugepages.rst
│   │   │   ├── img
│   │   │   │   ├── eventdev_order_atq_test.svg
│   │   │   │   ├── eventdev_order_queue_test.svg
│   │   │   │   ├── eventdev_perf_atq_test.svg
│   │   │   │   ├── eventdev_perf_queue_test.svg
│   │   │   │   ├── eventdev_pipeline_atq_test_generic.svg
│   │   │   │   ├── eventdev_pipeline_atq_test_internal_port.svg
│   │   │   │   ├── eventdev_pipeline_queue_test_generic.svg
│   │   │   │   └── eventdev_pipeline_queue_test_internal_port.svg
│   │   │   ├── index.rst
│   │   │   ├── pdump.rst
│   │   │   ├── pmdinfo.rst
│   │   │   ├── proc_info.rst
│   │   │   ├── testbbdev.rst
│   │   │   ├── testeventdev.rst
│   │   │   └── testregex.rst
│   │   ├── vdpadevs
│   │   │   ├── features
│   │   │   │   ├── default.ini
│   │   │   │   ├── ifcvf.ini
│   │   │   │   ├── mlx5.ini
│   │   │   │   └── sfc.ini
│   │   │   ├── features_overview.rst
│   │   │   ├── ifc.rst
│   │   │   ├── index.rst
│   │   │   ├── mlx5.rst
│   │   │   └── sfc.rst
│   │   └── windows_gsg
│   │       ├── build_dpdk.rst
│   │       ├── index.rst
│   │       ├── intro.rst
│   │       └── run_apps.rst
│   ├── logo
│   │   ├── DPDK_logo_horizontal_tag.png
│   │   └── DPDK_logo_vertical_rev_small.png
│   └── meson.build
├── drivers
│   ├── baseband
│   │   ├── acc100
│   │   │   ├── acc100_pf_enum.h
│   │   │   ├── acc100_vf_enum.h
│   │   │   ├── meson.build
│   │   │   ├── rte_acc100_cfg.h
│   │   │   ├── rte_acc100_pmd.c
│   │   │   ├── rte_acc100_pmd.h
│   │   │   └── version.map
│   │   ├── fpga_5gnr_fec
│   │   │   ├── fpga_5gnr_fec.h
│   │   │   ├── meson.build
│   │   │   ├── rte_fpga_5gnr_fec.c
│   │   │   ├── rte_pmd_fpga_5gnr_fec.h
│   │   │   └── version.map
│   │   ├── fpga_lte_fec
│   │   │   ├── fpga_lte_fec.c
│   │   │   ├── fpga_lte_fec.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── la12xx
│   │   │   ├── bbdev_la12xx.c
│   │   │   ├── bbdev_la12xx.h
│   │   │   ├── bbdev_la12xx_ipc.h
│   │   │   ├── bbdev_la12xx_pmd_logs.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── null
│   │   │   ├── bbdev_null.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   └── turbo_sw
│   │       ├── bbdev_turbo_software.c
│   │       ├── meson.build
│   │       └── version.map
│   ├── bus
│   │   ├── auxiliary
│   │   │   ├── auxiliary_common.c
│   │   │   ├── auxiliary_params.c
│   │   │   ├── linux
│   │   │   │   └── auxiliary.c
│   │   │   ├── meson.build
│   │   │   ├── private.h
│   │   │   ├── rte_bus_auxiliary.h
│   │   │   └── version.map
│   │   ├── dpaa
│   │   │   ├── base
│   │   │   │   ├── fman
│   │   │   │   │   ├── fman.c
│   │   │   │   │   ├── fman_hw.c
│   │   │   │   │   └── netcfg_layer.c
│   │   │   │   └── qbman
│   │   │   │       ├── bman.c
│   │   │   │       ├── bman_driver.c
│   │   │   │       ├── bman.h
│   │   │   │       ├── bman_priv.h
│   │   │   │       ├── dpaa_alloc.c
│   │   │   │       ├── dpaa_sys.c
│   │   │   │       ├── dpaa_sys.h
│   │   │   │       ├── process.c
│   │   │   │       ├── qman.c
│   │   │   │       ├── qman_driver.c
│   │   │   │       ├── qman.h
│   │   │   │       └── qman_priv.h
│   │   │   ├── dpaa_bus.c
│   │   │   ├── include
│   │   │   │   ├── dpaa_bits.h
│   │   │   │   ├── dpaa_rbtree.h
│   │   │   │   ├── fman.h
│   │   │   │   ├── fsl_bman.h
│   │   │   │   ├── fsl_fman_crc64.h
│   │   │   │   ├── fsl_fman.h
│   │   │   │   ├── fsl_qman.h
│   │   │   │   ├── fsl_usd.h
│   │   │   │   ├── netcfg.h
│   │   │   │   └── process.h
│   │   │   ├── meson.build
│   │   │   ├── rte_dpaa_bus.h
│   │   │   ├── rte_dpaa_logs.h
│   │   │   └── version.map
│   │   ├── fslmc
│   │   │   ├── fslmc_bus.c
│   │   │   ├── fslmc_logs.h
│   │   │   ├── fslmc_vfio.c
│   │   │   ├── fslmc_vfio.h
│   │   │   ├── mc
│   │   │   │   ├── dpbp.c
│   │   │   │   ├── dpci.c
│   │   │   │   ├── dpcon.c
│   │   │   │   ├── dpdmai.c
│   │   │   │   ├── dpio.c
│   │   │   │   ├── dpmng.c
│   │   │   │   ├── dprc.c
│   │   │   │   ├── fsl_dpbp_cmd.h
│   │   │   │   ├── fsl_dpbp.h
│   │   │   │   ├── fsl_dpci_cmd.h
│   │   │   │   ├── fsl_dpci.h
│   │   │   │   ├── fsl_dpcon_cmd.h
│   │   │   │   ├── fsl_dpcon.h
│   │   │   │   ├── fsl_dpdmai_cmd.h
│   │   │   │   ├── fsl_dpdmai.h
│   │   │   │   ├── fsl_dpio_cmd.h
│   │   │   │   ├── fsl_dpio.h
│   │   │   │   ├── fsl_dpmng_cmd.h
│   │   │   │   ├── fsl_dpmng.h
│   │   │   │   ├── fsl_dpopr.h
│   │   │   │   ├── fsl_dprc_cmd.h
│   │   │   │   ├── fsl_dprc.h
│   │   │   │   ├── fsl_mc_cmd.h
│   │   │   │   ├── fsl_mc_sys.h
│   │   │   │   └── mc_sys.c
│   │   │   ├── meson.build
│   │   │   ├── portal
│   │   │   │   ├── dpaa2_hw_dpbp.c
│   │   │   │   ├── dpaa2_hw_dpci.c
│   │   │   │   ├── dpaa2_hw_dpio.c
│   │   │   │   ├── dpaa2_hw_dpio.h
│   │   │   │   ├── dpaa2_hw_dprc.c
│   │   │   │   └── dpaa2_hw_pvt.h
│   │   │   ├── qbman
│   │   │   │   ├── include
│   │   │   │   │   ├── compat.h
│   │   │   │   │   ├── fsl_qbman_base.h
│   │   │   │   │   ├── fsl_qbman_debug.h
│   │   │   │   │   └── fsl_qbman_portal.h
│   │   │   │   ├── qbman_debug.c
│   │   │   │   ├── qbman_portal.c
│   │   │   │   ├── qbman_portal.h
│   │   │   │   ├── qbman_sys_decl.h
│   │   │   │   └── qbman_sys.h
│   │   │   ├── rte_fslmc.h
│   │   │   └── version.map
│   │   ├── ifpga
│   │   │   ├── ifpga_bus.c
│   │   │   ├── ifpga_common.c
│   │   │   ├── ifpga_common.h
│   │   │   ├── ifpga_logs.h
│   │   │   ├── meson.build
│   │   │   ├── rte_bus_ifpga.h
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── pci
│   │   │   ├── bsd
│   │   │   │   └── pci.c
│   │   │   ├── linux
│   │   │   │   ├── pci.c
│   │   │   │   ├── pci_init.h
│   │   │   │   ├── pci_uio.c
│   │   │   │   └── pci_vfio.c
│   │   │   ├── meson.build
│   │   │   ├── pci_common.c
│   │   │   ├── pci_common_uio.c
│   │   │   ├── pci_params.c
│   │   │   ├── private.h
│   │   │   ├── rte_bus_pci.h
│   │   │   ├── version.map
│   │   │   └── windows
│   │   │       ├── pci.c
│   │   │       ├── pci_netuio.c
│   │   │       └── pci_netuio.h
│   │   ├── vdev
│   │   │   ├── meson.build
│   │   │   ├── rte_bus_vdev.h
│   │   │   ├── vdev.c
│   │   │   ├── vdev_logs.h
│   │   │   ├── vdev_params.c
│   │   │   ├── vdev_private.h
│   │   │   └── version.map
│   │   └── vmbus
│   │       ├── linux
│   │       │   ├── vmbus_bus.c
│   │       │   └── vmbus_uio.c
│   │       ├── meson.build
│   │       ├── private.h
│   │       ├── rte_bus_vmbus.h
│   │       ├── rte_vmbus_reg.h
│   │       ├── version.map
│   │       ├── vmbus_bufring.c
│   │       ├── vmbus_channel.c
│   │       ├── vmbus_common.c
│   │       └── vmbus_common_uio.c
│   ├── common
│   │   ├── cnxk
│   │   │   ├── cnxk_security_ar.h
│   │   │   ├── cnxk_security.c
│   │   │   ├── cnxk_security.h
│   │   │   ├── cnxk_telemetry_bphy.c
│   │   │   ├── cnxk_telemetry.h
│   │   │   ├── cnxk_telemetry_nix.c
│   │   │   ├── cnxk_telemetry_npa.c
│   │   │   ├── cnxk_telemetry_sso.c
│   │   │   ├── cnxk_utils.c
│   │   │   ├── cnxk_utils.h
│   │   │   ├── hw
│   │   │   │   ├── cpt.h
│   │   │   │   ├── dpi.h
│   │   │   │   ├── nix.h
│   │   │   │   ├── npa.h
│   │   │   │   ├── npc.h
│   │   │   │   ├── ree.h
│   │   │   │   ├── rvu.h
│   │   │   │   ├── sdp.h
│   │   │   │   ├── sso.h
│   │   │   │   ├── ssow.h
│   │   │   │   └── tim.h
│   │   │   ├── meson.build
│   │   │   ├── roc_ae.c
│   │   │   ├── roc_ae_fpm_tables.c
│   │   │   ├── roc_ae_fpm_tables.h
│   │   │   ├── roc_ae.h
│   │   │   ├── roc_aes.c
│   │   │   ├── roc_aes.h
│   │   │   ├── roc_api.h
│   │   │   ├── roc_bitfield.h
│   │   │   ├── roc_bits.h
│   │   │   ├── roc_bphy.c
│   │   │   ├── roc_bphy_cgx.c
│   │   │   ├── roc_bphy_cgx.h
│   │   │   ├── roc_bphy_cgx_priv.h
│   │   │   ├── roc_bphy.h
│   │   │   ├── roc_bphy_irq.c
│   │   │   ├── roc_bphy_irq.h
│   │   │   ├── roc_constants.h
│   │   │   ├── roc_cpt.c
│   │   │   ├── roc_cpt_debug.c
│   │   │   ├── roc_cpt.h
│   │   │   ├── roc_cpt_priv.h
│   │   │   ├── roc_dev.c
│   │   │   ├── roc_dev_priv.h
│   │   │   ├── roc_dpi.c
│   │   │   ├── roc_dpi.h
│   │   │   ├── roc_dpi_priv.h
│   │   │   ├── roc_hash.c
│   │   │   ├── roc_hash.h
│   │   │   ├── roc_idev.c
│   │   │   ├── roc_idev.h
│   │   │   ├── roc_idev_priv.h
│   │   │   ├── roc_ie.h
│   │   │   ├── roc_ie_on.h
│   │   │   ├── roc_ie_ot.c
│   │   │   ├── roc_ie_ot.h
│   │   │   ├── roc_io_generic.h
│   │   │   ├── roc_io.h
│   │   │   ├── roc_irq.c
│   │   │   ├── roc_mbox.c
│   │   │   ├── roc_mbox.h
│   │   │   ├── roc_mbox_priv.h
│   │   │   ├── roc_model.c
│   │   │   ├── roc_model.h
│   │   │   ├── roc_nix_bpf.c
│   │   │   ├── roc_nix.c
│   │   │   ├── roc_nix_debug.c
│   │   │   ├── roc_nix_fc.c
│   │   │   ├── roc_nix.h
│   │   │   ├── roc_nix_inl.c
│   │   │   ├── roc_nix_inl_dev.c
│   │   │   ├── roc_nix_inl_dev_irq.c
│   │   │   ├── roc_nix_inl.h
│   │   │   ├── roc_nix_inl_priv.h
│   │   │   ├── roc_nix_irq.c
│   │   │   ├── roc_nix_mac.c
│   │   │   ├── roc_nix_mcast.c
│   │   │   ├── roc_nix_npc.c
│   │   │   ├── roc_nix_ops.c
│   │   │   ├── roc_nix_priv.h
│   │   │   ├── roc_nix_ptp.c
│   │   │   ├── roc_nix_queue.c
│   │   │   ├── roc_nix_rss.c
│   │   │   ├── roc_nix_stats.c
│   │   │   ├── roc_nix_tm.c
│   │   │   ├── roc_nix_tm_mark.c
│   │   │   ├── roc_nix_tm_ops.c
│   │   │   ├── roc_nix_tm_utils.c
│   │   │   ├── roc_nix_vlan.c
│   │   │   ├── roc_nix_xstats.h
│   │   │   ├── roc_npa.c
│   │   │   ├── roc_npa_debug.c
│   │   │   ├── roc_npa.h
│   │   │   ├── roc_npa_irq.c
│   │   │   ├── roc_npa_priv.h
│   │   │   ├── roc_npc.c
│   │   │   ├── roc_npc.h
│   │   │   ├── roc_npc_mcam.c
│   │   │   ├── roc_npc_mcam_dump.c
│   │   │   ├── roc_npc_parse.c
│   │   │   ├── roc_npc_priv.h
│   │   │   ├── roc_npc_utils.c
│   │   │   ├── roc_platform.c
│   │   │   ├── roc_platform.h
│   │   │   ├── roc_priv.h
│   │   │   ├── roc_ree.c
│   │   │   ├── roc_ree.h
│   │   │   ├── roc_ree_priv.h
│   │   │   ├── roc_se.c
│   │   │   ├── roc_se.h
│   │   │   ├── roc_sso.c
│   │   │   ├── roc_sso_debug.c
│   │   │   ├── roc_sso.h
│   │   │   ├── roc_sso_irq.c
│   │   │   ├── roc_sso_priv.h
│   │   │   ├── roc_tim.c
│   │   │   ├── roc_tim.h
│   │   │   ├── roc_tim_irq.c
│   │   │   ├── roc_tim_priv.h
│   │   │   ├── roc_util_priv.h
│   │   │   ├── roc_utils.c
│   │   │   ├── roc_utils.h
│   │   │   └── version.map
│   │   ├── cpt
│   │   │   ├── cpt_common.h
│   │   │   ├── cpt_fpm_tables.c
│   │   │   ├── cpt_hw_types.h
│   │   │   ├── cpt_mcode_defines.h
│   │   │   ├── cpt_pmd_logs.h
│   │   │   ├── cpt_pmd_ops_helper.c
│   │   │   ├── cpt_pmd_ops_helper.h
│   │   │   ├── cpt_ucode_asym.h
│   │   │   ├── cpt_ucode.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaax
│   │   │   ├── caamflib
│   │   │   │   ├── compat.h
│   │   │   │   ├── desc
│   │   │   │   │   ├── algo.h
│   │   │   │   │   ├── common.h
│   │   │   │   │   ├── ipsec.h
│   │   │   │   │   ├── pdcp.h
│   │   │   │   │   └── sdap.h
│   │   │   │   ├── desc.h
│   │   │   │   ├── rta
│   │   │   │   │   ├── fifo_load_store_cmd.h
│   │   │   │   │   ├── header_cmd.h
│   │   │   │   │   ├── jump_cmd.h
│   │   │   │   │   ├── key_cmd.h
│   │   │   │   │   ├── load_cmd.h
│   │   │   │   │   ├── math_cmd.h
│   │   │   │   │   ├── move_cmd.h
│   │   │   │   │   ├── nfifo_cmd.h
│   │   │   │   │   ├── operation_cmd.h
│   │   │   │   │   ├── protocol_cmd.h
│   │   │   │   │   ├── sec_run_time_asm.h
│   │   │   │   │   ├── seq_in_out_ptr_cmd.h
│   │   │   │   │   ├── signature_cmd.h
│   │   │   │   │   └── store_cmd.h
│   │   │   │   └── rta.h
│   │   │   ├── caamflib.c
│   │   │   ├── compat.h
│   │   │   ├── dpaa_list.h
│   │   │   ├── dpaa_of.c
│   │   │   ├── dpaa_of.h
│   │   │   ├── dpaax_iova_table.c
│   │   │   ├── dpaax_iova_table.h
│   │   │   ├── dpaax_logs.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── iavf
│   │   │   ├── iavf_adminq.c
│   │   │   ├── iavf_adminq_cmd.h
│   │   │   ├── iavf_adminq.h
│   │   │   ├── iavf_alloc.h
│   │   │   ├── iavf_common.c
│   │   │   ├── iavf_devids.h
│   │   │   ├── iavf_impl.c
│   │   │   ├── iavf_osdep.h
│   │   │   ├── iavf_prototype.h
│   │   │   ├── iavf_register.h
│   │   │   ├── iavf_status.h
│   │   │   ├── iavf_type.h
│   │   │   ├── meson.build
│   │   │   ├── README
│   │   │   ├── version.map
│   │   │   ├── virtchnl.h
│   │   │   └── virtchnl_inline_ipsec.h
│   │   ├── meson.build
│   │   ├── mlx5
│   │   │   ├── linux
│   │   │   │   ├── meson.build
│   │   │   │   ├── mlx5_common_auxiliary.c
│   │   │   │   ├── mlx5_common_os.c
│   │   │   │   ├── mlx5_common_os.h
│   │   │   │   ├── mlx5_common_verbs.c
│   │   │   │   ├── mlx5_glue.c
│   │   │   │   ├── mlx5_glue.h
│   │   │   │   ├── mlx5_nl.c
│   │   │   │   └── mlx5_nl.h
│   │   │   ├── meson.build
│   │   │   ├── mlx5_common.c
│   │   │   ├── mlx5_common_defs.h
│   │   │   ├── mlx5_common_devx.c
│   │   │   ├── mlx5_common_devx.h
│   │   │   ├── mlx5_common.h
│   │   │   ├── mlx5_common_log.h
│   │   │   ├── mlx5_common_mp.c
│   │   │   ├── mlx5_common_mp.h
│   │   │   ├── mlx5_common_mr.c
│   │   │   ├── mlx5_common_mr.h
│   │   │   ├── mlx5_common_pci.c
│   │   │   ├── mlx5_common_private.h
│   │   │   ├── mlx5_common_utils.c
│   │   │   ├── mlx5_common_utils.h
│   │   │   ├── mlx5_devx_cmds.c
│   │   │   ├── mlx5_devx_cmds.h
│   │   │   ├── mlx5_malloc.c
│   │   │   ├── mlx5_malloc.h
│   │   │   ├── mlx5_prm.h
│   │   │   ├── version.map
│   │   │   └── windows
│   │   │       ├── meson.build
│   │   │       ├── mlx5_common_os.c
│   │   │       ├── mlx5_common_os.h
│   │   │       ├── mlx5_glue.c
│   │   │       ├── mlx5_glue.h
│   │   │       ├── mlx5_win_defs.h
│   │   │       └── mlx5_win_ext.h
│   │   ├── mvep
│   │   │   ├── meson.build
│   │   │   ├── mvep_common.c
│   │   │   ├── rte_mvep_common.h
│   │   │   └── version.map
│   │   ├── octeontx
│   │   │   ├── meson.build
│   │   │   ├── octeontx_mbox.c
│   │   │   ├── octeontx_mbox.h
│   │   │   └── version.map
│   │   ├── qat
│   │   │   ├── dev
│   │   │   │   ├── qat_dev_gen1.c
│   │   │   │   ├── qat_dev_gen2.c
│   │   │   │   ├── qat_dev_gen3.c
│   │   │   │   ├── qat_dev_gen4.c
│   │   │   │   └── qat_dev_gens.h
│   │   │   ├── meson.build
│   │   │   ├── qat_adf
│   │   │   │   ├── adf_pf2vf_msg.h
│   │   │   │   ├── adf_transport_access_macros_gen4.h
│   │   │   │   ├── adf_transport_access_macros_gen4vf.h
│   │   │   │   ├── adf_transport_access_macros.h
│   │   │   │   ├── icp_qat_fw_comp.h
│   │   │   │   ├── icp_qat_fw.h
│   │   │   │   ├── icp_qat_fw_la.h
│   │   │   │   ├── icp_qat_fw_mmp_ids.h
│   │   │   │   ├── icp_qat_fw_pke.h
│   │   │   │   ├── icp_qat_hw_gen4_comp_defs.h
│   │   │   │   ├── icp_qat_hw_gen4_comp.h
│   │   │   │   ├── icp_qat_hw.h
│   │   │   │   └── qat_pke.h
│   │   │   ├── qat_common.c
│   │   │   ├── qat_common.h
│   │   │   ├── qat_device.c
│   │   │   ├── qat_device.h
│   │   │   ├── qat_logs.c
│   │   │   ├── qat_logs.h
│   │   │   ├── qat_pf2vf.c
│   │   │   ├── qat_pf2vf.h
│   │   │   ├── qat_qp.c
│   │   │   ├── qat_qp.h
│   │   │   └── version.map
│   │   └── sfc_efx
│   │       ├── base
│   │       │   ├── ef10_evb.c
│   │       │   ├── ef10_ev.c
│   │       │   ├── ef10_filter.c
│   │       │   ├── ef10_firmware_ids.h
│   │       │   ├── ef10_image.c
│   │       │   ├── ef10_impl.h
│   │       │   ├── ef10_intr.c
│   │       │   ├── ef10_mac.c
│   │       │   ├── ef10_mcdi.c
│   │       │   ├── ef10_nic.c
│   │       │   ├── ef10_nvram.c
│   │       │   ├── ef10_phy.c
│   │       │   ├── ef10_proxy.c
│   │       │   ├── ef10_rx.c
│   │       │   ├── ef10_signed_image_layout.h
│   │       │   ├── ef10_tlv_layout.h
│   │       │   ├── ef10_tx.c
│   │       │   ├── ef10_vpd.c
│   │       │   ├── efx_annote.h
│   │       │   ├── efx_bootcfg.c
│   │       │   ├── efx_check.h
│   │       │   ├── efx_crc32.c
│   │       │   ├── efx_evb.c
│   │       │   ├── efx_ev.c
│   │       │   ├── efx_filter.c
│   │       │   ├── efx.h
│   │       │   ├── efx_hash.c
│   │       │   ├── efx_impl.h
│   │       │   ├── efx_intr.c
│   │       │   ├── efx_lic.c
│   │       │   ├── efx_mac.c
│   │       │   ├── efx_mae.c
│   │       │   ├── efx_mcdi.c
│   │       │   ├── efx_mcdi.h
│   │       │   ├── efx_mon.c
│   │       │   ├── efx_nic.c
│   │       │   ├── efx_nvram.c
│   │       │   ├── efx_pci.c
│   │       │   ├── efx_phy.c
│   │       │   ├── efx_phy_ids.h
│   │       │   ├── efx_port.c
│   │       │   ├── efx_proxy.c
│   │       │   ├── efx_regs_counters_pkt_format.h
│   │       │   ├── efx_regs_ef100.h
│   │       │   ├── efx_regs_ef10.h
│   │       │   ├── efx_regs.h
│   │       │   ├── efx_regs_mcdi_aoe.h
│   │       │   ├── efx_regs_mcdi.h
│   │       │   ├── efx_regs_mcdi_strs.h
│   │       │   ├── efx_regs_pci.h
│   │       │   ├── efx_rx.c
│   │       │   ├── efx_sram.c
│   │       │   ├── efx_tunnel.c
│   │       │   ├── efx_tx.c
│   │       │   ├── efx_types.h
│   │       │   ├── efx_virtio.c
│   │       │   ├── efx_vpd.c
│   │       │   ├── hunt_impl.h
│   │       │   ├── hunt_nic.c
│   │       │   ├── mcdi_mon.c
│   │       │   ├── mcdi_mon.h
│   │       │   ├── medford2_impl.h
│   │       │   ├── medford2_nic.c
│   │       │   ├── medford_impl.h
│   │       │   ├── medford_nic.c
│   │       │   ├── meson.build
│   │       │   ├── README
│   │       │   ├── rhead_ev.c
│   │       │   ├── rhead_impl.h
│   │       │   ├── rhead_intr.c
│   │       │   ├── rhead_nic.c
│   │       │   ├── rhead_pci.c
│   │       │   ├── rhead_rx.c
│   │       │   ├── rhead_tunnel.c
│   │       │   ├── rhead_tx.c
│   │       │   ├── rhead_virtio.c
│   │       │   ├── siena_flash.h
│   │       │   ├── siena_impl.h
│   │       │   ├── siena_mac.c
│   │       │   ├── siena_mcdi.c
│   │       │   ├── siena_nic.c
│   │       │   ├── siena_nvram.c
│   │       │   ├── siena_phy.c
│   │       │   ├── siena_sram.c
│   │       │   └── siena_vpd.c
│   │       ├── efsys.h
│   │       ├── meson.build
│   │       ├── sfc_efx.c
│   │       ├── sfc_efx_debug.h
│   │       ├── sfc_efx.h
│   │       ├── sfc_efx_log.h
│   │       ├── sfc_efx_mcdi.c
│   │       ├── sfc_efx_mcdi.h
│   │       └── version.map
│   ├── compress
│   │   ├── isal
│   │   │   ├── isal_compress_pmd.c
│   │   │   ├── isal_compress_pmd_ops.c
│   │   │   ├── isal_compress_pmd_private.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── mlx5
│   │   │   ├── meson.build
│   │   │   ├── mlx5_compress.c
│   │   │   ├── mlx5_compress_utils.h
│   │   │   └── version.map
│   │   ├── octeontx
│   │   │   ├── include
│   │   │   │   └── zip_regs.h
│   │   │   ├── meson.build
│   │   │   ├── otx_zip.c
│   │   │   ├── otx_zip.h
│   │   │   ├── otx_zip_pmd.c
│   │   │   └── version.map
│   │   ├── qat
│   │   │   ├── dev
│   │   │   │   ├── qat_comp_pmd_gen1.c
│   │   │   │   ├── qat_comp_pmd_gen2.c
│   │   │   │   ├── qat_comp_pmd_gen3.c
│   │   │   │   ├── qat_comp_pmd_gen4.c
│   │   │   │   └── qat_comp_pmd_gens.h
│   │   │   ├── qat_comp.c
│   │   │   ├── qat_comp.h
│   │   │   ├── qat_comp_pmd.c
│   │   │   └── qat_comp_pmd.h
│   │   └── zlib
│   │       ├── meson.build
│   │       ├── version.map
│   │       ├── zlib_pmd.c
│   │       ├── zlib_pmd_ops.c
│   │       └── zlib_pmd_private.h
│   ├── crypto
│   │   ├── armv8
│   │   │   ├── armv8_pmd_private.h
│   │   │   ├── meson.build
│   │   │   ├── rte_armv8_pmd.c
│   │   │   ├── rte_armv8_pmd_ops.c
│   │   │   └── version.map
│   │   ├── bcmfs
│   │   │   ├── bcmfs_device.c
│   │   │   ├── bcmfs_device.h
│   │   │   ├── bcmfs_dev_msg.h
│   │   │   ├── bcmfs_hw_defs.h
│   │   │   ├── bcmfs_logs.c
│   │   │   ├── bcmfs_logs.h
│   │   │   ├── bcmfs_qp.c
│   │   │   ├── bcmfs_qp.h
│   │   │   ├── bcmfs_sym.c
│   │   │   ├── bcmfs_sym_capabilities.c
│   │   │   ├── bcmfs_sym_capabilities.h
│   │   │   ├── bcmfs_sym_defs.h
│   │   │   ├── bcmfs_sym_engine.c
│   │   │   ├── bcmfs_sym_engine.h
│   │   │   ├── bcmfs_sym_pmd.c
│   │   │   ├── bcmfs_sym_pmd.h
│   │   │   ├── bcmfs_sym_req.h
│   │   │   ├── bcmfs_sym_session.c
│   │   │   ├── bcmfs_sym_session.h
│   │   │   ├── bcmfs_vfio.c
│   │   │   ├── bcmfs_vfio.h
│   │   │   ├── hw
│   │   │   │   ├── bcmfs4_rm.c
│   │   │   │   ├── bcmfs5_rm.c
│   │   │   │   ├── bcmfs_rm_common.c
│   │   │   │   └── bcmfs_rm_common.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── caam_jr
│   │   │   ├── caam_jr.c
│   │   │   ├── caam_jr_capabilities.c
│   │   │   ├── caam_jr_capabilities.h
│   │   │   ├── caam_jr_config.h
│   │   │   ├── caam_jr_desc.h
│   │   │   ├── caam_jr_hw.c
│   │   │   ├── caam_jr_hw_specific.h
│   │   │   ├── caam_jr_log.h
│   │   │   ├── caam_jr_pvt.h
│   │   │   ├── caam_jr_uio.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ccp
│   │   │   ├── ccp_crypto.c
│   │   │   ├── ccp_crypto.h
│   │   │   ├── ccp_dev.c
│   │   │   ├── ccp_dev.h
│   │   │   ├── ccp_pci.c
│   │   │   ├── ccp_pci.h
│   │   │   ├── ccp_pmd_ops.c
│   │   │   ├── ccp_pmd_private.h
│   │   │   ├── meson.build
│   │   │   ├── rte_ccp_pmd.c
│   │   │   └── version.map
│   │   ├── cnxk
│   │   │   ├── cn10k_cryptodev.c
│   │   │   ├── cn10k_cryptodev.h
│   │   │   ├── cn10k_cryptodev_ops.c
│   │   │   ├── cn10k_cryptodev_ops.h
│   │   │   ├── cn10k_ipsec.c
│   │   │   ├── cn10k_ipsec.h
│   │   │   ├── cn10k_ipsec_la_ops.h
│   │   │   ├── cn9k_cryptodev.c
│   │   │   ├── cn9k_cryptodev.h
│   │   │   ├── cn9k_cryptodev_ops.c
│   │   │   ├── cn9k_cryptodev_ops.h
│   │   │   ├── cn9k_ipsec.c
│   │   │   ├── cn9k_ipsec.h
│   │   │   ├── cn9k_ipsec_la_ops.h
│   │   │   ├── cnxk_ae.h
│   │   │   ├── cnxk_cryptodev.c
│   │   │   ├── cnxk_cryptodev_capabilities.c
│   │   │   ├── cnxk_cryptodev_capabilities.h
│   │   │   ├── cnxk_cryptodev_devargs.c
│   │   │   ├── cnxk_cryptodev.h
│   │   │   ├── cnxk_cryptodev_ops.c
│   │   │   ├── cnxk_cryptodev_ops.h
│   │   │   ├── cnxk_cryptodev_sec.c
│   │   │   ├── cnxk_cryptodev_sec.h
│   │   │   ├── cnxk_ipsec.h
│   │   │   ├── cnxk_se.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa2_sec
│   │   │   ├── dpaa2_sec_dpseci.c
│   │   │   ├── dpaa2_sec_event.h
│   │   │   ├── dpaa2_sec_logs.h
│   │   │   ├── dpaa2_sec_priv.h
│   │   │   ├── dpaa2_sec_raw_dp.c
│   │   │   ├── mc
│   │   │   │   ├── dpseci.c
│   │   │   │   ├── fsl_dpseci_cmd.h
│   │   │   │   └── fsl_dpseci.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa_sec
│   │   │   ├── dpaa_sec.c
│   │   │   ├── dpaa_sec_event.h
│   │   │   ├── dpaa_sec.h
│   │   │   ├── dpaa_sec_log.h
│   │   │   ├── dpaa_sec_raw_dp.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ipsec_mb
│   │   │   ├── ipsec_mb_ops.c
│   │   │   ├── ipsec_mb_private.c
│   │   │   ├── ipsec_mb_private.h
│   │   │   ├── meson.build
│   │   │   ├── pmd_aesni_gcm.c
│   │   │   ├── pmd_aesni_gcm_priv.h
│   │   │   ├── pmd_aesni_mb.c
│   │   │   ├── pmd_aesni_mb_priv.h
│   │   │   ├── pmd_chacha_poly.c
│   │   │   ├── pmd_chacha_poly_priv.h
│   │   │   ├── pmd_kasumi.c
│   │   │   ├── pmd_kasumi_priv.h
│   │   │   ├── pmd_snow3g.c
│   │   │   ├── pmd_snow3g_priv.h
│   │   │   ├── pmd_zuc.c
│   │   │   ├── pmd_zuc_priv.h
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── mlx5
│   │   │   ├── meson.build
│   │   │   ├── mlx5_crypto.c
│   │   │   ├── mlx5_crypto_dek.c
│   │   │   ├── mlx5_crypto.h
│   │   │   ├── mlx5_crypto_utils.h
│   │   │   └── version.map
│   │   ├── mvsam
│   │   │   ├── meson.build
│   │   │   ├── mrvl_pmd_private.h
│   │   │   ├── rte_mrvl_compat.h
│   │   │   ├── rte_mrvl_pmd.c
│   │   │   ├── rte_mrvl_pmd_ops.c
│   │   │   └── version.map
│   │   ├── nitrox
│   │   │   ├── meson.build
│   │   │   ├── nitrox_csr.h
│   │   │   ├── nitrox_device.c
│   │   │   ├── nitrox_device.h
│   │   │   ├── nitrox_hal.c
│   │   │   ├── nitrox_hal.h
│   │   │   ├── nitrox_logs.c
│   │   │   ├── nitrox_logs.h
│   │   │   ├── nitrox_qp.c
│   │   │   ├── nitrox_qp.h
│   │   │   ├── nitrox_sym.c
│   │   │   ├── nitrox_sym_capabilities.c
│   │   │   ├── nitrox_sym_capabilities.h
│   │   │   ├── nitrox_sym_ctx.h
│   │   │   ├── nitrox_sym.h
│   │   │   ├── nitrox_sym_reqmgr.c
│   │   │   ├── nitrox_sym_reqmgr.h
│   │   │   └── version.map
│   │   ├── null
│   │   │   ├── meson.build
│   │   │   ├── null_crypto_pmd.c
│   │   │   ├── null_crypto_pmd_ops.c
│   │   │   ├── null_crypto_pmd_private.h
│   │   │   └── version.map
│   │   ├── octeontx
│   │   │   ├── meson.build
│   │   │   ├── otx_cryptodev.c
│   │   │   ├── otx_cryptodev_capabilities.c
│   │   │   ├── otx_cryptodev_capabilities.h
│   │   │   ├── otx_cryptodev.h
│   │   │   ├── otx_cryptodev_hw_access.c
│   │   │   ├── otx_cryptodev_hw_access.h
│   │   │   ├── otx_cryptodev_mbox.c
│   │   │   ├── otx_cryptodev_mbox.h
│   │   │   ├── otx_cryptodev_ops.c
│   │   │   ├── otx_cryptodev_ops.h
│   │   │   └── version.map
│   │   ├── openssl
│   │   │   ├── compat.h
│   │   │   ├── meson.build
│   │   │   ├── openssl_pmd_private.h
│   │   │   ├── rte_openssl_pmd.c
│   │   │   ├── rte_openssl_pmd_ops.c
│   │   │   └── version.map
│   │   ├── qat
│   │   │   ├── dev
│   │   │   │   ├── qat_asym_pmd_gen1.c
│   │   │   │   ├── qat_crypto_pmd_gen2.c
│   │   │   │   ├── qat_crypto_pmd_gen3.c
│   │   │   │   ├── qat_crypto_pmd_gen4.c
│   │   │   │   ├── qat_crypto_pmd_gens.h
│   │   │   │   └── qat_sym_pmd_gen1.c
│   │   │   ├── qat_asym.c
│   │   │   ├── qat_asym.h
│   │   │   ├── qat_crypto.c
│   │   │   ├── qat_crypto.h
│   │   │   ├── qat_ec.h
│   │   │   ├── qat_sym.c
│   │   │   ├── qat_sym.h
│   │   │   ├── qat_sym_session.c
│   │   │   └── qat_sym_session.h
│   │   ├── scheduler
│   │   │   ├── meson.build
│   │   │   ├── rte_cryptodev_scheduler.c
│   │   │   ├── rte_cryptodev_scheduler.h
│   │   │   ├── rte_cryptodev_scheduler_operations.h
│   │   │   ├── scheduler_failover.c
│   │   │   ├── scheduler_multicore.c
│   │   │   ├── scheduler_pkt_size_distr.c
│   │   │   ├── scheduler_pmd.c
│   │   │   ├── scheduler_pmd_ops.c
│   │   │   ├── scheduler_pmd_private.h
│   │   │   ├── scheduler_roundrobin.c
│   │   │   └── version.map
│   │   └── virtio
│   │       ├── meson.build
│   │       ├── version.map
│   │       ├── virtio_crypto_algs.h
│   │       ├── virtio_crypto_capabilities.h
│   │       ├── virtio_cryptodev.c
│   │       ├── virtio_cryptodev.h
│   │       ├── virtio_logs.h
│   │       ├── virtio_pci.c
│   │       ├── virtio_pci.h
│   │       ├── virtio_ring.h
│   │       ├── virtio_rxtx.c
│   │       ├── virtqueue.c
│   │       └── virtqueue.h
│   ├── dma
│   │   ├── cnxk
│   │   │   ├── cnxk_dmadev.c
│   │   │   ├── cnxk_dmadev.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa
│   │   │   ├── dpaa_qdma.c
│   │   │   ├── dpaa_qdma.h
│   │   │   ├── dpaa_qdma_logs.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── hisilicon
│   │   │   ├── hisi_dmadev.c
│   │   │   ├── hisi_dmadev.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── idxd
│   │   │   ├── dpdk_idxd_cfg.py
│   │   │   ├── idxd_bus.c
│   │   │   ├── idxd_common.c
│   │   │   ├── idxd_hw_defs.h
│   │   │   ├── idxd_internal.h
│   │   │   ├── idxd_pci.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ioat
│   │   │   ├── ioat_dmadev.c
│   │   │   ├── ioat_hw_defs.h
│   │   │   ├── ioat_internal.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── meson.build
│   │   └── skeleton
│   │       ├── meson.build
│   │       ├── skeleton_dmadev.c
│   │       ├── skeleton_dmadev.h
│   │       └── version.map
│   ├── event
│   │   ├── cnxk
│   │   │   ├── cn10k_eventdev.c
│   │   │   ├── cn10k_worker.c
│   │   │   ├── cn10k_worker.h
│   │   │   ├── cn9k_eventdev.c
│   │   │   ├── cn9k_worker.c
│   │   │   ├── cn9k_worker.h
│   │   │   ├── cnxk_eventdev_adptr.c
│   │   │   ├── cnxk_eventdev.c
│   │   │   ├── cnxk_eventdev.h
│   │   │   ├── cnxk_eventdev_selftest.c
│   │   │   ├── cnxk_eventdev_stats.c
│   │   │   ├── cnxk_tim_evdev.c
│   │   │   ├── cnxk_tim_evdev.h
│   │   │   ├── cnxk_tim_worker.c
│   │   │   ├── cnxk_tim_worker.h
│   │   │   ├── cnxk_worker.h
│   │   │   ├── deq
│   │   │   │   ├── cn10k
│   │   │   │   │   ├── deq_0_15_burst.c
│   │   │   │   │   ├── deq_0_15.c
│   │   │   │   │   ├── deq_0_15_ca_burst.c
│   │   │   │   │   ├── deq_0_15_ca.c
│   │   │   │   │   ├── deq_0_15_ca_seg_burst.c
│   │   │   │   │   ├── deq_0_15_ca_seg.c
│   │   │   │   │   ├── deq_0_15_ca_tmo_burst.c
│   │   │   │   │   ├── deq_0_15_ca_tmo.c
│   │   │   │   │   ├── deq_0_15_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_0_15_ca_tmo_seg.c
│   │   │   │   │   ├── deq_0_15_dual.c
│   │   │   │   │   ├── deq_0_15_seg_burst.c
│   │   │   │   │   ├── deq_0_15_seg.c
│   │   │   │   │   ├── deq_0_15_tmo_burst.c
│   │   │   │   │   ├── deq_0_15_tmo.c
│   │   │   │   │   ├── deq_0_15_tmo_seg_burst.c
│   │   │   │   │   ├── deq_0_15_tmo_seg.c
│   │   │   │   │   ├── deq_112_127_burst.c
│   │   │   │   │   ├── deq_112_127.c
│   │   │   │   │   ├── deq_112_127_ca_burst.c
│   │   │   │   │   ├── deq_112_127_ca.c
│   │   │   │   │   ├── deq_112_127_ca_seg_burst.c
│   │   │   │   │   ├── deq_112_127_ca_seg.c
│   │   │   │   │   ├── deq_112_127_ca_tmo_burst.c
│   │   │   │   │   ├── deq_112_127_ca_tmo.c
│   │   │   │   │   ├── deq_112_127_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_112_127_ca_tmo_seg.c
│   │   │   │   │   ├── deq_112_127_dual.c
│   │   │   │   │   ├── deq_112_127_seg_burst.c
│   │   │   │   │   ├── deq_112_127_seg.c
│   │   │   │   │   ├── deq_112_127_tmo_burst.c
│   │   │   │   │   ├── deq_112_127_tmo.c
│   │   │   │   │   ├── deq_112_127_tmo_seg_burst.c
│   │   │   │   │   ├── deq_112_127_tmo_seg.c
│   │   │   │   │   ├── deq_16_31_burst.c
│   │   │   │   │   ├── deq_16_31.c
│   │   │   │   │   ├── deq_16_31_ca_burst.c
│   │   │   │   │   ├── deq_16_31_ca.c
│   │   │   │   │   ├── deq_16_31_ca_seg_burst.c
│   │   │   │   │   ├── deq_16_31_ca_seg.c
│   │   │   │   │   ├── deq_16_31_ca_tmo_burst.c
│   │   │   │   │   ├── deq_16_31_ca_tmo.c
│   │   │   │   │   ├── deq_16_31_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_16_31_ca_tmo_seg.c
│   │   │   │   │   ├── deq_16_31_dual.c
│   │   │   │   │   ├── deq_16_31_seg_burst.c
│   │   │   │   │   ├── deq_16_31_seg.c
│   │   │   │   │   ├── deq_16_31_tmo_burst.c
│   │   │   │   │   ├── deq_16_31_tmo.c
│   │   │   │   │   ├── deq_16_31_tmo_seg_burst.c
│   │   │   │   │   ├── deq_16_31_tmo_seg.c
│   │   │   │   │   ├── deq_32_47_burst.c
│   │   │   │   │   ├── deq_32_47.c
│   │   │   │   │   ├── deq_32_47_ca_burst.c
│   │   │   │   │   ├── deq_32_47_ca.c
│   │   │   │   │   ├── deq_32_47_ca_seg_burst.c
│   │   │   │   │   ├── deq_32_47_ca_seg.c
│   │   │   │   │   ├── deq_32_47_ca_tmo_burst.c
│   │   │   │   │   ├── deq_32_47_ca_tmo.c
│   │   │   │   │   ├── deq_32_47_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_32_47_ca_tmo_seg.c
│   │   │   │   │   ├── deq_32_47_dual.c
│   │   │   │   │   ├── deq_32_47_seg_burst.c
│   │   │   │   │   ├── deq_32_47_seg.c
│   │   │   │   │   ├── deq_32_47_tmo_burst.c
│   │   │   │   │   ├── deq_32_47_tmo.c
│   │   │   │   │   ├── deq_32_47_tmo_seg_burst.c
│   │   │   │   │   ├── deq_32_47_tmo_seg.c
│   │   │   │   │   ├── deq_48_63_burst.c
│   │   │   │   │   ├── deq_48_63.c
│   │   │   │   │   ├── deq_48_63_ca_burst.c
│   │   │   │   │   ├── deq_48_63_ca.c
│   │   │   │   │   ├── deq_48_63_ca_seg_burst.c
│   │   │   │   │   ├── deq_48_63_ca_seg.c
│   │   │   │   │   ├── deq_48_63_ca_tmo_burst.c
│   │   │   │   │   ├── deq_48_63_ca_tmo.c
│   │   │   │   │   ├── deq_48_63_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_48_63_ca_tmo_seg.c
│   │   │   │   │   ├── deq_48_63_dual.c
│   │   │   │   │   ├── deq_48_63_seg_burst.c
│   │   │   │   │   ├── deq_48_63_seg.c
│   │   │   │   │   ├── deq_48_63_tmo_burst.c
│   │   │   │   │   ├── deq_48_63_tmo.c
│   │   │   │   │   ├── deq_48_63_tmo_seg_burst.c
│   │   │   │   │   ├── deq_48_63_tmo_seg.c
│   │   │   │   │   ├── deq_64_79_burst.c
│   │   │   │   │   ├── deq_64_79.c
│   │   │   │   │   ├── deq_64_79_ca_burst.c
│   │   │   │   │   ├── deq_64_79_ca.c
│   │   │   │   │   ├── deq_64_79_ca_seg_burst.c
│   │   │   │   │   ├── deq_64_79_ca_seg.c
│   │   │   │   │   ├── deq_64_79_ca_tmo_burst.c
│   │   │   │   │   ├── deq_64_79_ca_tmo.c
│   │   │   │   │   ├── deq_64_79_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_64_79_ca_tmo_seg.c
│   │   │   │   │   ├── deq_64_79_dual.c
│   │   │   │   │   ├── deq_64_79_seg_burst.c
│   │   │   │   │   ├── deq_64_79_seg.c
│   │   │   │   │   ├── deq_64_79_tmo_burst.c
│   │   │   │   │   ├── deq_64_79_tmo.c
│   │   │   │   │   ├── deq_64_79_tmo_seg_burst.c
│   │   │   │   │   ├── deq_64_79_tmo_seg.c
│   │   │   │   │   ├── deq_80_95_burst.c
│   │   │   │   │   ├── deq_80_95.c
│   │   │   │   │   ├── deq_80_95_ca_burst.c
│   │   │   │   │   ├── deq_80_95_ca.c
│   │   │   │   │   ├── deq_80_95_ca_seg_burst.c
│   │   │   │   │   ├── deq_80_95_ca_seg.c
│   │   │   │   │   ├── deq_80_95_ca_tmo_burst.c
│   │   │   │   │   ├── deq_80_95_ca_tmo.c
│   │   │   │   │   ├── deq_80_95_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_80_95_ca_tmo_seg.c
│   │   │   │   │   ├── deq_80_95_dual.c
│   │   │   │   │   ├── deq_80_95_seg_burst.c
│   │   │   │   │   ├── deq_80_95_seg.c
│   │   │   │   │   ├── deq_80_95_tmo_burst.c
│   │   │   │   │   ├── deq_80_95_tmo.c
│   │   │   │   │   ├── deq_80_95_tmo_seg_burst.c
│   │   │   │   │   ├── deq_80_95_tmo_seg.c
│   │   │   │   │   ├── deq_96_111_burst.c
│   │   │   │   │   ├── deq_96_111.c
│   │   │   │   │   ├── deq_96_111_ca_burst.c
│   │   │   │   │   ├── deq_96_111_ca.c
│   │   │   │   │   ├── deq_96_111_ca_seg_burst.c
│   │   │   │   │   ├── deq_96_111_ca_seg.c
│   │   │   │   │   ├── deq_96_111_ca_tmo_burst.c
│   │   │   │   │   ├── deq_96_111_ca_tmo.c
│   │   │   │   │   ├── deq_96_111_ca_tmo_seg_burst.c
│   │   │   │   │   ├── deq_96_111_ca_tmo_seg.c
│   │   │   │   │   ├── deq_96_111_dual.c
│   │   │   │   │   ├── deq_96_111_seg_burst.c
│   │   │   │   │   ├── deq_96_111_seg.c
│   │   │   │   │   ├── deq_96_111_tmo_burst.c
│   │   │   │   │   ├── deq_96_111_tmo.c
│   │   │   │   │   ├── deq_96_111_tmo_seg_burst.c
│   │   │   │   │   └── deq_96_111_tmo_seg.c
│   │   │   │   └── cn9k
│   │   │   │       ├── deq_0_15_burst.c
│   │   │   │       ├── deq_0_15.c
│   │   │   │       ├── deq_0_15_ca_burst.c
│   │   │   │       ├── deq_0_15_ca.c
│   │   │   │       ├── deq_0_15_ca_seg_burst.c
│   │   │   │       ├── deq_0_15_ca_seg.c
│   │   │   │       ├── deq_0_15_ca_tmo_burst.c
│   │   │   │       ├── deq_0_15_ca_tmo.c
│   │   │   │       ├── deq_0_15_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_0_15_ca_tmo_seg.c
│   │   │   │       ├── deq_0_15_dual_burst.c
│   │   │   │       ├── deq_0_15_dual.c
│   │   │   │       ├── deq_0_15_dual_ca_burst.c
│   │   │   │       ├── deq_0_15_dual_ca.c
│   │   │   │       ├── deq_0_15_dual_ca_seg_burst.c
│   │   │   │       ├── deq_0_15_dual_ca_seg.c
│   │   │   │       ├── deq_0_15_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_0_15_dual_ca_tmo.c
│   │   │   │       ├── deq_0_15_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_0_15_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_0_15_dual_seg_burst.c
│   │   │   │       ├── deq_0_15_dual_seg.c
│   │   │   │       ├── deq_0_15_dual_tmo_burst.c
│   │   │   │       ├── deq_0_15_dual_tmo.c
│   │   │   │       ├── deq_0_15_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_0_15_dual_tmo_seg.c
│   │   │   │       ├── deq_0_15_seg_burst.c
│   │   │   │       ├── deq_0_15_seg.c
│   │   │   │       ├── deq_0_15_tmo_burst.c
│   │   │   │       ├── deq_0_15_tmo.c
│   │   │   │       ├── deq_0_15_tmo_seg_burst.c
│   │   │   │       ├── deq_0_15_tmo_seg.c
│   │   │   │       ├── deq_112_127_burst.c
│   │   │   │       ├── deq_112_127.c
│   │   │   │       ├── deq_112_127_ca_burst.c
│   │   │   │       ├── deq_112_127_ca.c
│   │   │   │       ├── deq_112_127_ca_seg_burst.c
│   │   │   │       ├── deq_112_127_ca_seg.c
│   │   │   │       ├── deq_112_127_ca_tmo_burst.c
│   │   │   │       ├── deq_112_127_ca_tmo.c
│   │   │   │       ├── deq_112_127_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_112_127_ca_tmo_seg.c
│   │   │   │       ├── deq_112_127_dual_burst.c
│   │   │   │       ├── deq_112_127_dual.c
│   │   │   │       ├── deq_112_127_dual_ca_burst.c
│   │   │   │       ├── deq_112_127_dual_ca.c
│   │   │   │       ├── deq_112_127_dual_ca_seg_burst.c
│   │   │   │       ├── deq_112_127_dual_ca_seg.c
│   │   │   │       ├── deq_112_127_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_112_127_dual_ca_tmo.c
│   │   │   │       ├── deq_112_127_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_112_127_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_112_127_dual_seg_burst.c
│   │   │   │       ├── deq_112_127_dual_seg.c
│   │   │   │       ├── deq_112_127_dual_tmo_burst.c
│   │   │   │       ├── deq_112_127_dual_tmo.c
│   │   │   │       ├── deq_112_127_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_112_127_dual_tmo_seg.c
│   │   │   │       ├── deq_112_127_seg_burst.c
│   │   │   │       ├── deq_112_127_seg.c
│   │   │   │       ├── deq_112_127_tmo_burst.c
│   │   │   │       ├── deq_112_127_tmo.c
│   │   │   │       ├── deq_112_127_tmo_seg_burst.c
│   │   │   │       ├── deq_112_127_tmo_seg.c
│   │   │   │       ├── deq_16_31_burst.c
│   │   │   │       ├── deq_16_31.c
│   │   │   │       ├── deq_16_31_ca_burst.c
│   │   │   │       ├── deq_16_31_ca.c
│   │   │   │       ├── deq_16_31_ca_seg_burst.c
│   │   │   │       ├── deq_16_31_ca_seg.c
│   │   │   │       ├── deq_16_31_ca_tmo_burst.c
│   │   │   │       ├── deq_16_31_ca_tmo.c
│   │   │   │       ├── deq_16_31_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_16_31_ca_tmo_seg.c
│   │   │   │       ├── deq_16_31_dual_burst.c
│   │   │   │       ├── deq_16_31_dual.c
│   │   │   │       ├── deq_16_31_dual_ca_burst.c
│   │   │   │       ├── deq_16_31_dual_ca.c
│   │   │   │       ├── deq_16_31_dual_ca_seg_burst.c
│   │   │   │       ├── deq_16_31_dual_ca_seg.c
│   │   │   │       ├── deq_16_31_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_16_31_dual_ca_tmo.c
│   │   │   │       ├── deq_16_31_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_16_31_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_16_31_dual_seg_burst.c
│   │   │   │       ├── deq_16_31_dual_seg.c
│   │   │   │       ├── deq_16_31_dual_tmo_burst.c
│   │   │   │       ├── deq_16_31_dual_tmo.c
│   │   │   │       ├── deq_16_31_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_16_31_dual_tmo_seg.c
│   │   │   │       ├── deq_16_31_seg_burst.c
│   │   │   │       ├── deq_16_31_seg.c
│   │   │   │       ├── deq_16_31_tmo_burst.c
│   │   │   │       ├── deq_16_31_tmo.c
│   │   │   │       ├── deq_16_31_tmo_seg_burst.c
│   │   │   │       ├── deq_16_31_tmo_seg.c
│   │   │   │       ├── deq_32_47_burst.c
│   │   │   │       ├── deq_32_47.c
│   │   │   │       ├── deq_32_47_ca_burst.c
│   │   │   │       ├── deq_32_47_ca.c
│   │   │   │       ├── deq_32_47_ca_seg_burst.c
│   │   │   │       ├── deq_32_47_ca_seg.c
│   │   │   │       ├── deq_32_47_ca_tmo_burst.c
│   │   │   │       ├── deq_32_47_ca_tmo.c
│   │   │   │       ├── deq_32_47_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_32_47_ca_tmo_seg.c
│   │   │   │       ├── deq_32_47_dual_burst.c
│   │   │   │       ├── deq_32_47_dual.c
│   │   │   │       ├── deq_32_47_dual_ca_burst.c
│   │   │   │       ├── deq_32_47_dual_ca.c
│   │   │   │       ├── deq_32_47_dual_ca_seg_burst.c
│   │   │   │       ├── deq_32_47_dual_ca_seg.c
│   │   │   │       ├── deq_32_47_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_32_47_dual_ca_tmo.c
│   │   │   │       ├── deq_32_47_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_32_47_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_32_47_dual_seg_burst.c
│   │   │   │       ├── deq_32_47_dual_seg.c
│   │   │   │       ├── deq_32_47_dual_tmo_burst.c
│   │   │   │       ├── deq_32_47_dual_tmo.c
│   │   │   │       ├── deq_32_47_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_32_47_dual_tmo_seg.c
│   │   │   │       ├── deq_32_47_seg_burst.c
│   │   │   │       ├── deq_32_47_seg.c
│   │   │   │       ├── deq_32_47_tmo_burst.c
│   │   │   │       ├── deq_32_47_tmo.c
│   │   │   │       ├── deq_32_47_tmo_seg_burst.c
│   │   │   │       ├── deq_32_47_tmo_seg.c
│   │   │   │       ├── deq_48_63_burst.c
│   │   │   │       ├── deq_48_63.c
│   │   │   │       ├── deq_48_63_ca_burst.c
│   │   │   │       ├── deq_48_63_ca.c
│   │   │   │       ├── deq_48_63_ca_seg_burst.c
│   │   │   │       ├── deq_48_63_ca_seg.c
│   │   │   │       ├── deq_48_63_ca_tmo_burst.c
│   │   │   │       ├── deq_48_63_ca_tmo.c
│   │   │   │       ├── deq_48_63_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_48_63_ca_tmo_seg.c
│   │   │   │       ├── deq_48_63_dual_burst.c
│   │   │   │       ├── deq_48_63_dual.c
│   │   │   │       ├── deq_48_63_dual_ca_burst.c
│   │   │   │       ├── deq_48_63_dual_ca.c
│   │   │   │       ├── deq_48_63_dual_ca_seg_burst.c
│   │   │   │       ├── deq_48_63_dual_ca_seg.c
│   │   │   │       ├── deq_48_63_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_48_63_dual_ca_tmo.c
│   │   │   │       ├── deq_48_63_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_48_63_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_48_63_dual_seg_burst.c
│   │   │   │       ├── deq_48_63_dual_seg.c
│   │   │   │       ├── deq_48_63_dual_tmo_burst.c
│   │   │   │       ├── deq_48_63_dual_tmo.c
│   │   │   │       ├── deq_48_63_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_48_63_dual_tmo_seg.c
│   │   │   │       ├── deq_48_63_seg_burst.c
│   │   │   │       ├── deq_48_63_seg.c
│   │   │   │       ├── deq_48_63_tmo_burst.c
│   │   │   │       ├── deq_48_63_tmo.c
│   │   │   │       ├── deq_48_63_tmo_seg_burst.c
│   │   │   │       ├── deq_48_63_tmo_seg.c
│   │   │   │       ├── deq_64_79_burst.c
│   │   │   │       ├── deq_64_79.c
│   │   │   │       ├── deq_64_79_ca_burst.c
│   │   │   │       ├── deq_64_79_ca.c
│   │   │   │       ├── deq_64_79_ca_seg_burst.c
│   │   │   │       ├── deq_64_79_ca_seg.c
│   │   │   │       ├── deq_64_79_ca_tmo_burst.c
│   │   │   │       ├── deq_64_79_ca_tmo.c
│   │   │   │       ├── deq_64_79_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_64_79_ca_tmo_seg.c
│   │   │   │       ├── deq_64_79_dual_burst.c
│   │   │   │       ├── deq_64_79_dual.c
│   │   │   │       ├── deq_64_79_dual_ca_burst.c
│   │   │   │       ├── deq_64_79_dual_ca.c
│   │   │   │       ├── deq_64_79_dual_ca_seg_burst.c
│   │   │   │       ├── deq_64_79_dual_ca_seg.c
│   │   │   │       ├── deq_64_79_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_64_79_dual_ca_tmo.c
│   │   │   │       ├── deq_64_79_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_64_79_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_64_79_dual_seg_burst.c
│   │   │   │       ├── deq_64_79_dual_seg.c
│   │   │   │       ├── deq_64_79_dual_tmo_burst.c
│   │   │   │       ├── deq_64_79_dual_tmo.c
│   │   │   │       ├── deq_64_79_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_64_79_dual_tmo_seg.c
│   │   │   │       ├── deq_64_79_seg_burst.c
│   │   │   │       ├── deq_64_79_seg.c
│   │   │   │       ├── deq_64_79_tmo_burst.c
│   │   │   │       ├── deq_64_79_tmo.c
│   │   │   │       ├── deq_64_79_tmo_seg_burst.c
│   │   │   │       ├── deq_64_79_tmo_seg.c
│   │   │   │       ├── deq_80_95_burst.c
│   │   │   │       ├── deq_80_95.c
│   │   │   │       ├── deq_80_95_ca_burst.c
│   │   │   │       ├── deq_80_95_ca.c
│   │   │   │       ├── deq_80_95_ca_seg_burst.c
│   │   │   │       ├── deq_80_95_ca_seg.c
│   │   │   │       ├── deq_80_95_ca_tmo_burst.c
│   │   │   │       ├── deq_80_95_ca_tmo.c
│   │   │   │       ├── deq_80_95_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_80_95_ca_tmo_seg.c
│   │   │   │       ├── deq_80_95_dual_burst.c
│   │   │   │       ├── deq_80_95_dual.c
│   │   │   │       ├── deq_80_95_dual_ca_burst.c
│   │   │   │       ├── deq_80_95_dual_ca.c
│   │   │   │       ├── deq_80_95_dual_ca_seg_burst.c
│   │   │   │       ├── deq_80_95_dual_ca_seg.c
│   │   │   │       ├── deq_80_95_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_80_95_dual_ca_tmo.c
│   │   │   │       ├── deq_80_95_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_80_95_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_80_95_dual_seg_burst.c
│   │   │   │       ├── deq_80_95_dual_seg.c
│   │   │   │       ├── deq_80_95_dual_tmo_burst.c
│   │   │   │       ├── deq_80_95_dual_tmo.c
│   │   │   │       ├── deq_80_95_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_80_95_dual_tmo_seg.c
│   │   │   │       ├── deq_80_95_seg_burst.c
│   │   │   │       ├── deq_80_95_seg.c
│   │   │   │       ├── deq_80_95_tmo_burst.c
│   │   │   │       ├── deq_80_95_tmo.c
│   │   │   │       ├── deq_80_95_tmo_seg_burst.c
│   │   │   │       ├── deq_80_95_tmo_seg.c
│   │   │   │       ├── deq_96_111_burst.c
│   │   │   │       ├── deq_96_111.c
│   │   │   │       ├── deq_96_111_ca_burst.c
│   │   │   │       ├── deq_96_111_ca.c
│   │   │   │       ├── deq_96_111_ca_seg_burst.c
│   │   │   │       ├── deq_96_111_ca_seg.c
│   │   │   │       ├── deq_96_111_ca_tmo_burst.c
│   │   │   │       ├── deq_96_111_ca_tmo.c
│   │   │   │       ├── deq_96_111_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_96_111_ca_tmo_seg.c
│   │   │   │       ├── deq_96_111_dual_burst.c
│   │   │   │       ├── deq_96_111_dual.c
│   │   │   │       ├── deq_96_111_dual_ca_burst.c
│   │   │   │       ├── deq_96_111_dual_ca.c
│   │   │   │       ├── deq_96_111_dual_ca_seg_burst.c
│   │   │   │       ├── deq_96_111_dual_ca_seg.c
│   │   │   │       ├── deq_96_111_dual_ca_tmo_burst.c
│   │   │   │       ├── deq_96_111_dual_ca_tmo.c
│   │   │   │       ├── deq_96_111_dual_ca_tmo_seg_burst.c
│   │   │   │       ├── deq_96_111_dual_ca_tmo_seg.c
│   │   │   │       ├── deq_96_111_dual_seg_burst.c
│   │   │   │       ├── deq_96_111_dual_seg.c
│   │   │   │       ├── deq_96_111_dual_tmo_burst.c
│   │   │   │       ├── deq_96_111_dual_tmo.c
│   │   │   │       ├── deq_96_111_dual_tmo_seg_burst.c
│   │   │   │       ├── deq_96_111_dual_tmo_seg.c
│   │   │   │       ├── deq_96_111_seg_burst.c
│   │   │   │       ├── deq_96_111_seg.c
│   │   │   │       ├── deq_96_111_tmo_burst.c
│   │   │   │       ├── deq_96_111_tmo.c
│   │   │   │       ├── deq_96_111_tmo_seg_burst.c
│   │   │   │       └── deq_96_111_tmo_seg.c
│   │   │   ├── meson.build
│   │   │   ├── tx
│   │   │   │   ├── cn10k
│   │   │   │   │   ├── tx_0_15.c
│   │   │   │   │   ├── tx_0_15_seg.c
│   │   │   │   │   ├── tx_112_127.c
│   │   │   │   │   ├── tx_112_127_seg.c
│   │   │   │   │   ├── tx_16_31.c
│   │   │   │   │   ├── tx_16_31_seg.c
│   │   │   │   │   ├── tx_32_47.c
│   │   │   │   │   ├── tx_32_47_seg.c
│   │   │   │   │   ├── tx_48_63.c
│   │   │   │   │   ├── tx_48_63_seg.c
│   │   │   │   │   ├── tx_64_79.c
│   │   │   │   │   ├── tx_64_79_seg.c
│   │   │   │   │   ├── tx_80_95.c
│   │   │   │   │   ├── tx_80_95_seg.c
│   │   │   │   │   ├── tx_96_111.c
│   │   │   │   │   └── tx_96_111_seg.c
│   │   │   │   └── cn9k
│   │   │   │       ├── tx_0_15.c
│   │   │   │       ├── tx_0_15_dual.c
│   │   │   │       ├── tx_0_15_dual_seg.c
│   │   │   │       ├── tx_0_15_seg.c
│   │   │   │       ├── tx_112_127.c
│   │   │   │       ├── tx_112_127_dual.c
│   │   │   │       ├── tx_112_127_dual_seg.c
│   │   │   │       ├── tx_112_127_seg.c
│   │   │   │       ├── tx_16_31.c
│   │   │   │       ├── tx_16_31_dual.c
│   │   │   │       ├── tx_16_31_dual_seg.c
│   │   │   │       ├── tx_16_31_seg.c
│   │   │   │       ├── tx_32_47.c
│   │   │   │       ├── tx_32_47_dual.c
│   │   │   │       ├── tx_32_47_dual_seg.c
│   │   │   │       ├── tx_32_47_seg.c
│   │   │   │       ├── tx_48_63.c
│   │   │   │       ├── tx_48_63_dual.c
│   │   │   │       ├── tx_48_63_dual_seg.c
│   │   │   │       ├── tx_48_63_seg.c
│   │   │   │       ├── tx_64_79.c
│   │   │   │       ├── tx_64_79_dual.c
│   │   │   │       ├── tx_64_79_dual_seg.c
│   │   │   │       ├── tx_64_79_seg.c
│   │   │   │       ├── tx_80_95.c
│   │   │   │       ├── tx_80_95_dual.c
│   │   │   │       ├── tx_80_95_dual_seg.c
│   │   │   │       ├── tx_80_95_seg.c
│   │   │   │       ├── tx_96_111.c
│   │   │   │       ├── tx_96_111_dual.c
│   │   │   │       ├── tx_96_111_dual_seg.c
│   │   │   │       └── tx_96_111_seg.c
│   │   │   └── version.map
│   │   ├── dlb2
│   │   │   ├── dlb2.c
│   │   │   ├── dlb2_iface.c
│   │   │   ├── dlb2_iface.h
│   │   │   ├── dlb2_inline_fns.h
│   │   │   ├── dlb2_log.h
│   │   │   ├── dlb2_priv.h
│   │   │   ├── dlb2_selftest.c
│   │   │   ├── dlb2_user.h
│   │   │   ├── dlb2_xstats.c
│   │   │   ├── meson.build
│   │   │   ├── pf
│   │   │   │   ├── base
│   │   │   │   │   ├── dlb2_hw_types.h
│   │   │   │   │   ├── dlb2_osdep_bitmap.h
│   │   │   │   │   ├── dlb2_osdep.h
│   │   │   │   │   ├── dlb2_osdep_list.h
│   │   │   │   │   ├── dlb2_osdep_types.h
│   │   │   │   │   ├── dlb2_regs.h
│   │   │   │   │   ├── dlb2_resource.c
│   │   │   │   │   └── dlb2_resource.h
│   │   │   │   ├── dlb2_main.c
│   │   │   │   ├── dlb2_main.h
│   │   │   │   └── dlb2_pf.c
│   │   │   ├── rte_pmd_dlb2.c
│   │   │   ├── rte_pmd_dlb2.h
│   │   │   └── version.map
│   │   ├── dpaa
│   │   │   ├── dpaa_eventdev.c
│   │   │   ├── dpaa_eventdev.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa2
│   │   │   ├── dpaa2_eventdev.c
│   │   │   ├── dpaa2_eventdev.h
│   │   │   ├── dpaa2_eventdev_logs.h
│   │   │   ├── dpaa2_eventdev_selftest.c
│   │   │   ├── dpaa2_hw_dpcon.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dsw
│   │   │   ├── dsw_evdev.c
│   │   │   ├── dsw_evdev.h
│   │   │   ├── dsw_event.c
│   │   │   ├── dsw_sort.h
│   │   │   ├── dsw_xstats.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── octeontx
│   │   │   ├── meson.build
│   │   │   ├── ssovf_evdev.c
│   │   │   ├── ssovf_evdev.h
│   │   │   ├── ssovf_evdev_selftest.c
│   │   │   ├── ssovf_probe.c
│   │   │   ├── ssovf_worker.c
│   │   │   ├── ssovf_worker.h
│   │   │   ├── timvf_evdev.c
│   │   │   ├── timvf_evdev.h
│   │   │   ├── timvf_probe.c
│   │   │   ├── timvf_worker.c
│   │   │   ├── timvf_worker.h
│   │   │   └── version.map
│   │   ├── opdl
│   │   │   ├── meson.build
│   │   │   ├── opdl_evdev.c
│   │   │   ├── opdl_evdev.h
│   │   │   ├── opdl_evdev_init.c
│   │   │   ├── opdl_evdev_xstats.c
│   │   │   ├── opdl_log.h
│   │   │   ├── opdl_ring.c
│   │   │   ├── opdl_ring.h
│   │   │   ├── opdl_test.c
│   │   │   └── version.map
│   │   ├── skeleton
│   │   │   ├── meson.build
│   │   │   ├── skeleton_eventdev.c
│   │   │   ├── skeleton_eventdev.h
│   │   │   └── version.map
│   │   └── sw
│   │       ├── event_ring.h
│   │       ├── iq_chunk.h
│   │       ├── meson.build
│   │       ├── sw_evdev.c
│   │       ├── sw_evdev.h
│   │       ├── sw_evdev_log.h
│   │       ├── sw_evdev_scheduler.c
│   │       ├── sw_evdev_selftest.c
│   │       ├── sw_evdev_worker.c
│   │       ├── sw_evdev_xstats.c
│   │       └── version.map
│   ├── gpu
│   │   ├── cuda
│   │   │   ├── common.h
│   │   │   ├── cuda.c
│   │   │   ├── gdrcopy.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   └── meson.build
│   ├── mempool
│   │   ├── bucket
│   │   │   ├── meson.build
│   │   │   ├── rte_mempool_bucket.c
│   │   │   └── version.map
│   │   ├── cnxk
│   │   │   ├── cn10k_mempool_ops.c
│   │   │   ├── cn9k_mempool_ops.c
│   │   │   ├── cnxk_mempool.c
│   │   │   ├── cnxk_mempool.h
│   │   │   ├── cnxk_mempool_ops.c
│   │   │   ├── cnxk_mempool_telemetry.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa
│   │   │   ├── dpaa_mempool.c
│   │   │   ├── dpaa_mempool.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── dpaa2
│   │   │   ├── dpaa2_hw_mempool.c
│   │   │   ├── dpaa2_hw_mempool.h
│   │   │   ├── dpaa2_hw_mempool_logs.h
│   │   │   ├── meson.build
│   │   │   ├── rte_dpaa2_mempool.h
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── octeontx
│   │   │   ├── meson.build
│   │   │   ├── octeontx_fpavf.c
│   │   │   ├── octeontx_fpavf.h
│   │   │   ├── octeontx_pool_logs.h
│   │   │   ├── rte_mempool_octeontx.c
│   │   │   └── version.map
│   │   ├── ring
│   │   │   ├── meson.build
│   │   │   ├── rte_mempool_ring.c
│   │   │   └── version.map
│   │   └── stack
│   │       ├── meson.build
│   │       ├── rte_mempool_stack.c
│   │       └── version.map
│   ├── meson.build
│   ├── net
│   │   ├── af_packet
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_af_packet.c
│   │   │   └── version.map
│   │   ├── af_xdp
│   │   │   ├── af_xdp_deps.h
│   │   │   ├── compat.h
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_af_xdp.c
│   │   │   └── version.map
│   │   ├── ark
│   │   │   ├── ark_ddm.c
│   │   │   ├── ark_ddm.h
│   │   │   ├── ark_ethdev.c
│   │   │   ├── ark_ethdev_rx.c
│   │   │   ├── ark_ethdev_rx.h
│   │   │   ├── ark_ethdev_tx.c
│   │   │   ├── ark_ethdev_tx.h
│   │   │   ├── ark_ext.h
│   │   │   ├── ark_global.h
│   │   │   ├── ark_logs.h
│   │   │   ├── ark_mpu.c
│   │   │   ├── ark_mpu.h
│   │   │   ├── ark_pktchkr.c
│   │   │   ├── ark_pktchkr.h
│   │   │   ├── ark_pktdir.c
│   │   │   ├── ark_pktdir.h
│   │   │   ├── ark_pktgen.c
│   │   │   ├── ark_pktgen.h
│   │   │   ├── ark_rqp.c
│   │   │   ├── ark_rqp.h
│   │   │   ├── ark_udm.c
│   │   │   ├── ark_udm.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── atlantic
│   │   │   ├── atl_common.h
│   │   │   ├── atl_ethdev.c
│   │   │   ├── atl_ethdev.h
│   │   │   ├── atl_hw_regs.c
│   │   │   ├── atl_hw_regs.h
│   │   │   ├── atl_logs.h
│   │   │   ├── atl_rxtx.c
│   │   │   ├── atl_types.h
│   │   │   ├── hw_atl
│   │   │   │   ├── hw_atl_b0.c
│   │   │   │   ├── hw_atl_b0.h
│   │   │   │   ├── hw_atl_b0_internal.h
│   │   │   │   ├── hw_atl_llh.c
│   │   │   │   ├── hw_atl_llh.h
│   │   │   │   ├── hw_atl_llh_internal.h
│   │   │   │   ├── hw_atl_utils.c
│   │   │   │   ├── hw_atl_utils_fw2x.c
│   │   │   │   └── hw_atl_utils.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_atlantic.c
│   │   │   ├── rte_pmd_atlantic.h
│   │   │   └── version.map
│   │   ├── avp
│   │   │   ├── avp_ethdev.c
│   │   │   ├── avp_logs.h
│   │   │   ├── meson.build
│   │   │   ├── rte_avp_common.h
│   │   │   ├── rte_avp_fifo.h
│   │   │   └── version.map
│   │   ├── axgbe
│   │   │   ├── axgbe_common.h
│   │   │   ├── axgbe_dev.c
│   │   │   ├── axgbe_ethdev.c
│   │   │   ├── axgbe_ethdev.h
│   │   │   ├── axgbe_i2c.c
│   │   │   ├── axgbe_logs.h
│   │   │   ├── axgbe_mdio.c
│   │   │   ├── axgbe_phy.h
│   │   │   ├── axgbe_phy_impl.c
│   │   │   ├── axgbe_regs.h
│   │   │   ├── axgbe_rxtx.c
│   │   │   ├── axgbe_rxtx.h
│   │   │   ├── axgbe_rxtx_vec_sse.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── bnx2x
│   │   │   ├── bnx2x.c
│   │   │   ├── bnx2x_ethdev.c
│   │   │   ├── bnx2x_ethdev.h
│   │   │   ├── bnx2x.h
│   │   │   ├── bnx2x_logs.h
│   │   │   ├── bnx2x_osal.h
│   │   │   ├── bnx2x_rxtx.c
│   │   │   ├── bnx2x_rxtx.h
│   │   │   ├── bnx2x_stats.c
│   │   │   ├── bnx2x_stats.h
│   │   │   ├── bnx2x_vfpf.c
│   │   │   ├── bnx2x_vfpf.h
│   │   │   ├── ecore_fw_defs.h
│   │   │   ├── ecore_hsi.h
│   │   │   ├── ecore_init.h
│   │   │   ├── ecore_init_ops.h
│   │   │   ├── ecore_mfw_req.h
│   │   │   ├── ecore_reg.h
│   │   │   ├── ecore_sp.c
│   │   │   ├── ecore_sp.h
│   │   │   ├── elink.c
│   │   │   ├── elink.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── bnxt
│   │   │   ├── bnxt_cpr.c
│   │   │   ├── bnxt_cpr.h
│   │   │   ├── bnxt_ethdev.c
│   │   │   ├── bnxt_filter.c
│   │   │   ├── bnxt_filter.h
│   │   │   ├── bnxt_flow.c
│   │   │   ├── bnxt.h
│   │   │   ├── bnxt_hwrm.c
│   │   │   ├── bnxt_hwrm.h
│   │   │   ├── bnxt_irq.c
│   │   │   ├── bnxt_irq.h
│   │   │   ├── bnxt_nvm_defs.h
│   │   │   ├── bnxt_reps.c
│   │   │   ├── bnxt_reps.h
│   │   │   ├── bnxt_ring.c
│   │   │   ├── bnxt_ring.h
│   │   │   ├── bnxt_rxq.c
│   │   │   ├── bnxt_rxq.h
│   │   │   ├── bnxt_rxr.c
│   │   │   ├── bnxt_rxr.h
│   │   │   ├── bnxt_rxtx_vec_avx2.c
│   │   │   ├── bnxt_rxtx_vec_common.h
│   │   │   ├── bnxt_rxtx_vec_neon.c
│   │   │   ├── bnxt_rxtx_vec_sse.c
│   │   │   ├── bnxt_stats.c
│   │   │   ├── bnxt_stats.h
│   │   │   ├── bnxt_txq.c
│   │   │   ├── bnxt_txq.h
│   │   │   ├── bnxt_txr.c
│   │   │   ├── bnxt_txr.h
│   │   │   ├── bnxt_util.c
│   │   │   ├── bnxt_util.h
│   │   │   ├── bnxt_vnic.c
│   │   │   ├── bnxt_vnic.h
│   │   │   ├── hcapi
│   │   │   │   └── cfa
│   │   │   │       ├── hcapi_cfa_common.c
│   │   │   │       ├── hcapi_cfa_defs.h
│   │   │   │       ├── hcapi_cfa.h
│   │   │   │       ├── hcapi_cfa_p4.c
│   │   │   │       ├── hcapi_cfa_p4.h
│   │   │   │       ├── hcapi_cfa_p58.c
│   │   │   │       ├── hcapi_cfa_p58.h
│   │   │   │       └── meson.build
│   │   │   ├── hsi_struct_def_dpdk.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_bnxt.c
│   │   │   ├── rte_pmd_bnxt.h
│   │   │   ├── tf_core
│   │   │   │   ├── bitalloc.c
│   │   │   │   ├── bitalloc.h
│   │   │   │   ├── cfa_resource_types.h
│   │   │   │   ├── dpool.c
│   │   │   │   ├── dpool.h
│   │   │   │   ├── ll.c
│   │   │   │   ├── ll.h
│   │   │   │   ├── lookup3.h
│   │   │   │   ├── meson.build
│   │   │   │   ├── rand.c
│   │   │   │   ├── rand.h
│   │   │   │   ├── stack.c
│   │   │   │   ├── stack.h
│   │   │   │   ├── tf_common.h
│   │   │   │   ├── tf_core.c
│   │   │   │   ├── tf_core.h
│   │   │   │   ├── tf_device.c
│   │   │   │   ├── tf_device.h
│   │   │   │   ├── tf_device_p4.c
│   │   │   │   ├── tf_device_p4.h
│   │   │   │   ├── tf_device_p58.c
│   │   │   │   ├── tf_device_p58.h
│   │   │   │   ├── tf_em_common.c
│   │   │   │   ├── tf_em_common.h
│   │   │   │   ├── tf_em.h
│   │   │   │   ├── tf_em_hash_internal.c
│   │   │   │   ├── tf_em_host.c
│   │   │   │   ├── tf_em_internal.c
│   │   │   │   ├── tf_ext_flow_handle.h
│   │   │   │   ├── tf_global_cfg.c
│   │   │   │   ├── tf_global_cfg.h
│   │   │   │   ├── tf_hash.c
│   │   │   │   ├── tf_hash.h
│   │   │   │   ├── tf_identifier.c
│   │   │   │   ├── tf_identifier.h
│   │   │   │   ├── tf_if_tbl.c
│   │   │   │   ├── tf_if_tbl.h
│   │   │   │   ├── tf_msg.c
│   │   │   │   ├── tf_msg_common.h
│   │   │   │   ├── tf_msg.h
│   │   │   │   ├── tfp.c
│   │   │   │   ├── tfp.h
│   │   │   │   ├── tf_project.h
│   │   │   │   ├── tf_resources.h
│   │   │   │   ├── tf_rm.c
│   │   │   │   ├── tf_rm.h
│   │   │   │   ├── tf_session.c
│   │   │   │   ├── tf_session.h
│   │   │   │   ├── tf_shadow_identifier.c
│   │   │   │   ├── tf_shadow_identifier.h
│   │   │   │   ├── tf_shadow_tcam.c
│   │   │   │   ├── tf_shadow_tcam.h
│   │   │   │   ├── tf_sram_mgr.c
│   │   │   │   ├── tf_sram_mgr.h
│   │   │   │   ├── tf_tbl.c
│   │   │   │   ├── tf_tbl.h
│   │   │   │   ├── tf_tbl_sram.c
│   │   │   │   ├── tf_tbl_sram.h
│   │   │   │   ├── tf_tcam.c
│   │   │   │   ├── tf_tcam.h
│   │   │   │   ├── tf_tcam_shared.c
│   │   │   │   ├── tf_tcam_shared.h
│   │   │   │   ├── tf_util.c
│   │   │   │   └── tf_util.h
│   │   │   ├── tf_ulp
│   │   │   │   ├── bnxt_tf_common.h
│   │   │   │   ├── bnxt_tf_pmd_shim.c
│   │   │   │   ├── bnxt_tf_pmd_shim.h
│   │   │   │   ├── bnxt_ulp.c
│   │   │   │   ├── bnxt_ulp_flow.c
│   │   │   │   ├── bnxt_ulp.h
│   │   │   │   ├── generic_templates
│   │   │   │   │   ├── meson.build
│   │   │   │   │   ├── ulp_template_db_act.c
│   │   │   │   │   ├── ulp_template_db_class.c
│   │   │   │   │   ├── ulp_template_db_enum.h
│   │   │   │   │   ├── ulp_template_db_field.h
│   │   │   │   │   ├── ulp_template_db_tbl.c
│   │   │   │   │   ├── ulp_template_db_tbl.h
│   │   │   │   │   ├── ulp_template_db_thor_act.c
│   │   │   │   │   ├── ulp_template_db_thor_class.c
│   │   │   │   │   ├── ulp_template_db_wh_plus_act.c
│   │   │   │   │   └── ulp_template_db_wh_plus_class.c
│   │   │   │   ├── meson.build
│   │   │   │   ├── ulp_def_rules.c
│   │   │   │   ├── ulp_fc_mgr.c
│   │   │   │   ├── ulp_fc_mgr.h
│   │   │   │   ├── ulp_flow_db.c
│   │   │   │   ├── ulp_flow_db.h
│   │   │   │   ├── ulp_gen_hash.c
│   │   │   │   ├── ulp_gen_hash.h
│   │   │   │   ├── ulp_gen_tbl.c
│   │   │   │   ├── ulp_gen_tbl.h
│   │   │   │   ├── ulp_ha_mgr.c
│   │   │   │   ├── ulp_ha_mgr.h
│   │   │   │   ├── ulp_mapper.c
│   │   │   │   ├── ulp_mapper.h
│   │   │   │   ├── ulp_mark_mgr.c
│   │   │   │   ├── ulp_mark_mgr.h
│   │   │   │   ├── ulp_matcher.c
│   │   │   │   ├── ulp_matcher.h
│   │   │   │   ├── ulp_port_db.c
│   │   │   │   ├── ulp_port_db.h
│   │   │   │   ├── ulp_rte_handler_tbl.c
│   │   │   │   ├── ulp_rte_parser.c
│   │   │   │   ├── ulp_rte_parser.h
│   │   │   │   ├── ulp_template_struct.h
│   │   │   │   ├── ulp_tun.c
│   │   │   │   ├── ulp_tun.h
│   │   │   │   ├── ulp_utils.c
│   │   │   │   └── ulp_utils.h
│   │   │   └── version.map
│   │   ├── bonding
│   │   │   ├── eth_bond_8023ad_private.h
│   │   │   ├── eth_bond_private.h
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_bond_8023ad.c
│   │   │   ├── rte_eth_bond_8023ad.h
│   │   │   ├── rte_eth_bond_alb.c
│   │   │   ├── rte_eth_bond_alb.h
│   │   │   ├── rte_eth_bond_api.c
│   │   │   ├── rte_eth_bond_args.c
│   │   │   ├── rte_eth_bond_flow.c
│   │   │   ├── rte_eth_bond.h
│   │   │   ├── rte_eth_bond_pmd.c
│   │   │   └── version.map
│   │   ├── cnxk
│   │   │   ├── cn10k_ethdev.c
│   │   │   ├── cn10k_ethdev.h
│   │   │   ├── cn10k_ethdev_sec.c
│   │   │   ├── cn10k_flow.c
│   │   │   ├── cn10k_flow.h
│   │   │   ├── cn10k_rx.h
│   │   │   ├── cn10k_rx_select.c
│   │   │   ├── cn10k_tx.h
│   │   │   ├── cn10k_tx_select.c
│   │   │   ├── cn9k_ethdev.c
│   │   │   ├── cn9k_ethdev.h
│   │   │   ├── cn9k_ethdev_sec.c
│   │   │   ├── cn9k_flow.c
│   │   │   ├── cn9k_flow.h
│   │   │   ├── cn9k_rx.h
│   │   │   ├── cn9k_rx_select.c
│   │   │   ├── cn9k_tx.h
│   │   │   ├── cn9k_tx_select.c
│   │   │   ├── cnxk_ethdev.c
│   │   │   ├── cnxk_ethdev_devargs.c
│   │   │   ├── cnxk_ethdev.h
│   │   │   ├── cnxk_ethdev_mtr.c
│   │   │   ├── cnxk_ethdev_ops.c
│   │   │   ├── cnxk_ethdev_sec.c
│   │   │   ├── cnxk_ethdev_sec_telemetry.c
│   │   │   ├── cnxk_ethdev_telemetry.c
│   │   │   ├── cnxk_flow.c
│   │   │   ├── cnxk_flow.h
│   │   │   ├── cnxk_link.c
│   │   │   ├── cnxk_lookup.c
│   │   │   ├── cnxk_ptp.c
│   │   │   ├── cnxk_stats.c
│   │   │   ├── cnxk_tm.c
│   │   │   ├── cnxk_tm.h
│   │   │   ├── meson.build
│   │   │   ├── rx
│   │   │   │   ├── cn10k
│   │   │   │   │   ├── rx_0_15.c
│   │   │   │   │   ├── rx_0_15_mseg.c
│   │   │   │   │   ├── rx_0_15_vec.c
│   │   │   │   │   ├── rx_0_15_vec_mseg.c
│   │   │   │   │   ├── rx_112_127.c
│   │   │   │   │   ├── rx_112_127_mseg.c
│   │   │   │   │   ├── rx_112_127_vec.c
│   │   │   │   │   ├── rx_112_127_vec_mseg.c
│   │   │   │   │   ├── rx_16_31.c
│   │   │   │   │   ├── rx_16_31_mseg.c
│   │   │   │   │   ├── rx_16_31_vec.c
│   │   │   │   │   ├── rx_16_31_vec_mseg.c
│   │   │   │   │   ├── rx_32_47.c
│   │   │   │   │   ├── rx_32_47_mseg.c
│   │   │   │   │   ├── rx_32_47_vec.c
│   │   │   │   │   ├── rx_32_47_vec_mseg.c
│   │   │   │   │   ├── rx_48_63.c
│   │   │   │   │   ├── rx_48_63_mseg.c
│   │   │   │   │   ├── rx_48_63_vec.c
│   │   │   │   │   ├── rx_48_63_vec_mseg.c
│   │   │   │   │   ├── rx_64_79.c
│   │   │   │   │   ├── rx_64_79_mseg.c
│   │   │   │   │   ├── rx_64_79_vec.c
│   │   │   │   │   ├── rx_64_79_vec_mseg.c
│   │   │   │   │   ├── rx_80_95.c
│   │   │   │   │   ├── rx_80_95_mseg.c
│   │   │   │   │   ├── rx_80_95_vec.c
│   │   │   │   │   ├── rx_80_95_vec_mseg.c
│   │   │   │   │   ├── rx_96_111.c
│   │   │   │   │   ├── rx_96_111_mseg.c
│   │   │   │   │   ├── rx_96_111_vec.c
│   │   │   │   │   └── rx_96_111_vec_mseg.c
│   │   │   │   └── cn9k
│   │   │   │       ├── rx_0_15.c
│   │   │   │       ├── rx_0_15_mseg.c
│   │   │   │       ├── rx_0_15_vec.c
│   │   │   │       ├── rx_0_15_vec_mseg.c
│   │   │   │       ├── rx_112_127.c
│   │   │   │       ├── rx_112_127_mseg.c
│   │   │   │       ├── rx_112_127_vec.c
│   │   │   │       ├── rx_112_127_vec_mseg.c
│   │   │   │       ├── rx_16_31.c
│   │   │   │       ├── rx_16_31_mseg.c
│   │   │   │       ├── rx_16_31_vec.c
│   │   │   │       ├── rx_16_31_vec_mseg.c
│   │   │   │       ├── rx_32_47.c
│   │   │   │       ├── rx_32_47_mseg.c
│   │   │   │       ├── rx_32_47_vec.c
│   │   │   │       ├── rx_32_47_vec_mseg.c
│   │   │   │       ├── rx_48_63.c
│   │   │   │       ├── rx_48_63_mseg.c
│   │   │   │       ├── rx_48_63_vec.c
│   │   │   │       ├── rx_48_63_vec_mseg.c
│   │   │   │       ├── rx_64_79.c
│   │   │   │       ├── rx_64_79_mseg.c
│   │   │   │       ├── rx_64_79_vec.c
│   │   │   │       ├── rx_64_79_vec_mseg.c
│   │   │   │       ├── rx_80_95.c
│   │   │   │       ├── rx_80_95_mseg.c
│   │   │   │       ├── rx_80_95_vec.c
│   │   │   │       ├── rx_80_95_vec_mseg.c
│   │   │   │       ├── rx_96_111.c
│   │   │   │       ├── rx_96_111_mseg.c
│   │   │   │       ├── rx_96_111_vec.c
│   │   │   │       └── rx_96_111_vec_mseg.c
│   │   │   ├── tx
│   │   │   │   ├── cn10k
│   │   │   │   │   ├── tx_0_15.c
│   │   │   │   │   ├── tx_0_15_mseg.c
│   │   │   │   │   ├── tx_0_15_vec.c
│   │   │   │   │   ├── tx_0_15_vec_mseg.c
│   │   │   │   │   ├── tx_112_127.c
│   │   │   │   │   ├── tx_112_127_mseg.c
│   │   │   │   │   ├── tx_112_127_vec.c
│   │   │   │   │   ├── tx_112_127_vec_mseg.c
│   │   │   │   │   ├── tx_16_31.c
│   │   │   │   │   ├── tx_16_31_mseg.c
│   │   │   │   │   ├── tx_16_31_vec.c
│   │   │   │   │   ├── tx_16_31_vec_mseg.c
│   │   │   │   │   ├── tx_32_47.c
│   │   │   │   │   ├── tx_32_47_mseg.c
│   │   │   │   │   ├── tx_32_47_vec.c
│   │   │   │   │   ├── tx_32_47_vec_mseg.c
│   │   │   │   │   ├── tx_48_63.c
│   │   │   │   │   ├── tx_48_63_mseg.c
│   │   │   │   │   ├── tx_48_63_vec.c
│   │   │   │   │   ├── tx_48_63_vec_mseg.c
│   │   │   │   │   ├── tx_64_79.c
│   │   │   │   │   ├── tx_64_79_mseg.c
│   │   │   │   │   ├── tx_64_79_vec.c
│   │   │   │   │   ├── tx_64_79_vec_mseg.c
│   │   │   │   │   ├── tx_80_95.c
│   │   │   │   │   ├── tx_80_95_mseg.c
│   │   │   │   │   ├── tx_80_95_vec.c
│   │   │   │   │   ├── tx_80_95_vec_mseg.c
│   │   │   │   │   ├── tx_96_111.c
│   │   │   │   │   ├── tx_96_111_mseg.c
│   │   │   │   │   ├── tx_96_111_vec.c
│   │   │   │   │   └── tx_96_111_vec_mseg.c
│   │   │   │   └── cn9k
│   │   │   │       ├── tx_0_15.c
│   │   │   │       ├── tx_0_15_mseg.c
│   │   │   │       ├── tx_0_15_vec.c
│   │   │   │       ├── tx_0_15_vec_mseg.c
│   │   │   │       ├── tx_112_127.c
│   │   │   │       ├── tx_112_127_mseg.c
│   │   │   │       ├── tx_112_127_vec.c
│   │   │   │       ├── tx_112_127_vec_mseg.c
│   │   │   │       ├── tx_16_31.c
│   │   │   │       ├── tx_16_31_mseg.c
│   │   │   │       ├── tx_16_31_vec.c
│   │   │   │       ├── tx_16_31_vec_mseg.c
│   │   │   │       ├── tx_32_47.c
│   │   │   │       ├── tx_32_47_mseg.c
│   │   │   │       ├── tx_32_47_vec.c
│   │   │   │       ├── tx_32_47_vec_mseg.c
│   │   │   │       ├── tx_48_63.c
│   │   │   │       ├── tx_48_63_mseg.c
│   │   │   │       ├── tx_48_63_vec.c
│   │   │   │       ├── tx_48_63_vec_mseg.c
│   │   │   │       ├── tx_64_79.c
│   │   │   │       ├── tx_64_79_mseg.c
│   │   │   │       ├── tx_64_79_vec.c
│   │   │   │       ├── tx_64_79_vec_mseg.c
│   │   │   │       ├── tx_80_95.c
│   │   │   │       ├── tx_80_95_mseg.c
│   │   │   │       ├── tx_80_95_vec.c
│   │   │   │       ├── tx_80_95_vec_mseg.c
│   │   │   │       ├── tx_96_111.c
│   │   │   │       ├── tx_96_111_mseg.c
│   │   │   │       ├── tx_96_111_vec.c
│   │   │   │       └── tx_96_111_vec_mseg.c
│   │   │   └── version.map
│   │   ├── cxgbe
│   │   │   ├── base
│   │   │   │   ├── adapter.h
│   │   │   │   ├── common.h
│   │   │   │   ├── t4_chip_type.h
│   │   │   │   ├── t4fw_interface.h
│   │   │   │   ├── t4_hw.c
│   │   │   │   ├── t4_hw.h
│   │   │   │   ├── t4_msg.h
│   │   │   │   ├── t4_pci_id_tbl.h
│   │   │   │   ├── t4_regs.h
│   │   │   │   ├── t4_regs_values.h
│   │   │   │   ├── t4_tcb.h
│   │   │   │   ├── t4vf_hw.c
│   │   │   │   └── t4vf_hw.h
│   │   │   ├── clip_tbl.c
│   │   │   ├── clip_tbl.h
│   │   │   ├── cxgbe_compat.h
│   │   │   ├── cxgbe_ethdev.c
│   │   │   ├── cxgbe_filter.c
│   │   │   ├── cxgbe_filter.h
│   │   │   ├── cxgbe_flow.c
│   │   │   ├── cxgbe_flow.h
│   │   │   ├── cxgbe.h
│   │   │   ├── cxgbe_main.c
│   │   │   ├── cxgbe_ofld.h
│   │   │   ├── cxgbe_pfvf.h
│   │   │   ├── cxgbevf_ethdev.c
│   │   │   ├── cxgbevf_main.c
│   │   │   ├── l2t.c
│   │   │   ├── l2t.h
│   │   │   ├── meson.build
│   │   │   ├── mps_tcam.c
│   │   │   ├── mps_tcam.h
│   │   │   ├── sge.c
│   │   │   ├── smt.c
│   │   │   ├── smt.h
│   │   │   └── version.map
│   │   ├── dpaa
│   │   │   ├── dpaa_ethdev.c
│   │   │   ├── dpaa_ethdev.h
│   │   │   ├── dpaa_flow.c
│   │   │   ├── dpaa_flow.h
│   │   │   ├── dpaa_fmc.c
│   │   │   ├── dpaa_rxtx.c
│   │   │   ├── dpaa_rxtx.h
│   │   │   ├── fmlib
│   │   │   │   ├── dpaa_integration.h
│   │   │   │   ├── fm_ext.h
│   │   │   │   ├── fm_lib.c
│   │   │   │   ├── fm_pcd_ext.h
│   │   │   │   ├── fm_port_ext.h
│   │   │   │   ├── fm_vsp.c
│   │   │   │   ├── fm_vsp_ext.h
│   │   │   │   ├── ncsw_ext.h
│   │   │   │   └── net_ext.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_dpaa.h
│   │   │   └── version.map
│   │   ├── dpaa2
│   │   │   ├── base
│   │   │   │   ├── dpaa2_hw_dpni_annot.h
│   │   │   │   ├── dpaa2_hw_dpni.c
│   │   │   │   └── dpaa2_tlu_hash.c
│   │   │   ├── dpaa2_ethdev.c
│   │   │   ├── dpaa2_ethdev.h
│   │   │   ├── dpaa2_flow.c
│   │   │   ├── dpaa2_mux.c
│   │   │   ├── dpaa2_pmd_logs.h
│   │   │   ├── dpaa2_ptp.c
│   │   │   ├── dpaa2_recycle.c
│   │   │   ├── dpaa2_rxtx.c
│   │   │   ├── dpaa2_sparser.c
│   │   │   ├── dpaa2_sparser.h
│   │   │   ├── dpaa2_tm.c
│   │   │   ├── dpaa2_tm.h
│   │   │   ├── mc
│   │   │   │   ├── dpdmux.c
│   │   │   │   ├── dpkg.c
│   │   │   │   ├── dpni.c
│   │   │   │   ├── dprtc.c
│   │   │   │   ├── fsl_dpdmux_cmd.h
│   │   │   │   ├── fsl_dpdmux.h
│   │   │   │   ├── fsl_dpkg.h
│   │   │   │   ├── fsl_dpni_cmd.h
│   │   │   │   ├── fsl_dpni.h
│   │   │   │   ├── fsl_dprtc_cmd.h
│   │   │   │   ├── fsl_dprtc.h
│   │   │   │   └── fsl_net.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_dpaa2.h
│   │   │   └── version.map
│   │   ├── e1000
│   │   │   ├── base
│   │   │   │   ├── e1000_80003es2lan.c
│   │   │   │   ├── e1000_80003es2lan.h
│   │   │   │   ├── e1000_82540.c
│   │   │   │   ├── e1000_82541.c
│   │   │   │   ├── e1000_82541.h
│   │   │   │   ├── e1000_82542.c
│   │   │   │   ├── e1000_82543.c
│   │   │   │   ├── e1000_82543.h
│   │   │   │   ├── e1000_82571.c
│   │   │   │   ├── e1000_82571.h
│   │   │   │   ├── e1000_82575.c
│   │   │   │   ├── e1000_82575.h
│   │   │   │   ├── e1000_api.c
│   │   │   │   ├── e1000_api.h
│   │   │   │   ├── e1000_base.c
│   │   │   │   ├── e1000_base.h
│   │   │   │   ├── e1000_defines.h
│   │   │   │   ├── e1000_hw.h
│   │   │   │   ├── e1000_i210.c
│   │   │   │   ├── e1000_i210.h
│   │   │   │   ├── e1000_ich8lan.c
│   │   │   │   ├── e1000_ich8lan.h
│   │   │   │   ├── e1000_mac.c
│   │   │   │   ├── e1000_mac.h
│   │   │   │   ├── e1000_manage.c
│   │   │   │   ├── e1000_manage.h
│   │   │   │   ├── e1000_mbx.c
│   │   │   │   ├── e1000_mbx.h
│   │   │   │   ├── e1000_nvm.c
│   │   │   │   ├── e1000_nvm.h
│   │   │   │   ├── e1000_osdep.c
│   │   │   │   ├── e1000_osdep.h
│   │   │   │   ├── e1000_phy.c
│   │   │   │   ├── e1000_phy.h
│   │   │   │   ├── e1000_regs.h
│   │   │   │   ├── e1000_vf.c
│   │   │   │   ├── e1000_vf.h
│   │   │   │   ├── meson.build
│   │   │   │   └── README
│   │   │   ├── e1000_ethdev.h
│   │   │   ├── e1000_logs.c
│   │   │   ├── e1000_logs.h
│   │   │   ├── em_ethdev.c
│   │   │   ├── em_rxtx.c
│   │   │   ├── igb_ethdev.c
│   │   │   ├── igb_flow.c
│   │   │   ├── igb_pf.c
│   │   │   ├── igb_regs.h
│   │   │   ├── igb_rxtx.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ena
│   │   │   ├── base
│   │   │   │   ├── ena_com.c
│   │   │   │   ├── ena_com.h
│   │   │   │   ├── ena_defs
│   │   │   │   │   ├── ena_admin_defs.h
│   │   │   │   │   ├── ena_common_defs.h
│   │   │   │   │   ├── ena_eth_io_defs.h
│   │   │   │   │   ├── ena_gen_info.h
│   │   │   │   │   ├── ena_includes.h
│   │   │   │   │   └── ena_regs_defs.h
│   │   │   │   ├── ena_eth_com.c
│   │   │   │   ├── ena_eth_com.h
│   │   │   │   ├── ena_plat_dpdk.h
│   │   │   │   └── ena_plat.h
│   │   │   ├── ena_ethdev.c
│   │   │   ├── ena_ethdev.h
│   │   │   ├── ena_logs.h
│   │   │   ├── ena_platform.h
│   │   │   ├── ena_rss.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── enetc
│   │   │   ├── base
│   │   │   │   └── enetc_hw.h
│   │   │   ├── enetc_ethdev.c
│   │   │   ├── enetc.h
│   │   │   ├── enetc_logs.h
│   │   │   ├── enetc_rxtx.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── enetfec
│   │   │   ├── enet_ethdev.c
│   │   │   ├── enet_ethdev.h
│   │   │   ├── enet_pmd_logs.h
│   │   │   ├── enet_regs.h
│   │   │   ├── enet_rxtx.c
│   │   │   ├── enet_uio.c
│   │   │   ├── enet_uio.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── enic
│   │   │   ├── base
│   │   │   │   ├── cq_desc.h
│   │   │   │   ├── cq_enet_desc.h
│   │   │   │   ├── rq_enet_desc.h
│   │   │   │   ├── vnic_cq.c
│   │   │   │   ├── vnic_cq.h
│   │   │   │   ├── vnic_dev.c
│   │   │   │   ├── vnic_devcmd.h
│   │   │   │   ├── vnic_dev.h
│   │   │   │   ├── vnic_enet.h
│   │   │   │   ├── vnic_flowman.h
│   │   │   │   ├── vnic_intr.c
│   │   │   │   ├── vnic_intr.h
│   │   │   │   ├── vnic_nic.h
│   │   │   │   ├── vnic_resource.h
│   │   │   │   ├── vnic_rq.c
│   │   │   │   ├── vnic_rq.h
│   │   │   │   ├── vnic_rss.h
│   │   │   │   ├── vnic_stats.h
│   │   │   │   ├── vnic_wq.c
│   │   │   │   ├── vnic_wq.h
│   │   │   │   └── wq_enet_desc.h
│   │   │   ├── enic_compat.h
│   │   │   ├── enic_ethdev.c
│   │   │   ├── enic_flow.c
│   │   │   ├── enic_fm_flow.c
│   │   │   ├── enic.h
│   │   │   ├── enic_main.c
│   │   │   ├── enic_res.c
│   │   │   ├── enic_res.h
│   │   │   ├── enic_rxtx.c
│   │   │   ├── enic_rxtx_common.h
│   │   │   ├── enic_rxtx_vec_avx2.c
│   │   │   ├── enic_vf_representor.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── failsafe
│   │   │   ├── failsafe_args.c
│   │   │   ├── failsafe.c
│   │   │   ├── failsafe_eal.c
│   │   │   ├── failsafe_ether.c
│   │   │   ├── failsafe_flow.c
│   │   │   ├── failsafe_intr.c
│   │   │   ├── failsafe_ops.c
│   │   │   ├── failsafe_private.h
│   │   │   ├── failsafe_rxtx.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── fm10k
│   │   │   ├── base
│   │   │   │   ├── fm10k_api.c
│   │   │   │   ├── fm10k_api.h
│   │   │   │   ├── fm10k_common.c
│   │   │   │   ├── fm10k_common.h
│   │   │   │   ├── fm10k_mbx.c
│   │   │   │   ├── fm10k_mbx.h
│   │   │   │   ├── fm10k_osdep.h
│   │   │   │   ├── fm10k_pf.c
│   │   │   │   ├── fm10k_pf.h
│   │   │   │   ├── fm10k_tlv.c
│   │   │   │   ├── fm10k_tlv.h
│   │   │   │   ├── fm10k_type.h
│   │   │   │   ├── fm10k_vf.c
│   │   │   │   ├── fm10k_vf.h
│   │   │   │   └── meson.build
│   │   │   ├── fm10k_ethdev.c
│   │   │   ├── fm10k.h
│   │   │   ├── fm10k_logs.h
│   │   │   ├── fm10k_rxtx.c
│   │   │   ├── fm10k_rxtx_vec.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── hinic
│   │   │   ├── base
│   │   │   │   ├── hinic_compat.h
│   │   │   │   ├── hinic_csr.h
│   │   │   │   ├── hinic_pmd_api_cmd.c
│   │   │   │   ├── hinic_pmd_api_cmd.h
│   │   │   │   ├── hinic_pmd_cfg.c
│   │   │   │   ├── hinic_pmd_cfg.h
│   │   │   │   ├── hinic_pmd_cmd.h
│   │   │   │   ├── hinic_pmd_cmdq.c
│   │   │   │   ├── hinic_pmd_cmdq.h
│   │   │   │   ├── hinic_pmd_eqs.c
│   │   │   │   ├── hinic_pmd_eqs.h
│   │   │   │   ├── hinic_pmd_hwdev.c
│   │   │   │   ├── hinic_pmd_hwdev.h
│   │   │   │   ├── hinic_pmd_hwif.c
│   │   │   │   ├── hinic_pmd_hwif.h
│   │   │   │   ├── hinic_pmd_mbox.c
│   │   │   │   ├── hinic_pmd_mbox.h
│   │   │   │   ├── hinic_pmd_mgmt.c
│   │   │   │   ├── hinic_pmd_mgmt.h
│   │   │   │   ├── hinic_pmd_niccfg.c
│   │   │   │   ├── hinic_pmd_niccfg.h
│   │   │   │   ├── hinic_pmd_nicio.c
│   │   │   │   ├── hinic_pmd_nicio.h
│   │   │   │   ├── hinic_pmd_wq.c
│   │   │   │   ├── hinic_pmd_wq.h
│   │   │   │   └── meson.build
│   │   │   ├── hinic_pmd_ethdev.c
│   │   │   ├── hinic_pmd_ethdev.h
│   │   │   ├── hinic_pmd_flow.c
│   │   │   ├── hinic_pmd_rx.c
│   │   │   ├── hinic_pmd_rx.h
│   │   │   ├── hinic_pmd_tx.c
│   │   │   ├── hinic_pmd_tx.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── hns3
│   │   │   ├── hns3_cmd.c
│   │   │   ├── hns3_cmd.h
│   │   │   ├── hns3_common.c
│   │   │   ├── hns3_common.h
│   │   │   ├── hns3_dcb.c
│   │   │   ├── hns3_dcb.h
│   │   │   ├── hns3_ethdev.c
│   │   │   ├── hns3_ethdev_dump.c
│   │   │   ├── hns3_ethdev.h
│   │   │   ├── hns3_ethdev_vf.c
│   │   │   ├── hns3_fdir.c
│   │   │   ├── hns3_fdir.h
│   │   │   ├── hns3_flow.c
│   │   │   ├── hns3_flow.h
│   │   │   ├── hns3_intr.c
│   │   │   ├── hns3_intr.h
│   │   │   ├── hns3_logs.h
│   │   │   ├── hns3_mbx.c
│   │   │   ├── hns3_mbx.h
│   │   │   ├── hns3_mp.c
│   │   │   ├── hns3_mp.h
│   │   │   ├── hns3_ptp.c
│   │   │   ├── hns3_regs.c
│   │   │   ├── hns3_regs.h
│   │   │   ├── hns3_rss.c
│   │   │   ├── hns3_rss.h
│   │   │   ├── hns3_rxtx.c
│   │   │   ├── hns3_rxtx.h
│   │   │   ├── hns3_rxtx_vec.c
│   │   │   ├── hns3_rxtx_vec.h
│   │   │   ├── hns3_rxtx_vec_neon.h
│   │   │   ├── hns3_rxtx_vec_sve.c
│   │   │   ├── hns3_stats.c
│   │   │   ├── hns3_stats.h
│   │   │   ├── hns3_tm.c
│   │   │   ├── hns3_tm.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── i40e
│   │   │   ├── base
│   │   │   │   ├── i40e_adminq.c
│   │   │   │   ├── i40e_adminq_cmd.h
│   │   │   │   ├── i40e_adminq.h
│   │   │   │   ├── i40e_alloc.h
│   │   │   │   ├── i40e_common.c
│   │   │   │   ├── i40e_dcb.c
│   │   │   │   ├── i40e_dcb.h
│   │   │   │   ├── i40e_devids.h
│   │   │   │   ├── i40e_diag.c
│   │   │   │   ├── i40e_diag.h
│   │   │   │   ├── i40e_hmc.c
│   │   │   │   ├── i40e_hmc.h
│   │   │   │   ├── i40e_lan_hmc.c
│   │   │   │   ├── i40e_lan_hmc.h
│   │   │   │   ├── i40e_nvm.c
│   │   │   │   ├── i40e_osdep.h
│   │   │   │   ├── i40e_prototype.h
│   │   │   │   ├── i40e_register.h
│   │   │   │   ├── i40e_status.h
│   │   │   │   ├── i40e_type.h
│   │   │   │   ├── meson.build
│   │   │   │   ├── README
│   │   │   │   └── virtchnl.h
│   │   │   ├── i40e_ethdev.c
│   │   │   ├── i40e_ethdev.h
│   │   │   ├── i40e_fdir.c
│   │   │   ├── i40e_flow.c
│   │   │   ├── i40e_hash.c
│   │   │   ├── i40e_hash.h
│   │   │   ├── i40e_logs.h
│   │   │   ├── i40e_pf.c
│   │   │   ├── i40e_pf.h
│   │   │   ├── i40e_regs.h
│   │   │   ├── i40e_rxtx.c
│   │   │   ├── i40e_rxtx_common_avx.h
│   │   │   ├── i40e_rxtx.h
│   │   │   ├── i40e_rxtx_vec_altivec.c
│   │   │   ├── i40e_rxtx_vec_avx2.c
│   │   │   ├── i40e_rxtx_vec_avx512.c
│   │   │   ├── i40e_rxtx_vec_common.h
│   │   │   ├── i40e_rxtx_vec_neon.c
│   │   │   ├── i40e_rxtx_vec_sse.c
│   │   │   ├── i40e_tm.c
│   │   │   ├── i40e_vf_representor.c
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_i40e.c
│   │   │   ├── rte_pmd_i40e.h
│   │   │   └── version.map
│   │   ├── iavf
│   │   │   ├── iavf_ethdev.c
│   │   │   ├── iavf_fdir.c
│   │   │   ├── iavf_generic_flow.c
│   │   │   ├── iavf_generic_flow.h
│   │   │   ├── iavf.h
│   │   │   ├── iavf_hash.c
│   │   │   ├── iavf_ipsec_crypto.c
│   │   │   ├── iavf_ipsec_crypto_capabilities.h
│   │   │   ├── iavf_ipsec_crypto.h
│   │   │   ├── iavf_log.h
│   │   │   ├── iavf_rxtx.c
│   │   │   ├── iavf_rxtx.h
│   │   │   ├── iavf_rxtx_vec_avx2.c
│   │   │   ├── iavf_rxtx_vec_avx512.c
│   │   │   ├── iavf_rxtx_vec_common.h
│   │   │   ├── iavf_rxtx_vec_sse.c
│   │   │   ├── iavf_tm.c
│   │   │   ├── iavf_vchnl.c
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_iavf.h
│   │   │   └── version.map
│   │   ├── ice
│   │   │   ├── base
│   │   │   │   ├── ice_acl.c
│   │   │   │   ├── ice_acl_ctrl.c
│   │   │   │   ├── ice_acl.h
│   │   │   │   ├── ice_adminq_cmd.h
│   │   │   │   ├── ice_alloc.h
│   │   │   │   ├── ice_bitops.h
│   │   │   │   ├── ice_bst_tcam.c
│   │   │   │   ├── ice_bst_tcam.h
│   │   │   │   ├── ice_cgu_regs.h
│   │   │   │   ├── ice_common.c
│   │   │   │   ├── ice_common.h
│   │   │   │   ├── ice_controlq.c
│   │   │   │   ├── ice_controlq.h
│   │   │   │   ├── ice_dcb.c
│   │   │   │   ├── ice_dcb.h
│   │   │   │   ├── ice_devids.h
│   │   │   │   ├── ice_fdir.c
│   │   │   │   ├── ice_fdir.h
│   │   │   │   ├── ice_flex_pipe.c
│   │   │   │   ├── ice_flex_pipe.h
│   │   │   │   ├── ice_flex_type.h
│   │   │   │   ├── ice_flg_rd.c
│   │   │   │   ├── ice_flg_rd.h
│   │   │   │   ├── ice_flow.c
│   │   │   │   ├── ice_flow.h
│   │   │   │   ├── ice_hw_autogen.h
│   │   │   │   ├── ice_imem.c
│   │   │   │   ├── ice_imem.h
│   │   │   │   ├── ice_lan_tx_rx.h
│   │   │   │   ├── ice_metainit.c
│   │   │   │   ├── ice_metainit.h
│   │   │   │   ├── ice_mk_grp.c
│   │   │   │   ├── ice_mk_grp.h
│   │   │   │   ├── ice_nvm.c
│   │   │   │   ├── ice_nvm.h
│   │   │   │   ├── ice_osdep.h
│   │   │   │   ├── ice_parser.c
│   │   │   │   ├── ice_parser.h
│   │   │   │   ├── ice_parser_rt.c
│   │   │   │   ├── ice_parser_rt.h
│   │   │   │   ├── ice_parser_util.h
│   │   │   │   ├── ice_pg_cam.c
│   │   │   │   ├── ice_pg_cam.h
│   │   │   │   ├── ice_protocol_type.h
│   │   │   │   ├── ice_proto_grp.c
│   │   │   │   ├── ice_proto_grp.h
│   │   │   │   ├── ice_ptp_consts.h
│   │   │   │   ├── ice_ptp_hw.c
│   │   │   │   ├── ice_ptp_hw.h
│   │   │   │   ├── ice_ptype_mk.c
│   │   │   │   ├── ice_ptype_mk.h
│   │   │   │   ├── ice_sbq_cmd.h
│   │   │   │   ├── ice_sched.c
│   │   │   │   ├── ice_sched.h
│   │   │   │   ├── ice_status.h
│   │   │   │   ├── ice_switch.c
│   │   │   │   ├── ice_switch.h
│   │   │   │   ├── ice_tmatch.h
│   │   │   │   ├── ice_type.h
│   │   │   │   ├── ice_vlan_mode.c
│   │   │   │   ├── ice_vlan_mode.h
│   │   │   │   ├── ice_xlt_kb.c
│   │   │   │   ├── ice_xlt_kb.h
│   │   │   │   ├── meson.build
│   │   │   │   └── README
│   │   │   ├── ice_acl_filter.c
│   │   │   ├── ice_dcf.c
│   │   │   ├── ice_dcf_ethdev.c
│   │   │   ├── ice_dcf_ethdev.h
│   │   │   ├── ice_dcf.h
│   │   │   ├── ice_dcf_parent.c
│   │   │   ├── ice_dcf_sched.c
│   │   │   ├── ice_dcf_vf_representor.c
│   │   │   ├── ice_ethdev.c
│   │   │   ├── ice_ethdev.h
│   │   │   ├── ice_fdir_filter.c
│   │   │   ├── ice_generic_flow.c
│   │   │   ├── ice_generic_flow.h
│   │   │   ├── ice_hash.c
│   │   │   ├── ice_logs.h
│   │   │   ├── ice_rxtx.c
│   │   │   ├── ice_rxtx_common_avx.h
│   │   │   ├── ice_rxtx.h
│   │   │   ├── ice_rxtx_vec_avx2.c
│   │   │   ├── ice_rxtx_vec_avx512.c
│   │   │   ├── ice_rxtx_vec_common.h
│   │   │   ├── ice_rxtx_vec_sse.c
│   │   │   ├── ice_switch_filter.c
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_ice.h
│   │   │   └── version.map
│   │   ├── igc
│   │   │   ├── base
│   │   │   │   ├── igc_82571.h
│   │   │   │   ├── igc_82575.h
│   │   │   │   ├── igc_api.c
│   │   │   │   ├── igc_api.h
│   │   │   │   ├── igc_base.c
│   │   │   │   ├── igc_base.h
│   │   │   │   ├── igc_defines.h
│   │   │   │   ├── igc_hw.h
│   │   │   │   ├── igc_i225.c
│   │   │   │   ├── igc_i225.h
│   │   │   │   ├── igc_ich8lan.h
│   │   │   │   ├── igc_mac.c
│   │   │   │   ├── igc_mac.h
│   │   │   │   ├── igc_manage.c
│   │   │   │   ├── igc_manage.h
│   │   │   │   ├── igc_nvm.c
│   │   │   │   ├── igc_nvm.h
│   │   │   │   ├── igc_osdep.c
│   │   │   │   ├── igc_osdep.h
│   │   │   │   ├── igc_phy.c
│   │   │   │   ├── igc_phy.h
│   │   │   │   ├── igc_regs.h
│   │   │   │   ├── meson.build
│   │   │   │   └── README
│   │   │   ├── igc_ethdev.c
│   │   │   ├── igc_ethdev.h
│   │   │   ├── igc_filter.c
│   │   │   ├── igc_filter.h
│   │   │   ├── igc_flow.c
│   │   │   ├── igc_flow.h
│   │   │   ├── igc_logs.c
│   │   │   ├── igc_logs.h
│   │   │   ├── igc_txrx.c
│   │   │   ├── igc_txrx.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ionic
│   │   │   ├── ionic_dev.c
│   │   │   ├── ionic_dev.h
│   │   │   ├── ionic_ethdev.c
│   │   │   ├── ionic_ethdev.h
│   │   │   ├── ionic.h
│   │   │   ├── ionic_if.h
│   │   │   ├── ionic_lif.c
│   │   │   ├── ionic_lif.h
│   │   │   ├── ionic_logs.h
│   │   │   ├── ionic_mac_api.c
│   │   │   ├── ionic_mac_api.h
│   │   │   ├── ionic_main.c
│   │   │   ├── ionic_osdep.h
│   │   │   ├── ionic_regs.h
│   │   │   ├── ionic_rx_filter.c
│   │   │   ├── ionic_rx_filter.h
│   │   │   ├── ionic_rxtx.c
│   │   │   ├── ionic_rxtx.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ipn3ke
│   │   │   ├── ipn3ke_ethdev.c
│   │   │   ├── ipn3ke_ethdev.h
│   │   │   ├── ipn3ke_flow.c
│   │   │   ├── ipn3ke_flow.h
│   │   │   ├── ipn3ke_logs.h
│   │   │   ├── ipn3ke_rawdev_api.h
│   │   │   ├── ipn3ke_representor.c
│   │   │   ├── ipn3ke_tm.c
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── ixgbe
│   │   │   ├── base
│   │   │   │   ├── ixgbe_82598.c
│   │   │   │   ├── ixgbe_82598.h
│   │   │   │   ├── ixgbe_82599.c
│   │   │   │   ├── ixgbe_82599.h
│   │   │   │   ├── ixgbe_api.c
│   │   │   │   ├── ixgbe_api.h
│   │   │   │   ├── ixgbe_common.c
│   │   │   │   ├── ixgbe_common.h
│   │   │   │   ├── ixgbe_dcb_82598.c
│   │   │   │   ├── ixgbe_dcb_82598.h
│   │   │   │   ├── ixgbe_dcb_82599.c
│   │   │   │   ├── ixgbe_dcb_82599.h
│   │   │   │   ├── ixgbe_dcb.c
│   │   │   │   ├── ixgbe_dcb.h
│   │   │   │   ├── ixgbe_hv_vf.c
│   │   │   │   ├── ixgbe_hv_vf.h
│   │   │   │   ├── ixgbe_mbx.c
│   │   │   │   ├── ixgbe_mbx.h
│   │   │   │   ├── ixgbe_osdep.h
│   │   │   │   ├── ixgbe_phy.c
│   │   │   │   ├── ixgbe_phy.h
│   │   │   │   ├── ixgbe_type.h
│   │   │   │   ├── ixgbe_vf.c
│   │   │   │   ├── ixgbe_vf.h
│   │   │   │   ├── ixgbe_x540.c
│   │   │   │   ├── ixgbe_x540.h
│   │   │   │   ├── ixgbe_x550.c
│   │   │   │   ├── ixgbe_x550.h
│   │   │   │   ├── meson.build
│   │   │   │   └── README
│   │   │   ├── ixgbe_82599_bypass.c
│   │   │   ├── ixgbe_bypass_api.h
│   │   │   ├── ixgbe_bypass.c
│   │   │   ├── ixgbe_bypass_defines.h
│   │   │   ├── ixgbe_bypass.h
│   │   │   ├── ixgbe_ethdev.c
│   │   │   ├── ixgbe_ethdev.h
│   │   │   ├── ixgbe_fdir.c
│   │   │   ├── ixgbe_flow.c
│   │   │   ├── ixgbe_ipsec.c
│   │   │   ├── ixgbe_ipsec.h
│   │   │   ├── ixgbe_logs.h
│   │   │   ├── ixgbe_pf.c
│   │   │   ├── ixgbe_regs.h
│   │   │   ├── ixgbe_rxtx.c
│   │   │   ├── ixgbe_rxtx.h
│   │   │   ├── ixgbe_rxtx_vec_common.h
│   │   │   ├── ixgbe_rxtx_vec_neon.c
│   │   │   ├── ixgbe_rxtx_vec_sse.c
│   │   │   ├── ixgbe_tm.c
│   │   │   ├── ixgbe_vf_representor.c
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_ixgbe.c
│   │   │   ├── rte_pmd_ixgbe.h
│   │   │   └── version.map
│   │   ├── kni
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_kni.c
│   │   │   └── version.map
│   │   ├── liquidio
│   │   │   ├── base
│   │   │   │   ├── lio_23xx_reg.h
│   │   │   │   ├── lio_23xx_vf.c
│   │   │   │   ├── lio_23xx_vf.h
│   │   │   │   ├── lio_hw_defs.h
│   │   │   │   ├── lio_mbox.c
│   │   │   │   └── lio_mbox.h
│   │   │   ├── lio_ethdev.c
│   │   │   ├── lio_ethdev.h
│   │   │   ├── lio_logs.h
│   │   │   ├── lio_rxtx.c
│   │   │   ├── lio_rxtx.h
│   │   │   ├── lio_struct.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── memif
│   │   │   ├── memif.h
│   │   │   ├── memif_socket.c
│   │   │   ├── memif_socket.h
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_memif.c
│   │   │   ├── rte_eth_memif.h
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── mlx4
│   │   │   ├── meson.build
│   │   │   ├── mlx4.c
│   │   │   ├── mlx4_ethdev.c
│   │   │   ├── mlx4_flow.c
│   │   │   ├── mlx4_flow.h
│   │   │   ├── mlx4_glue.c
│   │   │   ├── mlx4_glue.h
│   │   │   ├── mlx4.h
│   │   │   ├── mlx4_intr.c
│   │   │   ├── mlx4_mp.c
│   │   │   ├── mlx4_mr.c
│   │   │   ├── mlx4_mr.h
│   │   │   ├── mlx4_prm.h
│   │   │   ├── mlx4_rxq.c
│   │   │   ├── mlx4_rxtx.c
│   │   │   ├── mlx4_rxtx.h
│   │   │   ├── mlx4_txq.c
│   │   │   ├── mlx4_utils.c
│   │   │   ├── mlx4_utils.h
│   │   │   └── version.map
│   │   ├── mlx5
│   │   │   ├── linux
│   │   │   │   ├── meson.build
│   │   │   │   ├── mlx5_ethdev_os.c
│   │   │   │   ├── mlx5_flow_os.c
│   │   │   │   ├── mlx5_flow_os.h
│   │   │   │   ├── mlx5_mp_os.c
│   │   │   │   ├── mlx5_os.c
│   │   │   │   ├── mlx5_os.h
│   │   │   │   ├── mlx5_socket.c
│   │   │   │   ├── mlx5_verbs.c
│   │   │   │   ├── mlx5_verbs.h
│   │   │   │   └── mlx5_vlan_os.c
│   │   │   ├── meson.build
│   │   │   ├── mlx5.c
│   │   │   ├── mlx5_defs.h
│   │   │   ├── mlx5_devx.c
│   │   │   ├── mlx5_devx.h
│   │   │   ├── mlx5_dr.c
│   │   │   ├── mlx5_dr.h
│   │   │   ├── mlx5_ethdev.c
│   │   │   ├── mlx5_flow_aso.c
│   │   │   ├── mlx5_flow.c
│   │   │   ├── mlx5_flow_dv.c
│   │   │   ├── mlx5_flow_flex.c
│   │   │   ├── mlx5_flow.h
│   │   │   ├── mlx5_flow_hw.c
│   │   │   ├── mlx5_flow_meter.c
│   │   │   ├── mlx5_flow_verbs.c
│   │   │   ├── mlx5.h
│   │   │   ├── mlx5_mac.c
│   │   │   ├── mlx5_rss.c
│   │   │   ├── mlx5_rx.c
│   │   │   ├── mlx5_rx.h
│   │   │   ├── mlx5_rxmode.c
│   │   │   ├── mlx5_rxq.c
│   │   │   ├── mlx5_rxtx.c
│   │   │   ├── mlx5_rxtx.h
│   │   │   ├── mlx5_rxtx_vec_altivec.h
│   │   │   ├── mlx5_rxtx_vec.c
│   │   │   ├── mlx5_rxtx_vec.h
│   │   │   ├── mlx5_rxtx_vec_neon.h
│   │   │   ├── mlx5_rxtx_vec_sse.h
│   │   │   ├── mlx5_stats.c
│   │   │   ├── mlx5_trigger.c
│   │   │   ├── mlx5_tx.c
│   │   │   ├── mlx5_tx_empw.c
│   │   │   ├── mlx5_tx.h
│   │   │   ├── mlx5_tx_mpw.c
│   │   │   ├── mlx5_tx_nompw.c
│   │   │   ├── mlx5_txpp.c
│   │   │   ├── mlx5_txq.c
│   │   │   ├── mlx5_tx_txpp.c
│   │   │   ├── mlx5_utils.c
│   │   │   ├── mlx5_utils.h
│   │   │   ├── mlx5_vlan.c
│   │   │   ├── rte_pmd_mlx5.h
│   │   │   ├── version.map
│   │   │   └── windows
│   │   │       ├── meson.build
│   │   │       ├── mlx5_ethdev_os.c
│   │   │       ├── mlx5_flow_os.c
│   │   │       ├── mlx5_flow_os.h
│   │   │       ├── mlx5_mp_os.c
│   │   │       ├── mlx5_os.c
│   │   │       ├── mlx5_os.h
│   │   │       └── mlx5_vlan_os.c
│   │   ├── mvneta
│   │   │   ├── meson.build
│   │   │   ├── mvneta_ethdev.c
│   │   │   ├── mvneta_ethdev.h
│   │   │   ├── mvneta_rxtx.c
│   │   │   ├── mvneta_rxtx.h
│   │   │   └── version.map
│   │   ├── mvpp2
│   │   │   ├── meson.build
│   │   │   ├── mrvl_ethdev.c
│   │   │   ├── mrvl_ethdev.h
│   │   │   ├── mrvl_flow.c
│   │   │   ├── mrvl_flow.h
│   │   │   ├── mrvl_mtr.c
│   │   │   ├── mrvl_mtr.h
│   │   │   ├── mrvl_qos.c
│   │   │   ├── mrvl_qos.h
│   │   │   ├── mrvl_tm.c
│   │   │   ├── mrvl_tm.h
│   │   │   └── version.map
│   │   ├── netvsc
│   │   │   ├── hn_ethdev.c
│   │   │   ├── hn_logs.h
│   │   │   ├── hn_nvs.c
│   │   │   ├── hn_nvs.h
│   │   │   ├── hn_rndis.c
│   │   │   ├── hn_rndis.h
│   │   │   ├── hn_rxtx.c
│   │   │   ├── hn_var.h
│   │   │   ├── hn_vf.c
│   │   │   ├── meson.build
│   │   │   ├── ndis.h
│   │   │   ├── rndis.h
│   │   │   └── version.map
│   │   ├── nfb
│   │   │   ├── meson.build
│   │   │   ├── nfb_ethdev.c
│   │   │   ├── nfb.h
│   │   │   ├── nfb_rx.c
│   │   │   ├── nfb_rx.h
│   │   │   ├── nfb_rxmode.c
│   │   │   ├── nfb_rxmode.h
│   │   │   ├── nfb_stats.c
│   │   │   ├── nfb_stats.h
│   │   │   ├── nfb_tx.c
│   │   │   ├── nfb_tx.h
│   │   │   └── version.map
│   │   ├── nfp
│   │   │   ├── meson.build
│   │   │   ├── nfp_common.c
│   │   │   ├── nfp_common.h
│   │   │   ├── nfpcore
│   │   │   │   ├── nfp6000
│   │   │   │   │   ├── nfp6000.h
│   │   │   │   │   └── nfp_xpb.h
│   │   │   │   ├── nfp-common
│   │   │   │   │   ├── nfp_cppat.h
│   │   │   │   │   ├── nfp_platform.h
│   │   │   │   │   └── nfp_resid.h
│   │   │   │   ├── nfp_cppcore.c
│   │   │   │   ├── nfp_cpp.h
│   │   │   │   ├── nfp_cpp_pcie_ops.c
│   │   │   │   ├── nfp_crc.c
│   │   │   │   ├── nfp_crc.h
│   │   │   │   ├── nfp_hwinfo.c
│   │   │   │   ├── nfp_hwinfo.h
│   │   │   │   ├── nfp_mip.c
│   │   │   │   ├── nfp_mip.h
│   │   │   │   ├── nfp_mutex.c
│   │   │   │   ├── nfp_nffw.c
│   │   │   │   ├── nfp_nffw.h
│   │   │   │   ├── nfp_nsp.c
│   │   │   │   ├── nfp_nsp_cmds.c
│   │   │   │   ├── nfp_nsp_eth.c
│   │   │   │   ├── nfp_nsp.h
│   │   │   │   ├── nfp_resource.c
│   │   │   │   ├── nfp_resource.h
│   │   │   │   ├── nfp_rtsym.c
│   │   │   │   ├── nfp_rtsym.h
│   │   │   │   └── nfp_target.h
│   │   │   ├── nfp_cpp_bridge.c
│   │   │   ├── nfp_cpp_bridge.h
│   │   │   ├── nfp_ctrl.h
│   │   │   ├── nfp_ethdev.c
│   │   │   ├── nfp_ethdev_vf.c
│   │   │   ├── nfp_logs.h
│   │   │   ├── nfp_rxtx.c
│   │   │   ├── nfp_rxtx.h
│   │   │   └── version.map
│   │   ├── ngbe
│   │   │   ├── base
│   │   │   │   ├── meson.build
│   │   │   │   ├── ngbe_devids.h
│   │   │   │   ├── ngbe_dummy.h
│   │   │   │   ├── ngbe_eeprom.c
│   │   │   │   ├── ngbe_eeprom.h
│   │   │   │   ├── ngbe.h
│   │   │   │   ├── ngbe_hw.c
│   │   │   │   ├── ngbe_hw.h
│   │   │   │   ├── ngbe_mbx.c
│   │   │   │   ├── ngbe_mbx.h
│   │   │   │   ├── ngbe_mng.c
│   │   │   │   ├── ngbe_mng.h
│   │   │   │   ├── ngbe_osdep.h
│   │   │   │   ├── ngbe_phy.c
│   │   │   │   ├── ngbe_phy.h
│   │   │   │   ├── ngbe_phy_mvl.c
│   │   │   │   ├── ngbe_phy_mvl.h
│   │   │   │   ├── ngbe_phy_rtl.c
│   │   │   │   ├── ngbe_phy_rtl.h
│   │   │   │   ├── ngbe_phy_yt.c
│   │   │   │   ├── ngbe_phy_yt.h
│   │   │   │   ├── ngbe_regs.h
│   │   │   │   ├── ngbe_status.h
│   │   │   │   └── ngbe_type.h
│   │   │   ├── meson.build
│   │   │   ├── ngbe_ethdev.c
│   │   │   ├── ngbe_ethdev.h
│   │   │   ├── ngbe_logs.h
│   │   │   ├── ngbe_pf.c
│   │   │   ├── ngbe_ptypes.c
│   │   │   ├── ngbe_ptypes.h
│   │   │   ├── ngbe_regs_group.h
│   │   │   ├── ngbe_rxtx.c
│   │   │   ├── ngbe_rxtx.h
│   │   │   └── version.map
│   │   ├── null
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_null.c
│   │   │   └── version.map
│   │   ├── octeontx
│   │   │   ├── base
│   │   │   │   ├── meson.build
│   │   │   │   ├── octeontx_bgx.c
│   │   │   │   ├── octeontx_bgx.h
│   │   │   │   ├── octeontx_io.h
│   │   │   │   ├── octeontx_pki_var.h
│   │   │   │   ├── octeontx_pkivf.c
│   │   │   │   ├── octeontx_pkivf.h
│   │   │   │   ├── octeontx_pkovf.c
│   │   │   │   └── octeontx_pkovf.h
│   │   │   ├── meson.build
│   │   │   ├── octeontx_ethdev.c
│   │   │   ├── octeontx_ethdev.h
│   │   │   ├── octeontx_ethdev_ops.c
│   │   │   ├── octeontx_logs.h
│   │   │   ├── octeontx_rxtx.c
│   │   │   ├── octeontx_rxtx.h
│   │   │   └── version.map
│   │   ├── octeontx_ep
│   │   │   ├── meson.build
│   │   │   ├── otx2_ep_vf.c
│   │   │   ├── otx2_ep_vf.h
│   │   │   ├── otx_ep_common.h
│   │   │   ├── otx_ep_ethdev.c
│   │   │   ├── otx_ep_rxtx.c
│   │   │   ├── otx_ep_rxtx.h
│   │   │   ├── otx_ep_vf.c
│   │   │   ├── otx_ep_vf.h
│   │   │   └── version.map
│   │   ├── pcap
│   │   │   ├── meson.build
│   │   │   ├── pcap_ethdev.c
│   │   │   ├── pcap_osdep_freebsd.c
│   │   │   ├── pcap_osdep.h
│   │   │   ├── pcap_osdep_linux.c
│   │   │   ├── pcap_osdep_windows.c
│   │   │   └── version.map
│   │   ├── pfe
│   │   │   ├── base
│   │   │   │   ├── cbus
│   │   │   │   │   ├── bmu.h
│   │   │   │   │   ├── class_csr.h
│   │   │   │   │   ├── emac_mtip.h
│   │   │   │   │   ├── gpi.h
│   │   │   │   │   ├── hif.h
│   │   │   │   │   ├── hif_nocpy.h
│   │   │   │   │   ├── tmu_csr.h
│   │   │   │   │   └── util_csr.h
│   │   │   │   ├── cbus.h
│   │   │   │   └── pfe.h
│   │   │   ├── meson.build
│   │   │   ├── pfe_ethdev.c
│   │   │   ├── pfe_eth.h
│   │   │   ├── pfe_hal.c
│   │   │   ├── pfe_hif.c
│   │   │   ├── pfe_hif.h
│   │   │   ├── pfe_hif_lib.c
│   │   │   ├── pfe_hif_lib.h
│   │   │   ├── pfe_logs.h
│   │   │   ├── pfe_mod.h
│   │   │   └── version.map
│   │   ├── qede
│   │   │   ├── base
│   │   │   │   ├── bcm_osal.c
│   │   │   │   ├── bcm_osal.h
│   │   │   │   ├── common_hsi.h
│   │   │   │   ├── ecore_attn_values.h
│   │   │   │   ├── ecore_chain.h
│   │   │   │   ├── ecore_cxt_api.h
│   │   │   │   ├── ecore_cxt.c
│   │   │   │   ├── ecore_cxt.h
│   │   │   │   ├── ecore_dcbx_api.h
│   │   │   │   ├── ecore_dcbx.c
│   │   │   │   ├── ecore_dcbx.h
│   │   │   │   ├── ecore_dev_api.h
│   │   │   │   ├── ecore_dev.c
│   │   │   │   ├── ecore_gtt_reg_addr.h
│   │   │   │   ├── ecore_gtt_values.h
│   │   │   │   ├── ecore.h
│   │   │   │   ├── ecore_hsi_common.h
│   │   │   │   ├── ecore_hsi_debug_tools.h
│   │   │   │   ├── ecore_hsi_eth.h
│   │   │   │   ├── ecore_hsi_func_common.h
│   │   │   │   ├── ecore_hsi_init_func.h
│   │   │   │   ├── ecore_hsi_init_tool.h
│   │   │   │   ├── ecore_hw.c
│   │   │   │   ├── ecore_hw_defs.h
│   │   │   │   ├── ecore_hw.h
│   │   │   │   ├── ecore_init_fw_funcs.c
│   │   │   │   ├── ecore_init_fw_funcs.h
│   │   │   │   ├── ecore_init_ops.c
│   │   │   │   ├── ecore_init_ops.h
│   │   │   │   ├── ecore_int_api.h
│   │   │   │   ├── ecore_int.c
│   │   │   │   ├── ecore_int.h
│   │   │   │   ├── ecore_iov_api.h
│   │   │   │   ├── ecore_iro.h
│   │   │   │   ├── ecore_iro_values.h
│   │   │   │   ├── ecore_l2_api.h
│   │   │   │   ├── ecore_l2.c
│   │   │   │   ├── ecore_l2.h
│   │   │   │   ├── ecore_mcp_api.h
│   │   │   │   ├── ecore_mcp.c
│   │   │   │   ├── ecore_mcp.h
│   │   │   │   ├── ecore_mng_tlv.c
│   │   │   │   ├── ecore_proto_if.h
│   │   │   │   ├── ecore_rt_defs.h
│   │   │   │   ├── ecore_sp_api.h
│   │   │   │   ├── ecore_sp_commands.c
│   │   │   │   ├── ecore_sp_commands.h
│   │   │   │   ├── ecore_spq.c
│   │   │   │   ├── ecore_spq.h
│   │   │   │   ├── ecore_sriov.c
│   │   │   │   ├── ecore_sriov.h
│   │   │   │   ├── ecore_status.h
│   │   │   │   ├── ecore_utils.h
│   │   │   │   ├── ecore_vf_api.h
│   │   │   │   ├── ecore_vf.c
│   │   │   │   ├── ecore_vf.h
│   │   │   │   ├── ecore_vfpf_if.h
│   │   │   │   ├── eth_common.h
│   │   │   │   ├── mcp_public.h
│   │   │   │   ├── meson.build
│   │   │   │   ├── nvm_cfg.h
│   │   │   │   └── reg_addr.h
│   │   │   ├── meson.build
│   │   │   ├── qede_debug.c
│   │   │   ├── qede_debug.h
│   │   │   ├── qede_ethdev.c
│   │   │   ├── qede_ethdev.h
│   │   │   ├── qede_filter.c
│   │   │   ├── qede_if.h
│   │   │   ├── qede_logs.h
│   │   │   ├── qede_main.c
│   │   │   ├── qede_regs.c
│   │   │   ├── qede_rxtx.c
│   │   │   ├── qede_rxtx.h
│   │   │   ├── qede_sriov.c
│   │   │   ├── qede_sriov.h
│   │   │   └── version.map
│   │   ├── ring
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_ring.c
│   │   │   ├── rte_eth_ring.h
│   │   │   └── version.map
│   │   ├── sfc
│   │   │   ├── meson.build
│   │   │   ├── sfc.c
│   │   │   ├── sfc_debug.h
│   │   │   ├── sfc_dp.c
│   │   │   ├── sfc_dp.h
│   │   │   ├── sfc_dp_rx.h
│   │   │   ├── sfc_dp_tx.h
│   │   │   ├── sfc_ef100.h
│   │   │   ├── sfc_ef100_rx.c
│   │   │   ├── sfc_ef100_tx.c
│   │   │   ├── sfc_ef10_essb_rx.c
│   │   │   ├── sfc_ef10.h
│   │   │   ├── sfc_ef10_rx.c
│   │   │   ├── sfc_ef10_rx_ev.h
│   │   │   ├── sfc_ef10_tx.c
│   │   │   ├── sfc_ethdev.c
│   │   │   ├── sfc_ethdev_state.h
│   │   │   ├── sfc_ev.c
│   │   │   ├── sfc_ev.h
│   │   │   ├── sfc_filter.c
│   │   │   ├── sfc_filter.h
│   │   │   ├── sfc_flow.c
│   │   │   ├── sfc_flow.h
│   │   │   ├── sfc_flow_rss.c
│   │   │   ├── sfc_flow_rss.h
│   │   │   ├── sfc_flow_tunnel.c
│   │   │   ├── sfc_flow_tunnel.h
│   │   │   ├── sfc.h
│   │   │   ├── sfc_intr.c
│   │   │   ├── sfc_kvargs.c
│   │   │   ├── sfc_kvargs.h
│   │   │   ├── sfc_log.h
│   │   │   ├── sfc_mae.c
│   │   │   ├── sfc_mae_counter.c
│   │   │   ├── sfc_mae_counter.h
│   │   │   ├── sfc_mae.h
│   │   │   ├── sfc_mcdi.c
│   │   │   ├── sfc_nic_dma.c
│   │   │   ├── sfc_nic_dma_dp.h
│   │   │   ├── sfc_nic_dma.h
│   │   │   ├── sfc_port.c
│   │   │   ├── sfc_repr.c
│   │   │   ├── sfc_repr.h
│   │   │   ├── sfc_repr_proxy_api.h
│   │   │   ├── sfc_repr_proxy.c
│   │   │   ├── sfc_repr_proxy.h
│   │   │   ├── sfc_rx.c
│   │   │   ├── sfc_rx.h
│   │   │   ├── sfc_service.c
│   │   │   ├── sfc_service.h
│   │   │   ├── sfc_sriov.c
│   │   │   ├── sfc_sriov.h
│   │   │   ├── sfc_stats.h
│   │   │   ├── sfc_switch.c
│   │   │   ├── sfc_switch.h
│   │   │   ├── sfc_sw_stats.c
│   │   │   ├── sfc_sw_stats.h
│   │   │   ├── sfc_tso.c
│   │   │   ├── sfc_tso.h
│   │   │   ├── sfc_tweak.h
│   │   │   ├── sfc_tx.c
│   │   │   ├── sfc_tx.h
│   │   │   └── version.map
│   │   ├── softnic
│   │   │   ├── conn.c
│   │   │   ├── conn.h
│   │   │   ├── firmware.cli
│   │   │   ├── meson.build
│   │   │   ├── parser.c
│   │   │   ├── parser.h
│   │   │   ├── rte_eth_softnic_action.c
│   │   │   ├── rte_eth_softnic.c
│   │   │   ├── rte_eth_softnic_cli.c
│   │   │   ├── rte_eth_softnic_cryptodev.c
│   │   │   ├── rte_eth_softnic_flow.c
│   │   │   ├── rte_eth_softnic.h
│   │   │   ├── rte_eth_softnic_internals.h
│   │   │   ├── rte_eth_softnic_link.c
│   │   │   ├── rte_eth_softnic_mempool.c
│   │   │   ├── rte_eth_softnic_meter.c
│   │   │   ├── rte_eth_softnic_pipeline.c
│   │   │   ├── rte_eth_softnic_swq.c
│   │   │   ├── rte_eth_softnic_tap.c
│   │   │   ├── rte_eth_softnic_thread.c
│   │   │   ├── rte_eth_softnic_tm.c
│   │   │   └── version.map
│   │   ├── tap
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_tap.c
│   │   │   ├── rte_eth_tap.h
│   │   │   ├── tap_bpf_api.c
│   │   │   ├── tap_bpf.h
│   │   │   ├── tap_bpf_insns.h
│   │   │   ├── tap_bpf_program.c
│   │   │   ├── tap_flow.c
│   │   │   ├── tap_flow.h
│   │   │   ├── tap_intr.c
│   │   │   ├── tap_log.h
│   │   │   ├── tap_netlink.c
│   │   │   ├── tap_netlink.h
│   │   │   ├── tap_rss.h
│   │   │   ├── tap_tcmsgs.c
│   │   │   ├── tap_tcmsgs.h
│   │   │   └── version.map
│   │   ├── thunderx
│   │   │   ├── base
│   │   │   │   ├── meson.build
│   │   │   │   ├── nicvf_bsvf.c
│   │   │   │   ├── nicvf_bsvf.h
│   │   │   │   ├── nicvf_hw.c
│   │   │   │   ├── nicvf_hw_defs.h
│   │   │   │   ├── nicvf_hw.h
│   │   │   │   ├── nicvf_mbox.c
│   │   │   │   ├── nicvf_mbox.h
│   │   │   │   └── nicvf_plat.h
│   │   │   ├── meson.build
│   │   │   ├── nicvf_ethdev.c
│   │   │   ├── nicvf_ethdev.h
│   │   │   ├── nicvf_logs.h
│   │   │   ├── nicvf_rxtx.c
│   │   │   ├── nicvf_rxtx.h
│   │   │   ├── nicvf_struct.h
│   │   │   ├── nicvf_svf.c
│   │   │   ├── nicvf_svf.h
│   │   │   └── version.map
│   │   ├── txgbe
│   │   │   ├── base
│   │   │   │   ├── meson.build
│   │   │   │   ├── txgbe_dcb.c
│   │   │   │   ├── txgbe_dcb.h
│   │   │   │   ├── txgbe_dcb_hw.c
│   │   │   │   ├── txgbe_dcb_hw.h
│   │   │   │   ├── txgbe_devids.h
│   │   │   │   ├── txgbe_dummy.h
│   │   │   │   ├── txgbe_eeprom.c
│   │   │   │   ├── txgbe_eeprom.h
│   │   │   │   ├── txgbe.h
│   │   │   │   ├── txgbe_hw.c
│   │   │   │   ├── txgbe_hw.h
│   │   │   │   ├── txgbe_mbx.c
│   │   │   │   ├── txgbe_mbx.h
│   │   │   │   ├── txgbe_mng.c
│   │   │   │   ├── txgbe_mng.h
│   │   │   │   ├── txgbe_osdep.h
│   │   │   │   ├── txgbe_phy.c
│   │   │   │   ├── txgbe_phy.h
│   │   │   │   ├── txgbe_regs.h
│   │   │   │   ├── txgbe_status.h
│   │   │   │   ├── txgbe_type.h
│   │   │   │   ├── txgbe_vf.c
│   │   │   │   └── txgbe_vf.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_txgbe.h
│   │   │   ├── txgbe_ethdev.c
│   │   │   ├── txgbe_ethdev.h
│   │   │   ├── txgbe_ethdev_vf.c
│   │   │   ├── txgbe_fdir.c
│   │   │   ├── txgbe_flow.c
│   │   │   ├── txgbe_ipsec.c
│   │   │   ├── txgbe_ipsec.h
│   │   │   ├── txgbe_logs.h
│   │   │   ├── txgbe_pf.c
│   │   │   ├── txgbe_ptypes.c
│   │   │   ├── txgbe_ptypes.h
│   │   │   ├── txgbe_regs_group.h
│   │   │   ├── txgbe_rxtx.c
│   │   │   ├── txgbe_rxtx.h
│   │   │   ├── txgbe_tm.c
│   │   │   └── version.map
│   │   ├── vdev_netvsc
│   │   │   ├── meson.build
│   │   │   ├── vdev_netvsc.c
│   │   │   └── version.map
│   │   ├── vhost
│   │   │   ├── meson.build
│   │   │   ├── rte_eth_vhost.c
│   │   │   ├── rte_eth_vhost.h
│   │   │   └── version.map
│   │   ├── virtio
│   │   │   ├── meson.build
│   │   │   ├── version.map
│   │   │   ├── virtio.c
│   │   │   ├── virtio_ethdev.c
│   │   │   ├── virtio_ethdev.h
│   │   │   ├── virtio.h
│   │   │   ├── virtio_logs.h
│   │   │   ├── virtio_pci.c
│   │   │   ├── virtio_pci_ethdev.c
│   │   │   ├── virtio_pci.h
│   │   │   ├── virtio_ring.h
│   │   │   ├── virtio_rxtx.c
│   │   │   ├── virtio_rxtx.h
│   │   │   ├── virtio_rxtx_packed_avx.h
│   │   │   ├── virtio_rxtx_packed.c
│   │   │   ├── virtio_rxtx_packed.h
│   │   │   ├── virtio_rxtx_packed_neon.h
│   │   │   ├── virtio_rxtx_simple_altivec.c
│   │   │   ├── virtio_rxtx_simple.c
│   │   │   ├── virtio_rxtx_simple.h
│   │   │   ├── virtio_rxtx_simple_neon.c
│   │   │   ├── virtio_rxtx_simple_sse.c
│   │   │   ├── virtio_user
│   │   │   │   ├── vhost.h
│   │   │   │   ├── vhost_kernel.c
│   │   │   │   ├── vhost_kernel_tap.c
│   │   │   │   ├── vhost_kernel_tap.h
│   │   │   │   ├── vhost_user.c
│   │   │   │   ├── vhost_vdpa.c
│   │   │   │   ├── virtio_user_dev.c
│   │   │   │   └── virtio_user_dev.h
│   │   │   ├── virtio_user_ethdev.c
│   │   │   ├── virtqueue.c
│   │   │   └── virtqueue.h
│   │   └── vmxnet3
│   │       ├── base
│   │       │   ├── README
│   │       │   ├── upt1_defs.h
│   │       │   ├── vmware_pack_begin.h
│   │       │   ├── vmware_pack_end.h
│   │       │   ├── vmxnet3_defs.h
│   │       │   └── vmxnet3_osdep.h
│   │       ├── meson.build
│   │       ├── version.map
│   │       ├── vmxnet3_ethdev.c
│   │       ├── vmxnet3_ethdev.h
│   │       ├── vmxnet3_logs.h
│   │       ├── vmxnet3_ring.h
│   │       └── vmxnet3_rxtx.c
│   ├── raw
│   │   ├── cnxk_bphy
│   │   │   ├── cnxk_bphy.c
│   │   │   ├── cnxk_bphy_cgx.c
│   │   │   ├── cnxk_bphy_cgx.h
│   │   │   ├── cnxk_bphy_cgx_test.c
│   │   │   ├── cnxk_bphy_irq.c
│   │   │   ├── cnxk_bphy_irq.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_bphy.h
│   │   │   └── version.map
│   │   ├── cnxk_gpio
│   │   │   ├── cnxk_gpio.c
│   │   │   ├── cnxk_gpio.h
│   │   │   ├── cnxk_gpio_irq.c
│   │   │   ├── cnxk_gpio_selftest.c
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_cnxk_gpio.h
│   │   │   └── version.map
│   │   ├── dpaa2_cmdif
│   │   │   ├── dpaa2_cmdif.c
│   │   │   ├── dpaa2_cmdif_logs.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_dpaa2_cmdif.h
│   │   │   └── version.map
│   │   ├── dpaa2_qdma
│   │   │   ├── dpaa2_qdma.c
│   │   │   ├── dpaa2_qdma.h
│   │   │   ├── dpaa2_qdma_logs.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_dpaa2_qdma.h
│   │   │   └── version.map
│   │   ├── ifpga
│   │   │   ├── base
│   │   │   │   ├── ifpga_api.c
│   │   │   │   ├── ifpga_api.h
│   │   │   │   ├── ifpga_compat.h
│   │   │   │   ├── ifpga_defines.h
│   │   │   │   ├── ifpga_enumerate.c
│   │   │   │   ├── ifpga_enumerate.h
│   │   │   │   ├── ifpga_feature_dev.c
│   │   │   │   ├── ifpga_feature_dev.h
│   │   │   │   ├── ifpga_fme.c
│   │   │   │   ├── ifpga_fme_dperf.c
│   │   │   │   ├── ifpga_fme_error.c
│   │   │   │   ├── ifpga_fme_iperf.c
│   │   │   │   ├── ifpga_fme_pr.c
│   │   │   │   ├── ifpga_fme_rsu.c
│   │   │   │   ├── ifpga_hw.h
│   │   │   │   ├── ifpga_port.c
│   │   │   │   ├── ifpga_port_error.c
│   │   │   │   ├── ifpga_sec_mgr.c
│   │   │   │   ├── ifpga_sec_mgr.h
│   │   │   │   ├── meson.build
│   │   │   │   ├── opae_at24_eeprom.c
│   │   │   │   ├── opae_at24_eeprom.h
│   │   │   │   ├── opae_debug.c
│   │   │   │   ├── opae_debug.h
│   │   │   │   ├── opae_eth_group.c
│   │   │   │   ├── opae_eth_group.h
│   │   │   │   ├── opae_hw_api.c
│   │   │   │   ├── opae_hw_api.h
│   │   │   │   ├── opae_i2c.c
│   │   │   │   ├── opae_i2c.h
│   │   │   │   ├── opae_ifpga_hw_api.c
│   │   │   │   ├── opae_ifpga_hw_api.h
│   │   │   │   ├── opae_intel_max10.c
│   │   │   │   ├── opae_intel_max10.h
│   │   │   │   ├── opae_osdep.h
│   │   │   │   ├── opae_spi.c
│   │   │   │   ├── opae_spi.h
│   │   │   │   ├── opae_spi_transaction.c
│   │   │   │   ├── osdep_raw
│   │   │   │   │   └── osdep_generic.h
│   │   │   │   ├── osdep_rte
│   │   │   │   │   └── osdep_generic.h
│   │   │   │   └── README
│   │   │   ├── ifpga_rawdev.c
│   │   │   ├── ifpga_rawdev.h
│   │   │   ├── meson.build
│   │   │   ├── rte_pmd_ifpga.c
│   │   │   ├── rte_pmd_ifpga.h
│   │   │   └── version.map
│   │   ├── ioat
│   │   │   ├── dpdk_idxd_cfg.py -> ../../dma/idxd/dpdk_idxd_cfg.py
│   │   │   ├── idxd_bus.c
│   │   │   ├── idxd_pci.c
│   │   │   ├── ioat_common.c
│   │   │   ├── ioat_private.h
│   │   │   ├── ioat_rawdev.c
│   │   │   ├── ioat_rawdev_test.c
│   │   │   ├── ioat_spec.h
│   │   │   ├── meson.build
│   │   │   ├── rte_idxd_rawdev_fns.h
│   │   │   ├── rte_ioat_rawdev_fns.h
│   │   │   ├── rte_ioat_rawdev.h
│   │   │   └── version.map
│   │   ├── meson.build
│   │   ├── ntb
│   │   │   ├── meson.build
│   │   │   ├── ntb.c
│   │   │   ├── ntb.h
│   │   │   ├── ntb_hw_intel.c
│   │   │   ├── ntb_hw_intel.h
│   │   │   ├── rte_pmd_ntb.h
│   │   │   └── version.map
│   │   └── skeleton
│   │       ├── meson.build
│   │       ├── skeleton_rawdev.c
│   │       ├── skeleton_rawdev.h
│   │       ├── skeleton_rawdev_test.c
│   │       └── version.map
│   ├── regex
│   │   ├── cn9k
│   │   │   ├── cn9k_regexdev.c
│   │   │   ├── cn9k_regexdev_compiler.c
│   │   │   ├── cn9k_regexdev_compiler.h
│   │   │   ├── cn9k_regexdev.h
│   │   │   ├── meson.build
│   │   │   └── version.map
│   │   ├── meson.build
│   │   └── mlx5
│   │       ├── meson.build
│   │       ├── mlx5_regex.c
│   │       ├── mlx5_regex_control.c
│   │       ├── mlx5_regex_devx.c
│   │       ├── mlx5_regex_fastpath.c
│   │       ├── mlx5_regex.h
│   │       ├── mlx5_regex_utils.h
│   │       ├── mlx5_rxp.c
│   │       ├── mlx5_rxp.h
│   │       └── version.map
│   └── vdpa
│       ├── ifc
│       │   ├── base
│       │   │   ├── ifcvf.c
│       │   │   ├── ifcvf.h
│       │   │   └── ifcvf_osdep.h
│       │   ├── ifcvf_vdpa.c
│       │   ├── meson.build
│       │   └── version.map
│       ├── meson.build
│       ├── mlx5
│       │   ├── meson.build
│       │   ├── mlx5_vdpa.c
│       │   ├── mlx5_vdpa_event.c
│       │   ├── mlx5_vdpa.h
│       │   ├── mlx5_vdpa_lm.c
│       │   ├── mlx5_vdpa_mem.c
│       │   ├── mlx5_vdpa_steer.c
│       │   ├── mlx5_vdpa_utils.h
│       │   ├── mlx5_vdpa_virtq.c
│       │   └── version.map
│       └── sfc
│           ├── meson.build
│           ├── sfc_vdpa.c
│           ├── sfc_vdpa_debug.h
│           ├── sfc_vdpa_filter.c
│           ├── sfc_vdpa.h
│           ├── sfc_vdpa_hw.c
│           ├── sfc_vdpa_log.h
│           ├── sfc_vdpa_mcdi.c
│           ├── sfc_vdpa_ops.c
│           ├── sfc_vdpa_ops.h
│           └── version.map
├── examples
│   ├── bbdev_app
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── bond
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── Makefile
│   │   └── meson.build
│   ├── bpf
│   │   ├── dummy.c
│   │   ├── README
│   │   ├── t1.c
│   │   ├── t2.c
│   │   └── t3.c
│   ├── cmdline
│   │   ├── commands.c
│   │   ├── commands.h
│   │   ├── main.c
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── parse_obj_list.c
│   │   └── parse_obj_list.h
│   ├── distributor
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── dma
│   │   ├── dmafwd.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── ethtool
│   │   ├── ethtool-app
│   │   │   ├── ethapp.c
│   │   │   ├── ethapp.h
│   │   │   ├── main.c
│   │   │   └── Makefile
│   │   ├── lib
│   │   │   ├── Makefile
│   │   │   ├── rte_ethtool.c
│   │   │   └── rte_ethtool.h
│   │   ├── Makefile
│   │   └── meson.build
│   ├── eventdev_pipeline
│   │   ├── main.c
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── pipeline_common.h
│   │   ├── pipeline_worker_generic.c
│   │   └── pipeline_worker_tx.c
│   ├── fips_validation
│   │   ├── fips_dev_self_test.c
│   │   ├── fips_dev_self_test.h
│   │   ├── fips_validation_aes.c
│   │   ├── fips_validation.c
│   │   ├── fips_validation_ccm.c
│   │   ├── fips_validation_cmac.c
│   │   ├── fips_validation_gcm.c
│   │   ├── fips_validation.h
│   │   ├── fips_validation_hmac.c
│   │   ├── fips_validation_sha.c
│   │   ├── fips_validation_tdes.c
│   │   ├── fips_validation_xts.c
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── flow_classify
│   │   ├── flow_classify.c
│   │   ├── ipv4_rules_file.txt
│   │   ├── Makefile
│   │   └── meson.build
│   ├── flow_filtering
│   │   ├── flow_blocks.c
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── helloworld
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── ip_fragmentation
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── ip_pipeline
│   │   ├── action.c
│   │   ├── action.h
│   │   ├── cli.c
│   │   ├── cli.h
│   │   ├── common.h
│   │   ├── conn.c
│   │   ├── conn.h
│   │   ├── cryptodev.c
│   │   ├── cryptodev.h
│   │   ├── examples
│   │   │   ├── firewall.cli
│   │   │   ├── flow.cli
│   │   │   ├── flow_crypto.cli
│   │   │   ├── kni.cli
│   │   │   ├── l2fwd.cli
│   │   │   ├── route.cli
│   │   │   ├── route_ecmp.cli
│   │   │   ├── rss.cli
│   │   │   └── tap.cli
│   │   ├── kni.c
│   │   ├── kni.h
│   │   ├── link.c
│   │   ├── link.h
│   │   ├── main.c
│   │   ├── Makefile
│   │   ├── mempool.c
│   │   ├── mempool.h
│   │   ├── meson.build
│   │   ├── parser.c
│   │   ├── parser.h
│   │   ├── pipeline.c
│   │   ├── pipeline.h
│   │   ├── swq.c
│   │   ├── swq.h
│   │   ├── tap.c
│   │   ├── tap.h
│   │   ├── thread.c
│   │   ├── thread.h
│   │   ├── tmgr.c
│   │   └── tmgr.h
│   ├── ip_reassembly
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── ipsec-secgw
│   │   ├── ep0.cfg
│   │   ├── ep1.cfg
│   │   ├── esp.c
│   │   ├── esp.h
│   │   ├── event_helper.c
│   │   ├── event_helper.h
│   │   ├── flow.c
│   │   ├── flow.h
│   │   ├── ipip.h
│   │   ├── ipsec.c
│   │   ├── ipsec.h
│   │   ├── ipsec_process.c
│   │   ├── ipsec-secgw.c
│   │   ├── ipsec-secgw.h
│   │   ├── ipsec_worker.c
│   │   ├── ipsec_worker.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── parser.c
│   │   ├── parser.h
│   │   ├── rt.c
│   │   ├── sa.c
│   │   ├── sad.c
│   │   ├── sad.h
│   │   ├── sp4.c
│   │   ├── sp6.c
│   │   └── test
│   │       ├── bypass_defs.sh
│   │       ├── common_defs_secgw.sh
│   │       ├── common_defs.sh
│   │       ├── data_rxtx.sh
│   │       ├── linux_test.sh
│   │       ├── load_env.sh
│   │       ├── pkttest.py
│   │       ├── pkttest.sh
│   │       ├── run_test.sh
│   │       ├── trs_3descbc_sha1_common_defs.sh
│   │       ├── trs_3descbc_sha1_defs.sh
│   │       ├── trs_aescbc_sha1_common_defs.sh
│   │       ├── trs_aescbc_sha1_defs.sh
│   │       ├── trs_aesctr_sha1_common_defs.sh
│   │       ├── trs_aesctr_sha1_defs.sh
│   │       ├── trs_aesgcm_common_defs.sh
│   │       ├── trs_aesgcm_defs.sh
│   │       ├── trs_ipv6opts.py
│   │       ├── tun_3descbc_sha1_common_defs.sh
│   │       ├── tun_3descbc_sha1_defs.sh
│   │       ├── tun_aescbc_sha1_common_defs.sh
│   │       ├── tun_aescbc_sha1_defs.sh
│   │       ├── tun_aesctr_sha1_common_defs.sh
│   │       ├── tun_aesctr_sha1_defs.sh
│   │       ├── tun_aesgcm_common_defs.sh
│   │       ├── tun_aesgcm_defs.sh
│   │       └── tun_null_header_reconstruct.py
│   ├── ipv4_multicast
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── kni
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd-cat
│   │   ├── cat.c
│   │   ├── cat.h
│   │   ├── l2fwd-cat.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd-crypto
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd-event
│   │   ├── l2fwd_common.c
│   │   ├── l2fwd_common.h
│   │   ├── l2fwd_event.c
│   │   ├── l2fwd_event_generic.c
│   │   ├── l2fwd_event.h
│   │   ├── l2fwd_event_internal_port.c
│   │   ├── l2fwd_poll.c
│   │   ├── l2fwd_poll.h
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd-jobstats
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l2fwd-keepalive
│   │   ├── ka-agent
│   │   │   ├── main.c
│   │   │   └── Makefile
│   │   ├── main.c
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── shm.c
│   │   └── shm.h
│   ├── l3fwd
│   │   ├── em_default_v4.cfg
│   │   ├── em_default_v6.cfg
│   │   ├── em_route_parse.c
│   │   ├── l3fwd_altivec.h
│   │   ├── l3fwd_common.h
│   │   ├── l3fwd_em.c
│   │   ├── l3fwd_em.h
│   │   ├── l3fwd_em_hlm.h
│   │   ├── l3fwd_em_hlm_neon.h
│   │   ├── l3fwd_em_hlm_sse.h
│   │   ├── l3fwd_em_sequential.h
│   │   ├── l3fwd_event.c
│   │   ├── l3fwd_event_generic.c
│   │   ├── l3fwd_event.h
│   │   ├── l3fwd_event_internal_port.c
│   │   ├── l3fwd_fib.c
│   │   ├── l3fwd.h
│   │   ├── l3fwd_lpm_altivec.h
│   │   ├── l3fwd_lpm.c
│   │   ├── l3fwd_lpm.h
│   │   ├── l3fwd_lpm_neon.h
│   │   ├── l3fwd_lpm_sse.h
│   │   ├── l3fwd_neon.h
│   │   ├── l3fwd_route.h
│   │   ├── l3fwd_sse.h
│   │   ├── lpm_default_v4.cfg
│   │   ├── lpm_default_v6.cfg
│   │   ├── lpm_route_parse.c
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l3fwd-acl
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l3fwd-graph
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── l3fwd-power
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── perf_core.c
│   │   └── perf_core.h
│   ├── link_status_interrupt
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── meson.build
│   ├── multi_process
│   │   ├── client_server_mp
│   │   │   ├── Makefile
│   │   │   ├── mp_client
│   │   │   │   ├── client.c
│   │   │   │   ├── Makefile
│   │   │   │   └── meson.build
│   │   │   ├── mp_server
│   │   │   │   ├── args.c
│   │   │   │   ├── args.h
│   │   │   │   ├── init.c
│   │   │   │   ├── init.h
│   │   │   │   ├── main.c
│   │   │   │   ├── Makefile
│   │   │   │   └── meson.build
│   │   │   └── shared
│   │   │       └── common.h
│   │   ├── hotplug_mp
│   │   │   ├── commands.c
│   │   │   ├── commands.h
│   │   │   ├── main.c
│   │   │   ├── Makefile
│   │   │   └── meson.build
│   │   ├── Makefile
│   │   ├── simple_mp
│   │   │   ├── main.c
│   │   │   ├── Makefile
│   │   │   ├── meson.build
│   │   │   ├── mp_commands.c
│   │   │   └── mp_commands.h
│   │   └── symmetric_mp
│   │       ├── main.c
│   │       ├── Makefile
│   │       └── meson.build
│   ├── ntb
│   │   ├── Makefile
│   │   ├── meson.build
│   │   └── ntb_fwd.c
│   ├── packet_ordering
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── pipeline
│   │   ├── cli.c
│   │   ├── cli.h
│   │   ├── conn.c
│   │   ├── conn.h
│   │   ├── examples
│   │   │   ├── fib.cli
│   │   │   ├── fib_nexthop_group_table.txt
│   │   │   ├── fib_nexthop_table.txt
│   │   │   ├── fib_routing_table.txt
│   │   │   ├── fib.spec
│   │   │   ├── l2fwd.cli
│   │   │   ├── l2fwd_macswp.cli
│   │   │   ├── l2fwd_macswp_pcap.cli
│   │   │   ├── l2fwd_macswp.spec
│   │   │   ├── l2fwd_pcap.cli
│   │   │   ├── l2fwd.spec
│   │   │   ├── learner.cli
│   │   │   ├── learner.spec
│   │   │   ├── meter.cli
│   │   │   ├── meter.spec
│   │   │   ├── packet.txt
│   │   │   ├── registers.cli
│   │   │   ├── registers.spec
│   │   │   ├── selector.cli
│   │   │   ├── selector.spec
│   │   │   ├── selector.txt
│   │   │   ├── varbit.cli
│   │   │   ├── varbit.spec
│   │   │   ├── vxlan.cli
│   │   │   ├── vxlan_pcap.cli
│   │   │   ├── vxlan.spec
│   │   │   ├── vxlan_table.py
│   │   │   └── vxlan_table.txt
│   │   ├── main.c
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── obj.c
│   │   ├── obj.h
│   │   ├── thread.c
│   │   └── thread.h
│   ├── ptpclient
│   │   ├── Makefile
│   │   ├── meson.build
│   │   └── ptpclient.c
│   ├── qos_meter
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── rte_policer.c
│   │   └── rte_policer.h
│   ├── qos_sched
│   │   ├── app_thread.c
│   │   ├── args.c
│   │   ├── cfg_file.c
│   │   ├── cfg_file.h
│   │   ├── cmdline.c
│   │   ├── init.c
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── profile.cfg
│   │   ├── profile_ov.cfg
│   │   └── stats.c
│   ├── rxtx_callbacks
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── server_node_efd
│   │   ├── Makefile
│   │   ├── node
│   │   │   ├── Makefile
│   │   │   ├── meson.build
│   │   │   └── node.c
│   │   ├── server
│   │   │   ├── args.c
│   │   │   ├── args.h
│   │   │   ├── init.c
│   │   │   ├── init.h
│   │   │   ├── main.c
│   │   │   ├── Makefile
│   │   │   └── meson.build
│   │   └── shared
│   │       └── common.h
│   ├── service_cores
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── skeleton
│   │   ├── basicfwd.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── timer
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── vdpa
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── vhost
│   │   ├── main.c
│   │   ├── main.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   └── virtio_net.c
│   ├── vhost_blk
│   │   ├── blk.c
│   │   ├── blk_spec.h
│   │   ├── Makefile
│   │   ├── meson.build
│   │   ├── vhost_blk.c
│   │   ├── vhost_blk_compat.c
│   │   └── vhost_blk.h
│   ├── vhost_crypto
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── vmdq
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   ├── vmdq_dcb
│   │   ├── main.c
│   │   ├── Makefile
│   │   └── meson.build
│   └── vm_power_manager
│       ├── channel_manager.c
│       ├── channel_manager.h
│       ├── channel_monitor.c
│       ├── channel_monitor.h
│       ├── guest_cli
│       │   ├── main.c
│       │   ├── Makefile
│       │   ├── meson.build
│       │   ├── parse.c
│       │   ├── parse.h
│       │   ├── vm_power_cli_guest.c
│       │   └── vm_power_cli_guest.h
│       ├── main.c
│       ├── Makefile
│       ├── meson.build
│       ├── oob_monitor.h
│       ├── oob_monitor_nop.c
│       ├── oob_monitor_x86.c
│       ├── parse.c
│       ├── parse.h
│       ├── power_manager.c
│       ├── power_manager.h
│       ├── vm_power_cli.c
│       └── vm_power_cli.h
├── kernel
│   ├── freebsd
│   │   ├── BSDmakefile.meson
│   │   ├── contigmem
│   │   │   ├── BSDmakefile
│   │   │   ├── contigmem.c
│   │   │   └── meson.build
│   │   ├── meson.build
│   │   └── nic_uio
│   │       ├── BSDmakefile
│   │       ├── meson.build
│   │       └── nic_uio.c
│   ├── linux
│   │   ├── kni
│   │   │   ├── compat.h
│   │   │   ├── Kbuild
│   │   │   ├── kni_dev.h
│   │   │   ├── kni_fifo.h
│   │   │   ├── kni_misc.c
│   │   │   ├── kni_net.c
│   │   │   └── meson.build
│   │   └── meson.build
│   └── meson.build
├── lib
│   ├── acl
│   │   ├── acl_bld.c
│   │   ├── acl_gen.c
│   │   ├── acl.h
│   │   ├── acl_run_altivec.c
│   │   ├── acl_run_altivec.h
│   │   ├── acl_run_avx2.c
│   │   ├── acl_run_avx2.h
│   │   ├── acl_run_avx512.c
│   │   ├── acl_run_avx512_common.h
│   │   ├── acl_run_avx512x16.h
│   │   ├── acl_run_avx512x8.h
│   │   ├── acl_run.h
│   │   ├── acl_run_neon.c
│   │   ├── acl_run_neon.h
│   │   ├── acl_run_scalar.c
│   │   ├── acl_run_sse.c
│   │   ├── acl_run_sse.h
│   │   ├── acl_vect.h
│   │   ├── meson.build
│   │   ├── rte_acl.c
│   │   ├── rte_acl.h
│   │   ├── rte_acl_osdep.h
│   │   ├── tb_mem.c
│   │   ├── tb_mem.h
│   │   └── version.map
│   ├── bbdev
│   │   ├── meson.build
│   │   ├── rte_bbdev.c
│   │   ├── rte_bbdev.h
│   │   ├── rte_bbdev_op.h
│   │   ├── rte_bbdev_pmd.h
│   │   └── version.map
│   ├── bitratestats
│   │   ├── meson.build
│   │   ├── rte_bitrate.c
│   │   ├── rte_bitrate.h
│   │   └── version.map
│   ├── bpf
│   │   ├── bpf.c
│   │   ├── bpf_convert.c
│   │   ├── bpf_def.h
│   │   ├── bpf_dump.c
│   │   ├── bpf_exec.c
│   │   ├── bpf_impl.h
│   │   ├── bpf_jit_arm64.c
│   │   ├── bpf_jit_x86.c
│   │   ├── bpf_load.c
│   │   ├── bpf_load_elf.c
│   │   ├── bpf_pkt.c
│   │   ├── bpf_stub.c
│   │   ├── bpf_validate.c
│   │   ├── meson.build
│   │   ├── rte_bpf_ethdev.h
│   │   ├── rte_bpf.h
│   │   └── version.map
│   ├── cfgfile
│   │   ├── meson.build
│   │   ├── rte_cfgfile.c
│   │   ├── rte_cfgfile.h
│   │   └── version.map
│   ├── cmdline
│   │   ├── cmdline.c
│   │   ├── cmdline_cirbuf.c
│   │   ├── cmdline_cirbuf.h
│   │   ├── cmdline.h
│   │   ├── cmdline_os_unix.c
│   │   ├── cmdline_os_windows.c
│   │   ├── cmdline_parse.c
│   │   ├── cmdline_parse_etheraddr.c
│   │   ├── cmdline_parse_etheraddr.h
│   │   ├── cmdline_parse.h
│   │   ├── cmdline_parse_ipaddr.c
│   │   ├── cmdline_parse_ipaddr.h
│   │   ├── cmdline_parse_num.c
│   │   ├── cmdline_parse_num.h
│   │   ├── cmdline_parse_portlist.c
│   │   ├── cmdline_parse_portlist.h
│   │   ├── cmdline_parse_string.c
│   │   ├── cmdline_parse_string.h
│   │   ├── cmdline_private.h
│   │   ├── cmdline_rdline.c
│   │   ├── cmdline_rdline.h
│   │   ├── cmdline_socket.c
│   │   ├── cmdline_socket.h
│   │   ├── cmdline_vt100.c
│   │   ├── cmdline_vt100.h
│   │   ├── meson.build
│   │   └── version.map
│   ├── compressdev
│   │   ├── meson.build
│   │   ├── rte_comp.c
│   │   ├── rte_comp.h
│   │   ├── rte_compressdev.c
│   │   ├── rte_compressdev.h
│   │   ├── rte_compressdev_internal.h
│   │   ├── rte_compressdev_pmd.c
│   │   ├── rte_compressdev_pmd.h
│   │   └── version.map
│   ├── cryptodev
│   │   ├── cryptodev_pmd.c
│   │   ├── cryptodev_pmd.h
│   │   ├── cryptodev_trace_points.c
│   │   ├── meson.build
│   │   ├── rte_crypto_asym.h
│   │   ├── rte_cryptodev.c
│   │   ├── rte_cryptodev_core.h
│   │   ├── rte_cryptodev.h
│   │   ├── rte_cryptodev_trace_fp.h
│   │   ├── rte_cryptodev_trace.h
│   │   ├── rte_crypto.h
│   │   ├── rte_crypto_sym.h
│   │   └── version.map
│   ├── distributor
│   │   ├── distributor_private.h
│   │   ├── meson.build
│   │   ├── rte_distributor.c
│   │   ├── rte_distributor.h
│   │   ├── rte_distributor_match_generic.c
│   │   ├── rte_distributor_match_sse.c
│   │   ├── rte_distributor_single.c
│   │   ├── rte_distributor_single.h
│   │   └── version.map
│   ├── dmadev
│   │   ├── meson.build
│   │   ├── rte_dmadev.c
│   │   ├── rte_dmadev_core.h
│   │   ├── rte_dmadev.h
│   │   ├── rte_dmadev_pmd.h
│   │   └── version.map
│   ├── eal
│   │   ├── arm
│   │   │   ├── include
│   │   │   │   ├── meson.build
│   │   │   │   ├── rte_atomic_32.h
│   │   │   │   ├── rte_atomic_64.h
│   │   │   │   ├── rte_atomic.h
│   │   │   │   ├── rte_byteorder.h
│   │   │   │   ├── rte_cpuflags_32.h
│   │   │   │   ├── rte_cpuflags_64.h
│   │   │   │   ├── rte_cpuflags.h
│   │   │   │   ├── rte_cycles_32.h
│   │   │   │   ├── rte_cycles_64.h
│   │   │   │   ├── rte_cycles.h
│   │   │   │   ├── rte_io_64.h
│   │   │   │   ├── rte_io.h
│   │   │   │   ├── rte_mcslock.h
│   │   │   │   ├── rte_memcpy_32.h
│   │   │   │   ├── rte_memcpy_64.h
│   │   │   │   ├── rte_memcpy.h
│   │   │   │   ├── rte_pause_32.h
│   │   │   │   ├── rte_pause_64.h
│   │   │   │   ├── rte_pause.h
│   │   │   │   ├── rte_pflock.h
│   │   │   │   ├── rte_power_intrinsics.h
│   │   │   │   ├── rte_prefetch_32.h
│   │   │   │   ├── rte_prefetch_64.h
│   │   │   │   ├── rte_prefetch.h
│   │   │   │   ├── rte_rwlock.h
│   │   │   │   ├── rte_spinlock.h
│   │   │   │   ├── rte_ticketlock.h
│   │   │   │   └── rte_vect.h
│   │   │   ├── meson.build
│   │   │   ├── rte_cpuflags.c
│   │   │   ├── rte_cycles.c
│   │   │   ├── rte_hypervisor.c
│   │   │   └── rte_power_intrinsics.c
│   │   ├── common
│   │   │   ├── eal_common_bus.c
│   │   │   ├── eal_common_class.c
│   │   │   ├── eal_common_config.c
│   │   │   ├── eal_common_cpuflags.c
│   │   │   ├── eal_common_debug.c
│   │   │   ├── eal_common_devargs.c
│   │   │   ├── eal_common_dev.c
│   │   │   ├── eal_common_dynmem.c
│   │   │   ├── eal_common_errno.c
│   │   │   ├── eal_common_fbarray.c
│   │   │   ├── eal_common_hexdump.c
│   │   │   ├── eal_common_hypervisor.c
│   │   │   ├── eal_common_interrupts.c
│   │   │   ├── eal_common_launch.c
│   │   │   ├── eal_common_lcore.c
│   │   │   ├── eal_common_log.c
│   │   │   ├── eal_common_mcfg.c
│   │   │   ├── eal_common_memalloc.c
│   │   │   ├── eal_common_memory.c
│   │   │   ├── eal_common_memzone.c
│   │   │   ├── eal_common_options.c
│   │   │   ├── eal_common_proc.c
│   │   │   ├── eal_common_string_fns.c
│   │   │   ├── eal_common_tailqs.c
│   │   │   ├── eal_common_thread.c
│   │   │   ├── eal_common_timer.c
│   │   │   ├── eal_common_trace.c
│   │   │   ├── eal_common_trace_ctf.c
│   │   │   ├── eal_common_trace_points.c
│   │   │   ├── eal_common_trace_utils.c
│   │   │   ├── eal_common_uuid.c
│   │   │   ├── eal_filesystem.h
│   │   │   ├── eal_firmware.h
│   │   │   ├── eal_hugepages.h
│   │   │   ├── eal_internal_cfg.h
│   │   │   ├── eal_interrupts.h
│   │   │   ├── eal_log.h
│   │   │   ├── eal_memalloc.h
│   │   │   ├── eal_memcfg.h
│   │   │   ├── eal_options.h
│   │   │   ├── eal_private.h
│   │   │   ├── eal_thread.h
│   │   │   ├── eal_trace.h
│   │   │   ├── hotplug_mp.c
│   │   │   ├── hotplug_mp.h
│   │   │   ├── malloc_elem.c
│   │   │   ├── malloc_elem.h
│   │   │   ├── malloc_heap.c
│   │   │   ├── malloc_heap.h
│   │   │   ├── malloc_mp.c
│   │   │   ├── malloc_mp.h
│   │   │   ├── meson.build
│   │   │   ├── rte_keepalive.c
│   │   │   ├── rte_malloc.c
│   │   │   ├── rte_random.c
│   │   │   ├── rte_reciprocal.c
│   │   │   ├── rte_service.c
│   │   │   └── rte_version.c
│   │   ├── freebsd
│   │   │   ├── eal_alarm.c
│   │   │   ├── eal_alarm_private.h
│   │   │   ├── eal.c
│   │   │   ├── eal_cpuflags.c
│   │   │   ├── eal_debug.c
│   │   │   ├── eal_dev.c
│   │   │   ├── eal_hugepage_info.c
│   │   │   ├── eal_interrupts.c
│   │   │   ├── eal_lcore.c
│   │   │   ├── eal_memalloc.c
│   │   │   ├── eal_memory.c
│   │   │   ├── eal_thread.c
│   │   │   ├── eal_timer.c
│   │   │   ├── include
│   │   │   │   ├── meson.build
│   │   │   │   ├── rte_os.h
│   │   │   │   └── rte_os_shim.h
│   │   │   └── meson.build
│   │   ├── include
│   │   │   ├── generic
│   │   │   │   ├── rte_atomic.h
│   │   │   │   ├── rte_byteorder.h
│   │   │   │   ├── rte_cpuflags.h
│   │   │   │   ├── rte_cycles.h
│   │   │   │   ├── rte_io.h
│   │   │   │   ├── rte_mcslock.h
│   │   │   │   ├── rte_memcpy.h
│   │   │   │   ├── rte_pause.h
│   │   │   │   ├── rte_pflock.h
│   │   │   │   ├── rte_power_intrinsics.h
│   │   │   │   ├── rte_prefetch.h
│   │   │   │   ├── rte_rwlock.h
│   │   │   │   ├── rte_spinlock.h
│   │   │   │   ├── rte_ticketlock.h
│   │   │   │   └── rte_vect.h
│   │   │   ├── meson.build
│   │   │   ├── rte_alarm.h
│   │   │   ├── rte_bitmap.h
│   │   │   ├── rte_bitops.h
│   │   │   ├── rte_branch_prediction.h
│   │   │   ├── rte_bus.h
│   │   │   ├── rte_class.h
│   │   │   ├── rte_common.h
│   │   │   ├── rte_compat.h
│   │   │   ├── rte_debug.h
│   │   │   ├── rte_devargs.h
│   │   │   ├── rte_dev.h
│   │   │   ├── rte_eal.h
│   │   │   ├── rte_eal_memconfig.h
│   │   │   ├── rte_eal_paging.h
│   │   │   ├── rte_eal_trace.h
│   │   │   ├── rte_epoll.h
│   │   │   ├── rte_errno.h
│   │   │   ├── rte_fbarray.h
│   │   │   ├── rte_function_versioning.h
│   │   │   ├── rte_hexdump.h
│   │   │   ├── rte_hypervisor.h
│   │   │   ├── rte_interrupts.h
│   │   │   ├── rte_keepalive.h
│   │   │   ├── rte_launch.h
│   │   │   ├── rte_lcore.h
│   │   │   ├── rte_log.h
│   │   │   ├── rte_malloc.h
│   │   │   ├── rte_memory.h
│   │   │   ├── rte_memzone.h
│   │   │   ├── rte_pci_dev_feature_defs.h
│   │   │   ├── rte_pci_dev_features.h
│   │   │   ├── rte_per_lcore.h
│   │   │   ├── rte_random.h
│   │   │   ├── rte_reciprocal.h
│   │   │   ├── rte_service_component.h
│   │   │   ├── rte_service.h
│   │   │   ├── rte_string_fns.h
│   │   │   ├── rte_tailq.h
│   │   │   ├── rte_test.h
│   │   │   ├── rte_thread.h
│   │   │   ├── rte_time.h
│   │   │   ├── rte_trace.h
│   │   │   ├── rte_trace_point.h
│   │   │   ├── rte_trace_point_register.h
│   │   │   ├── rte_uuid.h
│   │   │   ├── rte_version.h
│   │   │   └── rte_vfio.h
│   │   ├── linux
│   │   │   ├── eal_alarm.c
│   │   │   ├── eal.c
│   │   │   ├── eal_cpuflags.c
│   │   │   ├── eal_debug.c
│   │   │   ├── eal_dev.c
│   │   │   ├── eal_hugepage_info.c
│   │   │   ├── eal_interrupts.c
│   │   │   ├── eal_lcore.c
│   │   │   ├── eal_log.c
│   │   │   ├── eal_memalloc.c
│   │   │   ├── eal_memory.c
│   │   │   ├── eal_thread.c
│   │   │   ├── eal_timer.c
│   │   │   ├── eal_vfio.c
│   │   │   ├── eal_vfio.h
│   │   │   ├── eal_vfio_mp_sync.c
│   │   │   ├── include
│   │   │   │   ├── meson.build
│   │   │   │   ├── rte_os.h
│   │   │   │   └── rte_os_shim.h
│   │   │   └── meson.build
│   │   ├── meson.build
│   │   ├── ppc
│   │   │   ├── include
│   │   │   │   ├── meson.build
│   │   │   │   ├── rte_altivec.h
│   │   │   │   ├── rte_atomic.h
│   │   │   │   ├── rte_byteorder.h
│   │   │   │   ├── rte_cpuflags.h
│   │   │   │   ├── rte_cycles.h
│   │   │   │   ├── rte_io.h
│   │   │   │   ├── rte_mcslock.h
│   │   │   │   ├── rte_memcpy.h
│   │   │   │   ├── rte_pause.h
│   │   │   │   ├── rte_pflock.h
│   │   │   │   ├── rte_power_intrinsics.h
│   │   │   │   ├── rte_prefetch.h
│   │   │   │   ├── rte_rwlock.h
│   │   │   │   ├── rte_spinlock.h
│   │   │   │   ├── rte_ticketlock.h
│   │   │   │   └── rte_vect.h
│   │   │   ├── meson.build
│   │   │   ├── rte_cpuflags.c
│   │   │   ├── rte_cycles.c
│   │   │   ├── rte_hypervisor.c
│   │   │   └── rte_power_intrinsics.c
│   │   ├── unix
│   │   │   ├── eal_file.c
│   │   │   ├── eal_filesystem.c
│   │   │   ├── eal_firmware.c
│   │   │   ├── eal_unix_memory.c
│   │   │   ├── eal_unix_timer.c
│   │   │   ├── meson.build
│   │   │   └── rte_thread.c
│   │   ├── version.map
│   │   ├── windows
│   │   │   ├── eal_alarm.c
│   │   │   ├── eal.c
│   │   │   ├── eal_debug.c
│   │   │   ├── eal_dev.c
│   │   │   ├── eal_file.c
│   │   │   ├── eal_hugepages.c
│   │   │   ├── eal_interrupts.c
│   │   │   ├── eal_lcore.c
│   │   │   ├── eal_log.c
│   │   │   ├── eal_memalloc.c
│   │   │   ├── eal_memory.c
│   │   │   ├── eal_mp.c
│   │   │   ├── eal_thread.c
│   │   │   ├── eal_timer.c
│   │   │   ├── eal_windows.h
│   │   │   ├── fnmatch.c
│   │   │   ├── getopt.c
│   │   │   ├── include
│   │   │   │   ├── dirent.h
│   │   │   │   ├── fnmatch.h
│   │   │   │   ├── getopt.h
│   │   │   │   ├── meson.build
│   │   │   │   ├── pthread.h
│   │   │   │   ├── regex.h
│   │   │   │   ├── rte_os.h
│   │   │   │   ├── rte_os_shim.h
│   │   │   │   ├── rte_virt2phys.h
│   │   │   │   ├── rte_windows.h
│   │   │   │   ├── sched.h
│   │   │   │   ├── sys
│   │   │   │   │   └── queue.h
│   │   │   │   └── unistd.h
│   │   │   ├── meson.build
│   │   │   └── rte_thread.c
│   │   └── x86
│   │       ├── include
│   │       │   ├── meson.build
│   │       │   ├── rte_atomic_32.h
│   │       │   ├── rte_atomic_64.h
│   │       │   ├── rte_atomic.h
│   │       │   ├── rte_byteorder_32.h
│   │       │   ├── rte_byteorder_64.h
│   │       │   ├── rte_byteorder.h
│   │       │   ├── rte_cpuflags.h
│   │       │   ├── rte_cycles.h
│   │       │   ├── rte_io.h
│   │       │   ├── rte_mcslock.h
│   │       │   ├── rte_memcpy.h
│   │       │   ├── rte_pause.h
│   │       │   ├── rte_pflock.h
│   │       │   ├── rte_power_intrinsics.h
│   │       │   ├── rte_prefetch.h
│   │       │   ├── rte_rtm.h
│   │       │   ├── rte_rwlock.h
│   │       │   ├── rte_spinlock.h
│   │       │   ├── rte_ticketlock.h
│   │       │   └── rte_vect.h
│   │       ├── meson.build
│   │       ├── rte_cpuflags.c
│   │       ├── rte_cpuid.h
│   │       ├── rte_cycles.c
│   │       ├── rte_hypervisor.c
│   │       ├── rte_power_intrinsics.c
│   │       └── rte_spinlock.c
│   ├── efd
│   │   ├── meson.build
│   │   ├── rte_efd_arm64.h
│   │   ├── rte_efd.c
│   │   ├── rte_efd.h
│   │   ├── rte_efd_x86.h
│   │   └── version.map
│   ├── ethdev
│   │   ├── ethdev_driver.c
│   │   ├── ethdev_driver.h
│   │   ├── ethdev_pci.h
│   │   ├── ethdev_private.c
│   │   ├── ethdev_private.h
│   │   ├── ethdev_profile.c
│   │   ├── ethdev_profile.h
│   │   ├── ethdev_trace_points.c
│   │   ├── ethdev_vdev.h
│   │   ├── meson.build
│   │   ├── rte_class_eth.c
│   │   ├── rte_dev_info.h
│   │   ├── rte_eth_ctrl.h
│   │   ├── rte_ethdev.c
│   │   ├── rte_ethdev_core.h
│   │   ├── rte_ethdev.h
│   │   ├── rte_ethdev_trace_fp.h
│   │   ├── rte_ethdev_trace.h
│   │   ├── rte_flow.c
│   │   ├── rte_flow_driver.h
│   │   ├── rte_flow.h
│   │   ├── rte_mtr.c
│   │   ├── rte_mtr_driver.h
│   │   ├── rte_mtr.h
│   │   ├── rte_tm.c
│   │   ├── rte_tm_driver.h
│   │   ├── rte_tm.h
│   │   └── version.map
│   ├── eventdev
│   │   ├── eventdev_pmd.h
│   │   ├── eventdev_pmd_pci.h
│   │   ├── eventdev_pmd_vdev.h
│   │   ├── eventdev_private.c
│   │   ├── eventdev_trace.h
│   │   ├── eventdev_trace_points.c
│   │   ├── event_timer_adapter_pmd.h
│   │   ├── meson.build
│   │   ├── rte_event_crypto_adapter.c
│   │   ├── rte_event_crypto_adapter.h
│   │   ├── rte_eventdev.c
│   │   ├── rte_eventdev_core.h
│   │   ├── rte_eventdev.h
│   │   ├── rte_eventdev_trace_fp.h
│   │   ├── rte_event_eth_rx_adapter.c
│   │   ├── rte_event_eth_rx_adapter.h
│   │   ├── rte_event_eth_tx_adapter.c
│   │   ├── rte_event_eth_tx_adapter.h
│   │   ├── rte_event_ring.c
│   │   ├── rte_event_ring.h
│   │   ├── rte_event_timer_adapter.c
│   │   ├── rte_event_timer_adapter.h
│   │   └── version.map
│   ├── fib
│   │   ├── dir24_8_avx512.c
│   │   ├── dir24_8_avx512.h
│   │   ├── dir24_8.c
│   │   ├── dir24_8.h
│   │   ├── meson.build
│   │   ├── rte_fib6.c
│   │   ├── rte_fib6.h
│   │   ├── rte_fib.c
│   │   ├── rte_fib.h
│   │   ├── trie_avx512.c
│   │   ├── trie_avx512.h
│   │   ├── trie.c
│   │   ├── trie.h
│   │   └── version.map
│   ├── flow_classify
│   │   ├── meson.build
│   │   ├── rte_flow_classify.c
│   │   ├── rte_flow_classify.h
│   │   ├── rte_flow_classify_parse.c
│   │   ├── rte_flow_classify_parse.h
│   │   └── version.map
│   ├── gpudev
│   │   ├── gpudev.c
│   │   ├── gpudev_driver.h
│   │   ├── meson.build
│   │   ├── rte_gpudev.h
│   │   └── version.map
│   ├── graph
│   │   ├── graph.c
│   │   ├── graph_debug.c
│   │   ├── graph_ops.c
│   │   ├── graph_populate.c
│   │   ├── graph_private.h
│   │   ├── graph_stats.c
│   │   ├── meson.build
│   │   ├── node.c
│   │   ├── rte_graph.h
│   │   ├── rte_graph_worker.h
│   │   └── version.map
│   ├── gro
│   │   ├── gro_tcp4.c
│   │   ├── gro_tcp4.h
│   │   ├── gro_udp4.c
│   │   ├── gro_udp4.h
│   │   ├── gro_vxlan_tcp4.c
│   │   ├── gro_vxlan_tcp4.h
│   │   ├── gro_vxlan_udp4.c
│   │   ├── gro_vxlan_udp4.h
│   │   ├── meson.build
│   │   ├── rte_gro.c
│   │   ├── rte_gro.h
│   │   └── version.map
│   ├── gso
│   │   ├── gso_common.c
│   │   ├── gso_common.h
│   │   ├── gso_tcp4.c
│   │   ├── gso_tcp4.h
│   │   ├── gso_tunnel_tcp4.c
│   │   ├── gso_tunnel_tcp4.h
│   │   ├── gso_tunnel_udp4.c
│   │   ├── gso_tunnel_udp4.h
│   │   ├── gso_udp4.c
│   │   ├── gso_udp4.h
│   │   ├── meson.build
│   │   ├── rte_gso.c
│   │   ├── rte_gso.h
│   │   └── version.map
│   ├── hash
│   │   ├── meson.build
│   │   ├── rte_cmp_arm64.h
│   │   ├── rte_cmp_x86.h
│   │   ├── rte_crc_arm64.h
│   │   ├── rte_cuckoo_hash.c
│   │   ├── rte_cuckoo_hash.h
│   │   ├── rte_fbk_hash.c
│   │   ├── rte_fbk_hash.h
│   │   ├── rte_hash_crc.h
│   │   ├── rte_hash.h
│   │   ├── rte_jhash.h
│   │   ├── rte_thash.c
│   │   ├── rte_thash_gfni.h
│   │   ├── rte_thash.h
│   │   ├── rte_thash_x86_gfni.h
│   │   └── version.map
│   ├── ip_frag
│   │   ├── ip_frag_common.h
│   │   ├── ip_frag_internal.c
│   │   ├── ip_reassembly.h
│   │   ├── meson.build
│   │   ├── rte_ip_frag_common.c
│   │   ├── rte_ip_frag.h
│   │   ├── rte_ipv4_fragmentation.c
│   │   ├── rte_ipv4_reassembly.c
│   │   ├── rte_ipv6_fragmentation.c
│   │   ├── rte_ipv6_reassembly.c
│   │   └── version.map
│   ├── ipsec
│   │   ├── crypto.h
│   │   ├── esp_inb.c
│   │   ├── esp_outb.c
│   │   ├── iph.h
│   │   ├── ipsec_sad.c
│   │   ├── ipsec_sqn.h
│   │   ├── ipsec_telemetry.c
│   │   ├── meson.build
│   │   ├── misc.h
│   │   ├── pad.h
│   │   ├── rte_ipsec_group.h
│   │   ├── rte_ipsec.h
│   │   ├── rte_ipsec_sad.h
│   │   ├── rte_ipsec_sa.h
│   │   ├── sa.c
│   │   ├── sa.h
│   │   ├── ses.c
│   │   └── version.map
│   ├── jobstats
│   │   ├── meson.build
│   │   ├── rte_jobstats.c
│   │   ├── rte_jobstats.h
│   │   └── version.map
│   ├── kni
│   │   ├── meson.build
│   │   ├── rte_kni.c
│   │   ├── rte_kni_common.h
│   │   ├── rte_kni_fifo.h
│   │   ├── rte_kni.h
│   │   └── version.map
│   ├── kvargs
│   │   ├── meson.build
│   │   ├── rte_kvargs.c
│   │   ├── rte_kvargs.h
│   │   └── version.map
│   ├── latencystats
│   │   ├── meson.build
│   │   ├── rte_latencystats.c
│   │   ├── rte_latencystats.h
│   │   └── version.map
│   ├── lpm
│   │   ├── meson.build
│   │   ├── rte_lpm6.c
│   │   ├── rte_lpm6.h
│   │   ├── rte_lpm_altivec.h
│   │   ├── rte_lpm.c
│   │   ├── rte_lpm.h
│   │   ├── rte_lpm_neon.h
│   │   ├── rte_lpm_sse.h
│   │   ├── rte_lpm_sve.h
│   │   └── version.map
│   ├── mbuf
│   │   ├── meson.build
│   │   ├── rte_mbuf.c
│   │   ├── rte_mbuf_core.h
│   │   ├── rte_mbuf_dyn.c
│   │   ├── rte_mbuf_dyn.h
│   │   ├── rte_mbuf.h
│   │   ├── rte_mbuf_pool_ops.c
│   │   ├── rte_mbuf_pool_ops.h
│   │   ├── rte_mbuf_ptype.c
│   │   ├── rte_mbuf_ptype.h
│   │   └── version.map
│   ├── member
│   │   ├── meson.build
│   │   ├── rte_member.c
│   │   ├── rte_member.h
│   │   ├── rte_member_ht.c
│   │   ├── rte_member_ht.h
│   │   ├── rte_member_vbf.c
│   │   ├── rte_member_vbf.h
│   │   ├── rte_member_x86.h
│   │   └── version.map
│   ├── mempool
│   │   ├── mempool_trace_points.c
│   │   ├── meson.build
│   │   ├── rte_mempool.c
│   │   ├── rte_mempool.h
│   │   ├── rte_mempool_ops.c
│   │   ├── rte_mempool_ops_default.c
│   │   ├── rte_mempool_trace_fp.h
│   │   ├── rte_mempool_trace.h
│   │   └── version.map
│   ├── meson.build
│   ├── meter
│   │   ├── meson.build
│   │   ├── rte_meter.c
│   │   ├── rte_meter.h
│   │   └── version.map
│   ├── metrics
│   │   ├── meson.build
│   │   ├── rte_metrics.c
│   │   ├── rte_metrics.h
│   │   ├── rte_metrics_telemetry.c
│   │   ├── rte_metrics_telemetry.h
│   │   └── version.map
│   ├── net
│   │   ├── meson.build
│   │   ├── net_crc_avx512.c
│   │   ├── net_crc.h
│   │   ├── net_crc_neon.c
│   │   ├── net_crc_sse.c
│   │   ├── rte_arp.c
│   │   ├── rte_arp.h
│   │   ├── rte_ecpri.h
│   │   ├── rte_esp.h
│   │   ├── rte_ether.c
│   │   ├── rte_ether.h
│   │   ├── rte_geneve.h
│   │   ├── rte_gre.h
│   │   ├── rte_gtp.h
│   │   ├── rte_higig.h
│   │   ├── rte_icmp.h
│   │   ├── rte_ip.h
│   │   ├── rte_l2tpv2.h
│   │   ├── rte_mpls.h
│   │   ├── rte_net.c
│   │   ├── rte_net_crc.c
│   │   ├── rte_net_crc.h
│   │   ├── rte_net.h
│   │   ├── rte_ppp.h
│   │   ├── rte_sctp.h
│   │   ├── rte_tcp.h
│   │   ├── rte_udp.h
│   │   ├── rte_vxlan.h
│   │   └── version.map
│   ├── node
│   │   ├── ethdev_ctrl.c
│   │   ├── ethdev_rx.c
│   │   ├── ethdev_rx_priv.h
│   │   ├── ethdev_tx.c
│   │   ├── ethdev_tx_priv.h
│   │   ├── ip4_lookup.c
│   │   ├── ip4_lookup_neon.h
│   │   ├── ip4_lookup_sse.h
│   │   ├── ip4_rewrite.c
│   │   ├── ip4_rewrite_priv.h
│   │   ├── log.c
│   │   ├── meson.build
│   │   ├── node_private.h
│   │   ├── null.c
│   │   ├── pkt_cls.c
│   │   ├── pkt_cls_priv.h
│   │   ├── pkt_drop.c
│   │   ├── rte_node_eth_api.h
│   │   ├── rte_node_ip4_api.h
│   │   └── version.map
│   ├── pcapng
│   │   ├── meson.build
│   │   ├── pcapng_proto.h
│   │   ├── rte_pcapng.c
│   │   ├── rte_pcapng.h
│   │   └── version.map
│   ├── pci
│   │   ├── meson.build
│   │   ├── rte_pci.c
│   │   ├── rte_pci.h
│   │   └── version.map
│   ├── pdump
│   │   ├── meson.build
│   │   ├── rte_pdump.c
│   │   ├── rte_pdump.h
│   │   └── version.map
│   ├── pipeline
│   │   ├── meson.build
│   │   ├── rte_pipeline.c
│   │   ├── rte_pipeline.h
│   │   ├── rte_port_in_action.c
│   │   ├── rte_port_in_action.h
│   │   ├── rte_swx_ctl.c
│   │   ├── rte_swx_ctl.h
│   │   ├── rte_swx_extern.h
│   │   ├── rte_swx_pipeline.c
│   │   ├── rte_swx_pipeline.h
│   │   ├── rte_swx_pipeline_internal.h
│   │   ├── rte_swx_pipeline_spec.c
│   │   ├── rte_table_action.c
│   │   ├── rte_table_action.h
│   │   └── version.map
│   ├── port
│   │   ├── meson.build
│   │   ├── rte_port_ethdev.c
│   │   ├── rte_port_ethdev.h
│   │   ├── rte_port_eventdev.c
│   │   ├── rte_port_eventdev.h
│   │   ├── rte_port_fd.c
│   │   ├── rte_port_fd.h
│   │   ├── rte_port_frag.c
│   │   ├── rte_port_frag.h
│   │   ├── rte_port.h
│   │   ├── rte_port_kni.c
│   │   ├── rte_port_kni.h
│   │   ├── rte_port_ras.c
│   │   ├── rte_port_ras.h
│   │   ├── rte_port_ring.c
│   │   ├── rte_port_ring.h
│   │   ├── rte_port_sched.c
│   │   ├── rte_port_sched.h
│   │   ├── rte_port_source_sink.c
│   │   ├── rte_port_source_sink.h
│   │   ├── rte_port_sym_crypto.c
│   │   ├── rte_port_sym_crypto.h
│   │   ├── rte_swx_port_ethdev.c
│   │   ├── rte_swx_port_ethdev.h
│   │   ├── rte_swx_port_fd.c
│   │   ├── rte_swx_port_fd.h
│   │   ├── rte_swx_port.h
│   │   ├── rte_swx_port_ring.c
│   │   ├── rte_swx_port_ring.h
│   │   ├── rte_swx_port_source_sink.c
│   │   ├── rte_swx_port_source_sink.h
│   │   └── version.map
│   ├── power
│   │   ├── guest_channel.c
│   │   ├── guest_channel.h
│   │   ├── meson.build
│   │   ├── power_acpi_cpufreq.c
│   │   ├── power_acpi_cpufreq.h
│   │   ├── power_common.c
│   │   ├── power_common.h
│   │   ├── power_cppc_cpufreq.c
│   │   ├── power_cppc_cpufreq.h
│   │   ├── power_kvm_vm.c
│   │   ├── power_kvm_vm.h
│   │   ├── power_pstate_cpufreq.c
│   │   ├── power_pstate_cpufreq.h
│   │   ├── rte_power.c
│   │   ├── rte_power_empty_poll.c
│   │   ├── rte_power_empty_poll.h
│   │   ├── rte_power_guest_channel.h
│   │   ├── rte_power.h
│   │   ├── rte_power_pmd_mgmt.c
│   │   ├── rte_power_pmd_mgmt.h
│   │   └── version.map
│   ├── rawdev
│   │   ├── meson.build
│   │   ├── rte_rawdev.c
│   │   ├── rte_rawdev.h
│   │   ├── rte_rawdev_pmd.h
│   │   └── version.map
│   ├── rcu
│   │   ├── meson.build
│   │   ├── rcu_qsbr_pvt.h
│   │   ├── rte_rcu_qsbr.c
│   │   ├── rte_rcu_qsbr.h
│   │   └── version.map
│   ├── regexdev
│   │   ├── meson.build
│   │   ├── rte_regexdev.c
│   │   ├── rte_regexdev_core.h
│   │   ├── rte_regexdev_driver.h
│   │   ├── rte_regexdev.h
│   │   └── version.map
│   ├── reorder
│   │   ├── meson.build
│   │   ├── rte_reorder.c
│   │   ├── rte_reorder.h
│   │   └── version.map
│   ├── rib
│   │   ├── meson.build
│   │   ├── rte_rib6.c
│   │   ├── rte_rib6.h
│   │   ├── rte_rib.c
│   │   ├── rte_rib.h
│   │   └── version.map
│   ├── ring
│   │   ├── meson.build
│   │   ├── rte_ring.c
│   │   ├── rte_ring_c11_pvt.h
│   │   ├── rte_ring_core.h
│   │   ├── rte_ring_elem.h
│   │   ├── rte_ring_elem_pvt.h
│   │   ├── rte_ring_generic_pvt.h
│   │   ├── rte_ring.h
│   │   ├── rte_ring_hts_elem_pvt.h
│   │   ├── rte_ring_hts.h
│   │   ├── rte_ring_peek_elem_pvt.h
│   │   ├── rte_ring_peek.h
│   │   ├── rte_ring_peek_zc.h
│   │   ├── rte_ring_rts_elem_pvt.h
│   │   ├── rte_ring_rts.h
│   │   └── version.map
│   ├── sched
│   │   ├── meson.build
│   │   ├── rte_approx.c
│   │   ├── rte_approx.h
│   │   ├── rte_pie.c
│   │   ├── rte_pie.h
│   │   ├── rte_red.c
│   │   ├── rte_red.h
│   │   ├── rte_sched.c
│   │   ├── rte_sched_common.h
│   │   ├── rte_sched.h
│   │   └── version.map
│   ├── security
│   │   ├── meson.build
│   │   ├── rte_security.c
│   │   ├── rte_security_driver.h
│   │   ├── rte_security.h
│   │   └── version.map
│   ├── stack
│   │   ├── meson.build
│   │   ├── rte_stack.c
│   │   ├── rte_stack.h
│   │   ├── rte_stack_lf.c
│   │   ├── rte_stack_lf_c11.h
│   │   ├── rte_stack_lf_generic.h
│   │   ├── rte_stack_lf.h
│   │   ├── rte_stack_lf_stubs.h
│   │   ├── rte_stack_std.c
│   │   ├── rte_stack_std.h
│   │   ├── stack_pvt.h
│   │   └── version.map
│   ├── table
│   │   ├── meson.build
│   │   ├── rte_lru_arm64.h
│   │   ├── rte_lru.h
│   │   ├── rte_lru_x86.h
│   │   ├── rte_swx_table_em.c
│   │   ├── rte_swx_table_em.h
│   │   ├── rte_swx_table.h
│   │   ├── rte_swx_table_learner.c
│   │   ├── rte_swx_table_learner.h
│   │   ├── rte_swx_table_selector.c
│   │   ├── rte_swx_table_selector.h
│   │   ├── rte_swx_table_wm.c
│   │   ├── rte_swx_table_wm.h
│   │   ├── rte_table_acl.c
│   │   ├── rte_table_acl.h
│   │   ├── rte_table_array.c
│   │   ├── rte_table_array.h
│   │   ├── rte_table.h
│   │   ├── rte_table_hash_cuckoo.c
│   │   ├── rte_table_hash_cuckoo.h
│   │   ├── rte_table_hash_ext.c
│   │   ├── rte_table_hash_func_arm64.h
│   │   ├── rte_table_hash_func.h
│   │   ├── rte_table_hash.h
│   │   ├── rte_table_hash_key16.c
│   │   ├── rte_table_hash_key32.c
│   │   ├── rte_table_hash_key8.c
│   │   ├── rte_table_hash_lru.c
│   │   ├── rte_table_lpm.c
│   │   ├── rte_table_lpm.h
│   │   ├── rte_table_lpm_ipv6.c
│   │   ├── rte_table_lpm_ipv6.h
│   │   ├── rte_table_stub.c
│   │   ├── rte_table_stub.h
│   │   └── version.map
│   ├── telemetry
│   │   ├── meson.build
│   │   ├── rte_telemetry.h
│   │   ├── telemetry.c
│   │   ├── telemetry_data.c
│   │   ├── telemetry_data.h
│   │   ├── telemetry_internal.h
│   │   ├── telemetry_json.h
│   │   ├── telemetry_legacy.c
│   │   └── version.map
│   ├── timer
│   │   ├── meson.build
│   │   ├── rte_timer.c
│   │   ├── rte_timer.h
│   │   └── version.map
│   └── vhost
│       ├── fd_man.c
│       ├── fd_man.h
│       ├── iotlb.c
│       ├── iotlb.h
│       ├── meson.build
│       ├── rte_vdpa.h
│       ├── rte_vhost_async.h
│       ├── rte_vhost_crypto.h
│       ├── rte_vhost.h
│       ├── socket.c
│       ├── vdpa.c
│       ├── vdpa_driver.h
│       ├── version.map
│       ├── vhost.c
│       ├── vhost_crypto.c
│       ├── vhost.h
│       ├── vhost_user.c
│       ├── vhost_user.h
│       ├── virtio_crypto.h
│       └── virtio_net.c
├── license
│   ├── bsd-2-clause.txt
│   ├── bsd-3-clause.txt
│   ├── exceptions.txt
│   ├── gpl-2.0.txt
│   ├── isc.txt
│   ├── lgpl-2.1.txt
│   ├── mit.txt
│   └── README
├── MAINTAINERS
├── Makefile
├── meson.build
├── meson_options.txt
├── README
├── usertools
│   ├── cpu_layout.py
│   ├── dpdk-devbind.py
│   ├── dpdk-hugepages.py
│   ├── dpdk-pmdinfo.py
│   ├── dpdk-telemetry-client.py
│   ├── dpdk-telemetry.py
│   └── meson.build
└── VERSION