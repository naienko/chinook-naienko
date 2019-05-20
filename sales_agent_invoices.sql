--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT e.FirstName + ' ' + e.LastName AS EmployeeName, c.FirstName + ' ' + c.LastName AS CustomerName, i.InvoiceId, i.InvoiceDate 
FROM Invoice i
JOIN customer c ON c.CustomerId = i.CustomerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
ORDER BY e.LastName, i.BillingCountry, i.Total DESC;