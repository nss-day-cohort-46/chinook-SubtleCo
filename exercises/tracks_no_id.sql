-- Track.Name, Album.Title, Genre.Name, MediaType.Name

SELECT Track.Name "Title", Album.Title "Album", Genre.Name "Genre", MediaType.Name "Media Type"
FROM Track
JOIN Album on Album.AlbumId = Track.AlbumId
JOIN Genre ON Track.GenreId = Genre.GenreId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId