-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:30 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'follower.txt'
INTO TABLE follower
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(followerid,
 followingid)