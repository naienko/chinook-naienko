--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName + ' ' + c.LastName AS FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry 
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil';