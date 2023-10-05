# Write your MySQL query statement below
with cte as (
select a.*, b.product_name,
rank() over (partition by a.product_id order by a.year) as rnk
from sales a join product b
on a.product_id = b.product_id
    )
select product_id, year as first_year, quantity, price from cte where rnk =1