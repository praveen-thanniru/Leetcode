# Write your MySQL query statement below
select a.user_id, round(avg(if(b.action = 'confirmed', 1, 0)), 2) as confirmation_rate
from signups a left join confirmations b
on a. user_id = b.user_id
group by a.user_id