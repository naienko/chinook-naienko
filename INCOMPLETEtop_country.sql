--Which country's customers spent the most?

SELECT TOP 1
MAX(x.CountryTotal),
    x.BillingCountry
FROM
(SELECT SUM(i.Total) AS CountryTotal,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry) x
GROUP BY x.BillingCountry, x.CountryTotal
ORDER BY x.CountryTotal DESC;

SELECT x.BillingCountry
FROM (SELECT SUM(i.Total) AS CountryTotal,
        i.BillingCountry
    FROM Invoice i
    GROUP BY i.BillingCountry) x
WHERE MAX(x.CountryTotal) = MAX (x.CountryTotal);