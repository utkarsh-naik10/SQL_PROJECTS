/*
Count all tracks longer than 4 minutes (240,000 ms).
*/

SELECT
    COUNT(*) As Count_Of_Songs
FROM Track
WHERE Milliseconds > 240000