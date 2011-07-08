-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:11 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'gadgetdefinition.txt'
INTO TABLE gadgetdefinition
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 created TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF",
 url CHAR(255),
 uuid CHAR(255),
 gadgetcategoryid,
 ownerid,
 showingallery,
 numberofusers,
 gadgettitle CHAR(255))
