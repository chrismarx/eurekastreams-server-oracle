-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:15 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'theme.txt'
INTO TABLE theme
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 bannerid CHAR(255),
 created TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF",
 cssfile CHAR(255),
 dategenerated TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF",
 description,
 name CHAR(255),
 themeurl CHAR(255),
 uuid CHAR(255),
 themecategoryid,
 ownerid,
 authoremail CHAR(255),
 authorname CHAR(255),
 numberofusers)
