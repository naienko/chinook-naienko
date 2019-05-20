--What are the respective total sales for each of those years?

SELECT SUM(i.Total)
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2009';

--STEVECODE
SELECT a.Total, a.InvoiceYear
FROM (
    SELECT SUM(i.Total) Total,
        YEAR (i.InvoiceDate) InvoiceYear
    FROM Invoice i
    GROUP BY YEAR(i.InvoiceDate)
) a
WHERE a.InvoiceYear = '2009'
OR a.InvoiceYear = '2011';