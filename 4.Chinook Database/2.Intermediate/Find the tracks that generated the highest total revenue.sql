/*
Find the track that generated the highest total revenue.
*/

SELECT
    DENSE_RANK() OVER(ORDER BY SUM(UnitPrice) DESC) AS Rank_,
    Track.Name AS Track_Name,
    SUM(UnitPrice) AS Total_Value    
FROM Track
GROUP BY Track_Name

