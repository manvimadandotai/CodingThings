--Find Customer Referee : https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
WITH referee AS (
SELECT a.id, b.referee_id, a.name  
FROM Customer a
LEFT JOIN Customer b
    ON a.id = b.id  
)

SELECT name FROM referee
WHERE COALESCE(referee_id,0) != 2