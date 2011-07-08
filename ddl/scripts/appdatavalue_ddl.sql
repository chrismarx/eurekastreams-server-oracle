-- DDL script for table appdatavalue for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:16 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE appdatavalue CASCADE CONSTRAINTS;


CREATE TABLE appdatavalue
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   name VARCHAR2(255),
   value CLOB,
   appdataid NUMBER(19,0)
);


-- Primary key

ALTER TABLE appdatavalue ADD  CONSTRAINT appdatavalue_pkey
PRIMARY KEY(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE appdatavalue ADD  CONSTRAINT fk598cbae6aa5070ab
FOREIGN KEY(appdataid)
REFERENCES appdata(id);

EXIT;

