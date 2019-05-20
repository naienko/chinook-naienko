--Which sales agent made the most in sales over all?

SELECT TOP 1
    MAX(x.SalesAgentTotal),
    x.FullName
FROM
(SELECT SUM(i.Total) AS SalesAgentTotal,
    e.FirstName + ' ' + e.LastName AS FullName,
    e.EmployeeId
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.LastName, e.FirstName, e.EmployeeId) x
GROUP BY x.FullName, x.SalesAgentTotal
ORDER BY x.SalesAgentTotal DESC;