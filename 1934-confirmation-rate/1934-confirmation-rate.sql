# Write your MySQL query statement below
# coalesce ==> if result = null return 0
select Signups.user_id , round(coalesce(sum(Confirmations.action='confirmed')/count(*),0),2) as confirmation_rate
from Signups
left join Confirmations
on Confirmations.user_id = Signups.user_id
group by Signups.user_id;

