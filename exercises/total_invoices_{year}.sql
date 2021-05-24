SELECT COUNT(InvoiceId) as "Sales", STRFTIME("%Y", InvoiceDate) as "Year"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%"
OR InvoiceDate LIKE "%2011%"
GROUP BY STRFTIME("%Y", InvoiceDate)