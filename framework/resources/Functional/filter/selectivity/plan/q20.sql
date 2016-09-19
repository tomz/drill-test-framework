alter session set `planner.filter.min_selectivity_estimate_factor` = 0.01;
explain plan including all attributes for select * from lineitem where l_orderkey > 10 and l_partkey < 50 and l_quantity > 3 and l_linenumber < 2 and l_returnflag = r;
alter session set `planner.filter.min_selectivity_estimate_factor` = 0.0;
