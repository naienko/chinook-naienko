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