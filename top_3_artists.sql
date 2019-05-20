--Provide a query that shows the top 3 best selling artists.

SELECT TOP 3
    a.Name,
    COUNT(a.Name) AS Total
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY a.Name
ORDER BY Total DESC;