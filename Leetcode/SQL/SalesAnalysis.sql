--Product Sales Analysis I - https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

WITH Sales_by_product AS
(
SELECT Sales.*, Product.product_name
FROM Sales
    LEFT JOIN Product
        ON Sales.product_id = Product.product_id

)

SELECT product_name, year, price
FROM Sales_by_product