-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:44 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'person_relatedorganization.txt'
INTO TABLE person_relatedorganization
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(organizationid,
 personid)
