# Write your MySQL query statement below
SELECT  tb1.Id
FROM Weather tb1,
     Weather tb2 
WHERE DATEDIFF(tb1.recordDate, tb2.recordDate) = 1
AND tb1.Temperature > tb2.Temperature