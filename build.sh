#! /bin/bash

gcc $1 -I./sdk/include -L./sdk/lib  \
-Wl,--start-group \
-lrte_kvargs -lrte_telemetry -lrte_ethdev -lrte_eventdev -lrte_mempool -lrte_mbuf -lrte_eal \
-Wl,--end-group \
-lnuma -ldl -lpthread -mssse3