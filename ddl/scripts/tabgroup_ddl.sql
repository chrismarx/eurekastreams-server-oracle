-- DDL script for table tabgroup for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:11 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE tabgroup CASCADE CONSTRAINTS;


CREATE TABLE tabgroup
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL
);


-- Primary key

ALTER TABLE tabgroup ADD  CONSTRAINT tabgroup_pkey
PRIMARY KEY(id);

EXIT;
