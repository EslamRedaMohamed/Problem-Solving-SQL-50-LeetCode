# Write your MySQL query statement below
 select p.product_name, sum(o.unit) as unit
 from Products p, Orders o
 where p.product_id = o.product_id
 and month(order_date) = '2'
 and year(order_date) = '2020'
 group by p.product_name
 having unit >= 100;