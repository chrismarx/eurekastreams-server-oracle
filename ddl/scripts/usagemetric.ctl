-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:49 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'usagemetric.txt'
INTO TABLE usagemetric
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 actorpersonid,
 created TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF",
 ispageview,
 isstreamview)