--Visits without transactions : https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
WITH no_transactions AS
(

SELECT Visits.* ,  Transactions.transaction_id 
FROM Visits
    LEFT JOIN Transactions
        ON Visits.visit_id = Transactions.visit_id

)
SELECT customer_id, count(visit_id) AS count_no_trans 
FROM no_transactions
WHERE transaction_id  IS NULL
GROUP BY customer_id