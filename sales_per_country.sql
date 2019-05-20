--Provide a query that shows the total sales per country.

SELECT i.BillingCountry, 
    SUM(i.Total) AS Total
FROM Invoice i
GROUP BY i.BillingCountry;