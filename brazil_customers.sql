--Provide a query only showing the Customers from Brazil.

SELECT c.FirstName + ' ' + c.LastName AS FullName
FROM Customer c 
WHERE c.Country = 'Brazil';
