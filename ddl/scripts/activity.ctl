-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:08 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'activity.txt'
INTO TABLE activity
INSERT
FIELDS TERMINATED BY ',' TRAILING NULLCOLS
(id,
 version,
 actorid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 actortype CHAR(255) OPTIONALLY ENCLOSED BY '"',
 annotation CHAR(255) OPTIONALLY ENCLOSED BY '"',
 BASEOBJECT_FILE FILLER OPTIONALLY ENCLOSED BY '"',
 baseobject LOBFILE (BASEOBJECT_FILE) TERMINATED BY EOF NULLIF BASEOBJECT_FILE='',
 baseobjecttype CHAR(255) OPTIONALLY ENCLOSED BY '"',
 location CHAR(255) OPTIONALLY ENCLOSED BY '"',
 mood CHAR(255) OPTIONALLY ENCLOSED BY '"',
 opensocialid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 originalactorid CHAR(255) OPTIONALLY ENCLOSED BY '"',
 originalactortype CHAR(255) OPTIONALLY ENCLOSED BY '"',
 postedtime TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF" OPTIONALLY ENCLOSED BY '"',
 updated TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF" OPTIONALLY ENCLOSED BY '"',
 verb CHAR(255) OPTIONALLY ENCLOSED BY '"',
 recipientparentorgid,
 streamscopeid,
 originalactivityid,
 isdestinationstreampublic OPTIONALLY ENCLOSED BY '"',
 appid,
 appsource CHAR(255) OPTIONALLY ENCLOSED BY '"',
 appname CHAR(255) OPTIONALLY ENCLOSED BY '"',
 apptype CHAR(255) OPTIONALLY ENCLOSED BY '"',
 flagged OPTIONALLY ENCLOSED BY '"',
 linksharedresourceid,
 showinstream OPTIONALLY ENCLOSED BY '"')
