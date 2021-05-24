SELECT COUNT(InvoiceLineId), InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId