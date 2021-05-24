SELECT InvoiceLineId, t.Name
FROM InvoiceLine i
JOIN Track t ON  t.TrackId = i.TrackId
ORDER BY InvoiceLineId ASC