With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    JOIN Invoice i ON i.InvoiceId = InvoiceLine.InvoiceId
    WHERE i.InvoiceDate like "%2013%"
    GROUP BY TrackId
)

SELECT MAX(tc.TotalSales) TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId