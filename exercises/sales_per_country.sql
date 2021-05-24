SELECT BillingCountry Country, Count(InvoiceId) Sales
FROM Invoice
GROUP BY Country
ORDER BY Sales DESC