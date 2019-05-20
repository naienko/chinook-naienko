--Provide a query that shows the most purchased track of 2013.
--Author's Note: more than one track was the most purchased track of 2013

SELECT t.Name, 
    COUNT(il.TrackId) AS Total
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
WHERE YEAR(i.InvoiceDate) = '2013'
GROUP BY t.Name
ORDER BY Total DESC;