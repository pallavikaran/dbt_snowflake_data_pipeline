-- creates DBT_DB > DBT_SCHEMA > Views > STG_TPCH_ORDERS
-- Rename column names for orders
select
    o_orderkey as order_key,
    o_custkey as customer_key,
    o_orderstatus as status_code,
    o_totalprice as total_price,
    o_orderdate as order_date
from
    {{ source('tpch', 'orders') }}