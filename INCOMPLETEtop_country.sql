--Which country's customers spent the most?

SELECT TOP 1
MAX(CountrySales.CountryTotal) AS Total,
    CountrySales.BillingCountry AS Country
FROM
(SELECT SUM(i.Total) AS CountryTotal,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry) CountrySales
GROUP BY CountrySales.BillingCountry, CountrySales.CountryTotal
ORDER BY CountrySales.CountryTotal DESC;