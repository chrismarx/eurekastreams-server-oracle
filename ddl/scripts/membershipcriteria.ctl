-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:37 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'membershipcriteria.txt'
INTO TABLE membershipcriteria
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 criteria CHAR(255),
 systemsettingsid)
