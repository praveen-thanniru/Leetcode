# Write your MySQL query statement below
with cte as (select *, sum(weight) over (order by turn ROWS between unbounded preceding and current row) as running_weight_total
from queue)

select person_name from cte where running_weight_total <= 1000
order by running_weight_total desc
limit 1
