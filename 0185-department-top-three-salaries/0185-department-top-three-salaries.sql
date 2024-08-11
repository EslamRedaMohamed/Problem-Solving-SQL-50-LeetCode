# Write your MySQL query statement below
with rankedOrdered as
(
    select dept.name as Department, emp.name as Employee, emp.salary as Salary,
    DENSE_RANK() over(partition by dept.name order by emp.salary desc) as ro
    from Employee emp, Department dept
    where emp.departmentId = dept.id
)

select Department, Employee, Salary
from rankedOrdered
where ro <= 3;