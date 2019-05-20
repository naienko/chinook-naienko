--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, 
    c.FirstName + ' ' + c.LastName AS CustomerName,
    c.Country,
    e.FirstName + ' ' + e.LastName AS SalesAgentName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId;