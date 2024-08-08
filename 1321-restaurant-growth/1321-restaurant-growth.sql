# Write your MySQL query statement below


with sumAmount as
(select visited_on, sum(amount) as amount from customer group by 1)

select 
visited_on
, sum(amount) over (
    order by visited_on
      rows between 6 preceding and current row
    ) as amount
, round(
    avg(amount) over (
        order by visited_on
        rows between 6 preceding and current row
        ) ,2
    ) as average_amount

from sumAmount
LIMIT 18446744073709551615 OFFSET 6;

