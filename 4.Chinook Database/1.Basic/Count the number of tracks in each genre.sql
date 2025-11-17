/*
Count the number of tracks in each genre.
*/

SELECT
    Genre.Name,
    count(Genre.GenreId) AS Total_Count
FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
GROUP BY Genre.Name
ORDER BY Total_Count DESC