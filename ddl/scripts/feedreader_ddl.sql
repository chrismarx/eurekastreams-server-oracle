-- DDL script for table feedreader for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:28 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE feedreader CASCADE CONSTRAINTS;


CREATE TABLE feedreader
(
   id NUMBER(19,0)  NOT NULL,
   dateadded TIMESTAMP(6)  NOT NULL,
   moduleid VARCHAR2(255),
   opensocialid VARCHAR2(255),
   url VARCHAR2(255),
   feedtitle VARCHAR2(255)  NOT NULL
);


-- Primary key

ALTER TABLE feedreader ADD  CONSTRAINT feedreader_pkey
PRIMARY KEY(id);


ALTER TABLE feedreader ADD CONSTRAINT feedreader_moduleid_key UNIQUE(moduleid,opensocialid);

EXIT;

