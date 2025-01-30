-- Top 10 Clubs by Average Player Rating(FIFA23)

SELECT TOP 10 Club, AVG(Overall) AS Avg_Rating, COUNT(ID) AS Player_Count
FROM FIFA23
WHERE Club IS NOT NULL
GROUP BY Club
ORDER BY Avg_Rating DESC;

-- Player Distribution by Age

SELECT Age, COUNT(ID) AS Player_Count
FROM FIFA20
GROUP BY Age
ORDER BY Age;

-- Nationalities with the Most Players

SELECT TOP 10 Nationality, COUNT(ID) AS Player_Count
FROM FIFA22
GROUP BY Nationality
ORDER BY Player_Count DESC;

--Top 10 Players with the Highest Potential

SELECT TOP 10 Name, Age, Club, Nationality, Potential, Overall
FROM FIFA18
ORDER BY Potential DESC;

--  Tallest vs. Shortest Players and Their Ratings

SELECT TOP 10 Name, Club, Overall, CAST(REPLACE(Height, 'cm', '') AS INT) AS Height
FROM FIFA22
WHERE Height IS NOT NULL
ORDER BY Height DESC;


