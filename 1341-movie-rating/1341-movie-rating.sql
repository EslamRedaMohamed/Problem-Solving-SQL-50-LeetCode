# Write your MySQL query statement below
with rateCount as
(
select u.name ,count(mr.rating) as cr
from Movies m, Users u, MovieRating mr
where mr.user_id = u.user_id
group by u.name
order by cr desc, u.name asc
limit 1
),

rateavg as
(
select m.title, avg(mr.rating) as ar
from Movies m, MovieRating mr
where mr.movie_id = m.movie_id
and year(mr.created_at) = 2020
and month(mr.created_at) = 2
group by m.title
order by ar desc, m.title asc
limit 1
)

select name as results
from rateCount 
union all
select title
from rateavg



