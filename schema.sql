-- Use or create the database
CREATE DATABASE IF NOT EXISTS nba_db;
USE nba_db;

-- Drop the table if it already exists
DROP TABLE IF EXISTS nba_stats;

-- Create the nba_stats table
CREATE TABLE nba_stats (
    Rk INT,
    Player VARCHAR(100),
    Age INT,
    Team VARCHAR(10),
    Pos VARCHAR(5),
    G INT,
    GS INT,
    MP FLOAT,
    FG FLOAT,
    FGA FLOAT,
    FG_percent FLOAT,
    `3P` FLOAT,
    `3PA` FLOAT,
    `3P_percent` FLOAT,
    `2P` FLOAT,
    `2PA` FLOAT,
    `2P_percent` FLOAT,
    eFG_percent FLOAT,
    FT FLOAT,
    FTA FLOAT,
    FT_percent FLOAT,
    ORB FLOAT,
    DRB FLOAT,
    TRB FLOAT,
    AST FLOAT,
    STL FLOAT,
    BLK FLOAT,
    TOV FLOAT,
    PF FLOAT,
    PTS FLOAT
);
