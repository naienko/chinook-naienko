--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT COUNT(il.InvoiceLineId) AS LineItems, 
    i.InvoiceId
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
ORDER BY LineItems DESC;