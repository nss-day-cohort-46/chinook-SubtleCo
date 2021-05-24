With TrackCounts AS (
    Select SUM(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    GROUP BY TrackId
)


SELECT SUM(tc.TotalSales) TotalSales, Artist.Name
FROM TrackCounts tc
JOIN Track ON Track.TrackId = tc.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.Artistid = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY TotalSales DESC
LIMIT 3