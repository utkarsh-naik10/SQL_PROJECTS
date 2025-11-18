#How many unique artists appear in each playlist?
SELECT
    pl.PlaylistId AS Playlist_Id,
    pl.Name AS Playlist_Name,
    COUNT(DISTINCT alb.ArtistId) AS Unique_Artist
FROM Playlist AS pl
LEFT JOIN PlaylistTrack AS plt
    ON pl.PlaylistId=plt.PlaylistId
LEFT JOIN Track AS tr
    ON plt.TrackId=tr.TrackId
LEFT JOIN Album AS alb
    ON tr.AlbumId=alb.AlbumId
GROUP BY Playlist_Id,Playlist_Name
ORDER BY Unique_Artist DESC