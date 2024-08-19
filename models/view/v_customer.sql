--yml里 default materialized是 table,这里专门针对这个表，设置成view，这样跑完BigQuery里的表会不一样

{{ config(materialized='view') }}

   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM raw.customer