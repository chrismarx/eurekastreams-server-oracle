-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:33 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'groupmembershiprequests.txt'
INTO TABLE groupmembershiprequests
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(groupid,
 personid)
