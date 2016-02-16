alter session set `store.hive.optimize_scan_with_native_readers` = true;
explain plan for select l_orderkey, l_partkey, l_quantity, cast(l_shipdate as date) l_shipdate, l_shipinstruct, `year` from hive.lineitem_parquet_partitioned_hive_string where (`year`='1993' and l_orderkey>29600) or (`year`='1994' and l_orderkey>29700);
alter session set `store.hive.optimize_scan_with_native_readers` = false;
