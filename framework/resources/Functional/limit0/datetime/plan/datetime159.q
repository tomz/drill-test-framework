explain plan for select * from ( select extract(month from now())=extract(month from current_timestamp) from sys.drillbits limit 1 ) t limit 0;