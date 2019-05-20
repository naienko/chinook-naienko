--How many Invoices were there in 2009?

SELECT COUNT(i.InvoiceId) AS InvoicedIn2009
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2009';


--How many Invoices were there in 2009 and 2011?
--STEVECODE
SELECT NumberOfInvoices, InvoiceYear
FROM (
    SELECT COUNT(i.InvoiceId) NumberOfInvoices,
        YEAR(i.InvoiceDate) InvoiceYear
    FROM Invoice i
    GROUP BY YEAR(i.InvoiceDate)
) as Aggregate
WHERE Aggregate.InvoiceYear = '2011' 
OR Aggregate.InvoiceYear = '2009';