--SAMPLE QUERIES for nba_stats


-- Top 10 Scorers in the League by PPG
SELECT Player, Team, PTS
FROM nba_stats
ORDER BY PTS DESC
LIMIT 10;

-- Players with the Highest 3-Point % (min 5 3PA per game)
SELECT Player, Team, `3PA`, `3P_percent`
FROM nba_stats
WHERE `3PA` >= 5
ORDER BY `3P_percent` DESC
LIMIT 10;

-- Top 10 Players by APG
SELECT Player, Team, AST
FROM nba_stats
ORDER BY AST DESC
LIMIT 10;

-- Most "Stocks" (Steals + Blocks) Per Game
SELECT Player, STL, BLK, 
       ROUND(STL + BLK, 1) AS Stocks
FROM nba_stats
ORDER BY Stocks DESC
LIMIT 10;

-- Top 10 Players by Combined Points + Rebounds + Assists (PRA)
SELECT Player, Team, 
       PTS, TRB, AST,
       ROUND(PTS + TRB + AST, 1) AS PRA
FROM nba_stats
ORDER BY PRA DESC
LIMIT 10;

-- Points Per 36 Minutes (Min 20MPG)
SELECT Player, MP, PTS,
       ROUND((PTS / MP) * 36, 1) AS pts_per_36
FROM nba_stats
WHERE MP > 20
ORDER BY pts_per_36 DESC
LIMIT 10;

-- Points Per Game by Players Age 33 and Older
SELECT Player, Age, PTS
FROM nba_stats
WHERE Age >= 33
ORDER BY PTS DESC
LIMIT 10;

--Players with the highest FT% (Min 3 FTA per game)--
SELECT Player, FT_percent, FTA
FROM nba_stats
WHERE FTA >= 3
ORDER BY FT_percent DESC
LIMIT 10;
