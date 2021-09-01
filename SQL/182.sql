# Write your MySQL query statement below
SELECT distinct p1.Email 
FROM Person p1
    LEFT JOIN Person p2 
        ON p1.Email = p2.Email
WHERE p1.Id != p2.Id 