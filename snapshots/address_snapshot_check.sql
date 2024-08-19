{% snapshot address_snapshot_check %}
-- Snapshots are models that allow you to track and store changes to a dataset over time
-- 某个customer的address发生改变，会被记录下来

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='customer_id',
          check_cols=['address'],
        )
    }}

    select * from raw.customer

{% endsnapshot %}