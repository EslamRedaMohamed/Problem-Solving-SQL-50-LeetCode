# Write your MySQL query statement below
select str.machine_id, round(avg(str.timestamp-end.timestamp),3) as processing_time
from Activity str , Activity end
where str.machine_id = end.machine_id
and str.process_id = end.process_id
and str.timestamp > end.timestamp
group by str.machine_id;