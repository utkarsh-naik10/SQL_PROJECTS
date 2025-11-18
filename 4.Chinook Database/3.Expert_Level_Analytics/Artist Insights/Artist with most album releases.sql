#Artist with most album releases


SELECT
    alb.ArtistId AS Artist_Id,
    art.Name AS Artist_Name,
    Count(*) AS Total_Album
FROM Album AS alb
JOIN Artist AS art
    ON alb.ArtistId=art.ArtistId
GROUP BY Artist_Id,Artist_Name
ORDER BY Total_Album DESC
