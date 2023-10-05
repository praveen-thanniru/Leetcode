# Write your MySQL query statement below
with cte as (select  b.contest_id, count(a.user_id) as user_count,
             100.0*count(a.user_id)/(select count(*) from users) as percentage
             from users a join register b
on a.user_id = b.user_id
group by b.contest_id)

select contest_id, round(percentage, 2) as percentage
from cte
order by percentage desc, contest_id