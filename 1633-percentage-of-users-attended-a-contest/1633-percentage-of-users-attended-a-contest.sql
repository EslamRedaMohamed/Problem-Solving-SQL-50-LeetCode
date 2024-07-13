# Write your MySQL query statement below
select Register.contest_id, round(count(Register.user_id)/(select count(user_id)from Users)*100, 2) as percentage
from Users
join Register
on Register.user_id = Users.user_id
group by Register.contest_id
order by percentage desc, Register.contest_id asc;
