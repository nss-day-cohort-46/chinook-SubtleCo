-- Most purchased track in 2013

With TrackCounts AS (
    Select SUM(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    GROUP BY TrackId
)

SELECT tc.TotalSales TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId
ORDER BY TotalSales DESC
LIMIT 5