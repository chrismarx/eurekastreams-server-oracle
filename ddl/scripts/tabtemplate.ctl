-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:30 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'tabtemplate.txt'
INTO TABLE tabtemplate
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 datedeleted TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF",
 deleted,
 tablayout CHAR(255),
 tabname,
 type CHAR(255))
