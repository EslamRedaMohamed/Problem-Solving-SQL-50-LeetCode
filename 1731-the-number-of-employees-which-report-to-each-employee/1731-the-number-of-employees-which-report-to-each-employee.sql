# Write your MySQL query statement below

select 
mgr.employee_id , mgr.name , count(emp.reports_to) as reports_count , round(avg(emp.age)) as average_age
from 
Employees emp , Employees mgr
where 
mgr.employee_id = emp.reports_to
group by mgr.employee_id
having 
reports_count > 0
order by 
mgr.employee_id;