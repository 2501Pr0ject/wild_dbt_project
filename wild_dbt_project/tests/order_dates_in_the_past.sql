-- Test pour vérifier que les dates de commande ne sont pas dans le futur
with invalid_orders as (
    select *
    from {{ ref('stg_orders') }}
    where order_date > current_date
)
select count(*)
from invalid_orders
having count(*) > 0