SELECT COUNT(TrackId), plt.PlaylistId, pl.Name
FROM PlaylistTrack plt
JOIN Playlist pl ON pl.PlaylistId = plt.PlaylistId
GROUP BY plt.PlaylistId