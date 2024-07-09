# Write your MySQL query statement below
select 
    Students.student_id, 
    Students.student_name, 
    Subjects.subject_name, 
    COUNT(Examinations.subject_name) AS attended_exams
    
from 
    Students 
    
cross join 
    Subjects
    
left join 
    Examinations ON Examinations.student_id=Students.student_id  
                 and Examinations.subject_name = Subjects.subject_name

group by 
    Students.student_id, 
    Students.student_name, 
    Subjects.subject_name
    
order by Students.student_id;