-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:18 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'background_affiliations.txt'
INTO TABLE background_affiliations
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(background_id,
 backgrounditem_id,
 affiliationindex)