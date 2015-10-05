select time_by_day.the_year as c0, product_class.product_family as c1, warehouse.warehouse_state_province as c2, sum(inventory_fact_1997.store_invoice) as m0 from time_by_day as time_by_day, inventory_fact_1997 as inventory_fact_1997, product_class as product_class, product as product, warehouse as warehouse where inventory_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and inventory_fact_1997.product_id = product.product_id and product.product_class_id = product_class.product_class_id and inventory_fact_1997.warehouse_id = warehouse.warehouse_id and warehouse.warehouse_state_province in ('OR', 'WA') group by time_by_day.the_year, product_class.product_family, warehouse.warehouse_state_province;