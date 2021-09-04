SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'Engineering Manager'


SELECT * FROM 



-- Using WHERE, AND and ORDER BY
-- Finding out latest Currency Rate for conversion from USD TO CAD
SELECT * FROM Sales.CurrencyRate
WHERE ( FromCurrencyCode = 'USD' AND ToCurrencyCode = 'CAD'  )
ORDER BY ModifiedDate Desc