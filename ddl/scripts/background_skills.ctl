-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:20 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'background_skills.txt'
INTO TABLE background_skills
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(background_id,
 backgrounditem_id,
 skillsindex)
