--Provide a query that shows the # of invoices per country.

SELECT i.BillingCountry,
    COUNT(i.BillingCountry) AS #OfInvoices
FROM Invoice i
GROUP BY i.BillingCountry;