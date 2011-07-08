-- DDL script for table usagemetric for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:49 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE usagemetric CASCADE CONSTRAINTS;


CREATE TABLE usagemetric
(
   id NUMBER(19,0)  NOT NULL,
   actorpersonid NUMBER(19,0)  NOT NULL,
   created TIMESTAMP(6)  NOT NULL,
   ispageview NUMBER(1,0)  NOT NULL,
   isstreamview NUMBER(1,0)  NOT NULL
);


-- Primary key

ALTER TABLE usagemetric ADD  CONSTRAINT usagemetric_pkey
PRIMARY KEY(id);

EXIT;

