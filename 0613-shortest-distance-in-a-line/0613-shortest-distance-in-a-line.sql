/* Write your T-SQL query statement below 
with cte as (select x,
LEAD(x, 1) over (order by x) as ld,
LAG(x, 1) over (order by x) as lg
from Point), 

cte2 as
(select abs(x - ld) as dist1, abs(x - lg) as dist2 from cte)

select min(dist1) or min(dist2) as shortest from cte2*/

with cte as (select abs(lag(x) over (order by x)-x) as shortest from Point)
select min(shortest) as shortest from cte