-- define temp table
--文档的名字，会成为BigQuery里表格的名字
With stg_customers AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM raw.customer -- use the table name in BigQuery
)

-- use the table
Select * from stg_customers