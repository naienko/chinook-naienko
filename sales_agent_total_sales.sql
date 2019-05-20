--Provide a query that shows total sales made by each sales agent.

SELECT SUM(i.Total) AS Total,
    e.FirstName + ' ' + e.LastName AS FullName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.LastName, e.FirstName;