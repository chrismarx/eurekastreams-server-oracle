-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:23 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'db_version.txt'
INTO TABLE db_version
INSERT
FIELDS TERMINATED BY ',' TRAILING NULLCOLS
(major,
 minor,
 patch OPTIONALLY ENCLOSED BY '"',
 scriptname OPTIONALLY ENCLOSED BY '"',
 DESCRIPTION_FILE FILLER OPTIONALLY ENCLOSED BY '"',
 description LOBFILE (DESCRIPTION_FILE) TERMINATED BY EOF,
 "timestamp" TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF" OPTIONALLY ENCLOSED BY '"')
