# Write your MySQL query statement below
select distinct l1.num as ConsecutiveNums
from logs l1,logs l2,logs l3
where l1.id+1 = l2.id and l1.id+2 = l3.id       #join_condition
and l1.num = l2.num and l2.num = l3.num;