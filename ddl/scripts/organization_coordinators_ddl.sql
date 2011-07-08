-- DDL script for table organization_coordinators for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:42 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE organization_coordinators CASCADE CONSTRAINTS;


CREATE TABLE organization_coordinators
(
   organization_id NUMBER(19,0)  NOT NULL,
   coordinators_id NUMBER(19,0)  NOT NULL
);


-- Primary key

ALTER TABLE organization_coordinators ADD  CONSTRAINT organization_coordinators_pkey
PRIMARY KEY(organization_id,coordinators_id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE organization_coordinators ADD  CONSTRAINT fke448a6cfe05d1901
FOREIGN KEY(organization_id)
REFERENCES organization(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE organization_coordinators ADD  CONSTRAINT fke448a6cfa345f853
FOREIGN KEY(coordinators_id)
REFERENCES person(id);

EXIT;

