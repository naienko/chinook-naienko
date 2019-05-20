--Provide a query showing only the Employees who are Sales Agents.

SELECT e.FirstName + ' ' + e.LastName AS FullName
FROM Employee e
WHERE e.Title = 'Sales Support Agent';