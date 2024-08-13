# Write your MySQL query statement below
 with cta as
 (
    select distinct salary,
    dense_rank() over(order by salary desc) as rs
    from Employee
    limit 2
 )
-- select * from cta

select ifnull((
        select salary as SecondHighestSalary
        from cta
        where rs=2
               ),null
              ) as SecondHighestSalary


