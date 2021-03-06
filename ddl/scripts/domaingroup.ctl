-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:23 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'domaingroup.txt'
INTO TABLE domaingroup
INSERT
FIELDS TERMINATED BY ',' TRAILING NULLCOLS
(id,
 version,
 avatarcropsize,
 avatarcropx,
 avatarcropy,
 avatarid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 bannerid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 dateadded TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF" OPTIONALLY ENCLOSED BY '"',
 followerscount,
 description OPTIONALLY ENCLOSED BY '"',
 name OPTIONALLY ENCLOSED BY '"',
 publicgroup OPTIONALLY ENCLOSED BY '"',
 shortname OPTIONALLY ENCLOSED BY '"',
 url CHAR(255) OPTIONALLY ENCLOSED BY '"',
 parentorganizationid,
 updatescount,
 themeid,
 OVERVIEW_FILE FILLER OPTIONALLY ENCLOSED BY '"',
 overview LOBFILE (OVERVIEW_FILE) TERMINATED BY EOF NULLIF OVERVIEW_FILE='',
 ispending OPTIONALLY ENCLOSED BY '"',
 createdbyid,
 streamscopeid,
 commentable OPTIONALLY ENCLOSED BY '"',
 streampostable OPTIONALLY ENCLOSED BY '"',
 suppresspostnotiftomember OPTIONALLY ENCLOSED BY '"',
 suppresspostnotiftocoordinator OPTIONALLY ENCLOSED BY '"')
