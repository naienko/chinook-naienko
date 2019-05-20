--Which country's customers spent the most?

SELECT MAX(x.CountryTotal),
    x.BillingCountry
FROM
(SELECT SUM(i.Total) AS CountryTotal,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry) x
GROUP BY x.BillingCountry;