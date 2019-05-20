--How many Invoices were there in 2009?

SELECT COUNT(i.InvoiceId) AS InvoicedIn2009
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2009';