--Unique Identifier Replace: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
WITH unique_id AS
(
SELECT a.*,b.unique_id
    FROM Employees a
        LEFT JOIN EmployeeUNI b
            ON a.id = b.id

)
SELECT unique_id, name FROM unique_id