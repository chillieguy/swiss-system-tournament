-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--  Drop database

DROP database tournament;

-- DROP Tables
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches;

-- DROP Views
DROP VIEW IF EXISTS standings;

-- Create database and attach to tournament database
CREATE DATABASE tournament;
\c tournament;

--  TABLES --

-- Players Table
CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
);

-- Matches Table
CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    winner int references players(id),
	loser int references players(id)
);

-- VIEWS --

CREATE VIEW standings AS
    SELECT players.id, players.name, 
    (SELECT count(matches.winner) FROM matches WHERE players.id = matches.winner) AS win_count, 
    (SELECT count(matches.id) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) 
    AS total_count 
    FROM players 
    ORDER BY win_count DESC, total_count DESC;