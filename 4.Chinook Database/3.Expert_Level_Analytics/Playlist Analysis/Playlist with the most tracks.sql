#Playlist with the most tracks

SELECT
    plt.PlaylistId AS PlayList_Id,
    pl.Name AS Playlist_Name,
    COUNT(*) AS Track_Count    
FROM PlaylistTrack AS plt
LEFT JOIN Playlist AS pl
    ON plt.PlaylistId=pl.PlaylistId
GROUP BY PlayList_Id,Playlist_Name
ORDER BY Track_Count DESC
