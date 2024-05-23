--Problem: https://leetcode.com/problems/recyclable-and-low-fat-products/description/
SELECT p1.product_id 
FROM products p1
    LEFT JOIN products p2
        ON p1.product_id = p2.product_id
WHERE p1.low_fats = 'Y' AND p2.recyclable = 'Y'

