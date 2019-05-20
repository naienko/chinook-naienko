--Provide a query that shows the top 5 most purchased songs.
--Author's Note: Multiple songs were purchased 4 times, but this query only shows 3 of them. Query may need to be refactored

SELECT TOP 5
    t.Name, 
    COUNT(il.TrackId) AS Total
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY Total DESC;