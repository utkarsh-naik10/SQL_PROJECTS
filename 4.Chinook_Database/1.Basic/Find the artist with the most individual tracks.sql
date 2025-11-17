/*
Find the artist with the most individual tracks
*/

SELECT
    Artist.Name AS Artist_Name,
    COUNT(Track.TrackId) AS Total_Track
FROM Track
JOIN Album ON Track.AlbumId=Track.AlbumId
JOIN Artist ON Album.ArtistId=Artist.ArtistId 
GROUP BY Artist.Name
ORDER BY Total_Track DESC