--Provide a query that includes the purchased track name with each invoice line item.

SELECT il.InvoiceLineId,
    il.InvoiceId,
    il.TrackId,
    t.Name,
    il.UnitPrice,
    il.Quantity
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
ORDER BY il.InvoiceId;