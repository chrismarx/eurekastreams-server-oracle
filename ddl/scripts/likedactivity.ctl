-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:35 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'likedactivity.txt'
INTO TABLE likedactivity
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(activityid,
 personid)
