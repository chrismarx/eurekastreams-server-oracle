-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:07 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'galleryitemcategory.txt'
INTO TABLE galleryitemcategory
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 galleryitemtype CHAR(255),
 name)
