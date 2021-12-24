# Write your MySQL query statement below
SELECT DISTINCT a.Num AS ConsecutiveNums
FROM Logs a,
     Logs b,
     Logs c
WHERE a.id = b.id - 1
AND b.id = c.id - 1
AND a.Num = b.Num
AND b.Num = c.Num