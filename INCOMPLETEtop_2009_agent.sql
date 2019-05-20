--Which sales agent made the most in sales in 2009?

SELECT SUM(i.Total) AS Total,
    e.FirstName + ' ' + e.LastName AS FullName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
WHERE YEAR(i.InvoiceDate) = '2009'
GROUP BY e.LastName, e.FirstName
