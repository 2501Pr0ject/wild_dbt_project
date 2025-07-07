{{ config(materialized='table') }}

-- Modèle enrichi combinant les données clients avec leur statut basé sur le nombre de commandes
with customer_orders as (
    select 
        customer_id,
        count(*) as total_orders
    from {{ ref('stg_orders') }}
    group by customer_id
),

status_data as (
    select *
    from {{ ref('customer_status') }}
),

customer_with_status as (
    select 
        c.customer_id,
        c.customer_name,
        coalesce(co.total_orders, 0) as total_orders,
        case 
            when coalesce(co.total_orders, 0) >= s.min_orders 
            and coalesce(co.total_orders, 0) <= s.max_orders 
            then s.status_name
        end as customer_status,
        case 
            when coalesce(co.total_orders, 0) >= s.min_orders 
            and coalesce(co.total_orders, 0) <= s.max_orders 
            then s.description
        end as status_description
    from {{ ref('stg_customers') }} c
    left join customer_orders co on c.customer_id = co.customer_id
    cross join status_data s
    where coalesce(co.total_orders, 0) >= s.min_orders 
    and coalesce(co.total_orders, 0) <= s.max_orders
)

select 
    customer_id,
    customer_name,
    total_orders,
    customer_status,
    status_description
from customer_with_status
order by total_orders desc