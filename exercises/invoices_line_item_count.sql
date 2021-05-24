Select i.*, Count(il.InvoiceLineId) "Invoice Lines"
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId