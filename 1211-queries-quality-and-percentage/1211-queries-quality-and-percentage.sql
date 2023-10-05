# Write your MySQL query statement below

with cte as (
select query_name, rating/position as ratio,
case when rating < 3 then 1 else 0 end as poor
from queries)

select query_name, round(avg(ratio), 2) as quality, 
round(100.0*sum(poor)/count(*), 2)  as poor_query_percentage 
from cte
group by query_name