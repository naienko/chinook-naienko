--Which sales agent made the most in sales in 2009?

SELECT MAX(x.SalesAgentTotal),
    x.FullName
FROM
(SELECT SUM(i.Total) AS SalesAgentTotal,
    e.FirstName + ' ' + e.LastName AS FullName,
    e.EmployeeId
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE YEAR(i.InvoiceDate) = '2009'
GROUP BY e.LastName, e.FirstName, e.EmployeeId) x
GROUP BY x.FullName;

--STEVECODE
SELECT TOP 1
    '$' + CAST(MAX(TotalSales) AS VARCHAR(25)) TotalSales,
    EmployeeName
FROM (
    SELECT SUM(i.Total) TotalSales,
        e.FirstName + ' ' + e.LastName EmployeeName,
        YEAR(i.InvoiceDate) AS InvoiceYear
    FROM Invoice i, Employee e, Customer c
    WHERE i.CustomerId = c.CustomerId
    AND c.SupportRepId = e.EmployeeId
    AND YEAR(i.InvoiceDate) = '2009'
    GROUP BY e.FirstName + ' ' + e.LastName, YEAR(i.InvoiceDate)
) Sales
GROUP BY EmployeeName
ORDER BY TotalSales DESC;