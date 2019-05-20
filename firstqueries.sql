--SELECT c.FirstName, c.LastName, c.CustomerId, c.Country FROM Customer c WHERE NOT c.Country = 'USA';

--SELECT * FROM Customer c WHERE c.Country = 'Brazil';
c.FirstName + ' ' + c.LastName AS FullName


--SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry FROM Customer c, Invoice i WHERE c.CustomerId = i.CustomerId;
SELECT * FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil';

--SELECT * FROM Employee WHERE Title = 'Sales Support Agent';

--SELECT e.FirstName, e.LastName, c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate FROM Employee e, Customer c, Invoice i WHERE e.Title = 'Sales Support Agent' AND e.EmployeeId = c.SupportRepId AND i.CustomerId = c.CustomerId;

--SELECT DISTINCT i.BillingCountry FROM Invoice i;

SELECT e.FirstName, e.LastName, c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate FROM Invoice i
JOIN customer c ON c.CustomerId = i.CustomerId
JOIN employee e ON e.EmployeeId = c.SupportRepId
ORDER BY e.LastName, i.BillingCountry, i.total DESC;

select p.name count(pt.trackid) trackcount
from Playlist p
join PlaylistTrack pt on pt.playlistid = p.playlistidgroup 
group by p.name
order by trackcount desc;

select count(il.InvoiceLineId) AS LineItems, i.InvoiceId
from Invoice i
join invoiceline il on i.InvoiceId = il.InvoiceId
group by i.InvoiceId
order by LineItems desc;

--24
select
t.Name, count(il.TrackId) AS Total
from Invoice i
join InvoiceLine il on il.InvoiceId = i.InvoiceId
join Track t on t.TrackId = il.TrackId
where YEAR(i.InvoiceDate) = '2013'
group BY t.Name
order by Total desc