--What are the respective total sales for each of those years?

SELECT SUM(i.Total)
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2011';