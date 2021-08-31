--Employees Earning More Than Their Managers
# Write your MySQL query statement below
SELECT t1.Name as Employee
FROM Employee t1
LEFT JOIN Employee t2
    ON t1.ManagerID = t2.Id
WHERE t1.Salary > t2.Salary