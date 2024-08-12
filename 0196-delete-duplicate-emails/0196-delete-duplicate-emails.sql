# Write your MySQL query statement below
with minIds as
(
    select min(id)
    from Person
    group by email
)

delete
from Person
where id not in(select * from minIds);