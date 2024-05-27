--Article Views  : https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
WITH viewer AS 
(
    SELECT a.* 
    FROM Views a
        LEFT JOIN Views b
            ON a.viewer_id = b.viewer_id
    WHERE a.author_id = b.viewer_id

)

SELECT DISTINCT author_id as id  
FROM viewer
order by author_id ASC