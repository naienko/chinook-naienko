--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceLineId,
    il.InvoiceId,
    il.TrackId,
    t.Name AS TrackName,
    a.Name AS ArtistName,
    il.UnitPrice,
    il.Quantity
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
ORDER BY il.InvoiceId;