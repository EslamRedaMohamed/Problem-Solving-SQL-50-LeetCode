# Write your MySQL query statement below

SELECT mgr.name
FROM Employee mgr
JOIN Employee emp ON emp.managerId = mgr.id
GROUP BY mgr.id, mgr.name
HAVING COUNT(mgr.id) >= 5;
