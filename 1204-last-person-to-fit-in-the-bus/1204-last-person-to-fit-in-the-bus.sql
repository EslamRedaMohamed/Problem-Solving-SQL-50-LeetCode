# Write your MySQL query statement below
with allowdPersons as
(
    select * , sum(weight) over (order by turn) as totalWeight
    from Queue
)

select person_name
from allowdPersons
where totalWeight <= 1000
order by turn desc
limit 1;