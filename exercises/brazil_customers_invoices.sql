SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE c.Country = "Brazil"