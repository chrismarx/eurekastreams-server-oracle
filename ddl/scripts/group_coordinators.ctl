-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:32 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'group_coordinators.txt'
INTO TABLE group_coordinators
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(domaingroup_id,
 coordinators_id)