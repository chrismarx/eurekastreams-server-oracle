-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:39 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'notificationfilterpreference.txt'
INTO TABLE notificationfilterpreference
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 notificationcategory CHAR(255),
 notifiertype CHAR(255),
 personid)
