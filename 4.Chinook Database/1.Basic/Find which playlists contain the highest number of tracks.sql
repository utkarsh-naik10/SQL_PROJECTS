/*
Find which playlists contain the highest number of tracks.
*/

SELECT
    PlaylistTrack.PlaylistId AS Playlist_Id,
    Playlist.Name AS PlayList_Name,
    COUNT(PlaylistTrack.PlaylistId) AS Total_Count
FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId=Playlist.PlaylistId
GROUP BY Playlist_Id,PlayList_Name
ORDER BY Total_Count DESC