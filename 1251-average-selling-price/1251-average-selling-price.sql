# Write your MySQL query statement below
select Prices.product_id, COALESCE(round(sum(Prices.price * UnitsSold.units) / sum(UnitsSold.units), 2),0) as average_price
from Prices
left join UnitsSold
on UnitsSold.product_id = Prices.product_id
and purchase_date between start_date and end_date
group by Prices.product_id;
