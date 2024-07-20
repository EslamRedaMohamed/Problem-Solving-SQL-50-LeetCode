# Write your MySQL query statement below
# don't use min(year) directly because it does not ensure that quantity and price are from the row with the minimum year.

select product_id, year as first_year, quantity, price
from sales
where (product_id, year)
in (select product_id,min(year) from sales group by product_id)
