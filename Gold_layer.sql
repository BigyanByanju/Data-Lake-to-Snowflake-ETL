USE DATABASE pacificretail_db;
CREATE SCHEMA IF NOT EXISTS GOLD;

show streams;

select * from CUSTOMER_CHANGES_STREAM;
select * from PRODUCT_CHANGES_STREAM;
SELECT * FROM ORDER_CHANGES_STREAM;

EXECUTE TASK ORDER_SILVER_MERGE_TASK;
EXECUTE TASK PRODUCT_SILVER_MERGE_TASK;
EXECUTE TASK SILVER_CUSTOMER_MERGE_TASK;

SELECT * FROM PACIFICRETAIL_DB.BRONZE.order_CHANGES_STREAM;
select * from orders;


SHOW TASKS;