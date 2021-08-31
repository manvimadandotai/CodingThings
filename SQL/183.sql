--Customers Who Never Order
# Write your MySQL query statement below
SELECT c.Name as Customers
FROM Customers c
LEFT JOIN Orders o
    ON c.Id = o.CustomerID
WHERE COALESCE(o.Id, " ") = " " 