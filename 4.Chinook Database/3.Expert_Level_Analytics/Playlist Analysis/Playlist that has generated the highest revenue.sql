#Playlist that has generated the highest revenue
SELECT
    plt.PlaylistId AS Playlist_Id,
    pl.Name AS Playlist_Name,
    SUM(inv.Total) AS Total_Value
FROM PlaylistTrack AS plt
LEFT JOIN Track AS tr
    ON plt.TrackId = tr.TrackId
LEFT JOIN InvoiceLine AS ivl
    ON tr.TrackId=ivl.TrackId
LEFT JOIN Invoice AS inv
    ON ivl.InvoiceId=inv.InvoiceId
LEFT JOIN Playlist AS pl
    ON plt.PlaylistId=pl.PlaylistId
GROUP BY Playlist_Id,Playlist_Name
ORDER BY Total_Value DESC