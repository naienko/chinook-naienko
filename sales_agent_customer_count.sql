--Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName + ' ' + e.LastName AS FullName, 
    COUNT(c.SupportRepId) AS TotalCustomers
FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName