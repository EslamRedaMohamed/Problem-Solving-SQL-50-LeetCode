# Write your MySQL query statement below

select 
    round(sum(case when date_add(A2.min_date, interval 1 day) = A1.event_date then 1 else 0 end) /
    count(distinct A2.player_id), 2) as fraction
from
    (select player_id, min(event_date) as min_date 
     from activity 
     group by player_id) as A2
join 
    activity A1
on 
    A2.player_id = A1.player_id;






