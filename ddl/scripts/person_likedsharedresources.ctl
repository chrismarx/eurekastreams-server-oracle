-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:44 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'person_likedsharedresources.txt'
INTO TABLE person_likedsharedresources
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(personid,
 sharedresourceid)
