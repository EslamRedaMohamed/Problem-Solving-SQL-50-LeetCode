# Write your MySQL query statement below
with rankedProducts as
(select *,
row_number() over(partition by product_id order by change_date desc) as raank
from products
where change_date <= '2019-08-16')

select product_id, new_price as price
from rankedProducts
where raank = 1
union
select product_id, 10 as price
from Products
where product_id not in (select product_id from rankedProducts);
