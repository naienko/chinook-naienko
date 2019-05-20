--How many Invoices were there in 2011?

SELECT COUNT(i.InvoiceId) AS InvoicedIn2011
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2011';