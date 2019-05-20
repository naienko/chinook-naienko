--Provide a query that shows the most purchased Media Type.

SELECT TOP 1
    mt.Name,
    COUNT(mt.Name) AS TypeCount
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
ORDER BY TypeCount DESC;