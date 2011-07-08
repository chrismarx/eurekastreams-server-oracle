-- DDL script for table background_honors for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:19 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE background_honors CASCADE CONSTRAINTS;


CREATE TABLE background_honors
(
   background_id NUMBER(19,0)  NOT NULL,
   backgrounditem_id NUMBER(19,0)  NOT NULL,
   honorsindex NUMBER(10,0)  NOT NULL
);


-- Primary key

ALTER TABLE background_honors ADD  CONSTRAINT background_honors_pkey
PRIMARY KEY(background_id,honorsindex);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE background_honors ADD  CONSTRAINT fk7025257a7847b0e1
FOREIGN KEY(background_id)
REFERENCES background(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE background_honors ADD  CONSTRAINT fk7025257a2a703d60
FOREIGN KEY(backgrounditem_id)
REFERENCES backgrounditem(id);


ALTER TABLE background_honors ADD CONSTRAINT backgroundhonorsbackgrounditem UNIQUE(backgrounditem_id);

EXIT;

