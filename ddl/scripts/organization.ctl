-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:09 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'organization.txt'
INTO TABLE organization
INSERT
FIELDS TERMINATED BY ',' TRAILING NULLCOLS
(id,
 version,
 avatarid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 avatarcropsize,
 avatarcropx,
 avatarcropy,
 bannerid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 descendantemployeecount,
 descendantgroupcount,
 childorganizationcount,
 employeefollowercount,
 description CHAR(500) OPTIONALLY ENCLOSED BY '"',
 name OPTIONALLY ENCLOSED BY '"',
 OVERVIEW_FILE FILLER OPTIONALLY ENCLOSED BY '"',
 overview LOBFILE (OVERVIEW_FILE) TERMINATED BY EOF NULLIF OVERVIEW_FILE='',
 shortname OPTIONALLY ENCLOSED BY '"',
 url CHAR(255) OPTIONALLY ENCLOSED BY '"',
 parentorganizationid,
 themeid,
 updatescount,
 alluserscancreategroups OPTIONALLY ENCLOSED BY '"',
 streamscopeid)
