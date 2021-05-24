SELECT InvoiceLineId, t.Name "Track Name", Artist.Name "Artist Name"
FROM InvoiceLine i
JOIN Track t ON  t.TrackId = i.TrackId
JOIN Album ON Album.AlbumId = t.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId
ORDER BY InvoiceLineId ASC