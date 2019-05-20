--Provide a query that shows all Invoices but includes the # of invoice line items.
--Author's Note: what data from Invoices should be supplied? ALL data? Query may need to be refactored

SELECT i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    COUNT(il.InvoiceLineId) AS LineItems
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId, i.InvoiceDate, i.Total
ORDER BY i.InvoiceId;