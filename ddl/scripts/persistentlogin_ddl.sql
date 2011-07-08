-- DDL script for table persistentlogin for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:43 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE persistentlogin CASCADE CONSTRAINTS;


CREATE TABLE persistentlogin
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   accountid VARCHAR2(255)  NOT NULL,
   tokenexpirationdate NUMBER(19,0)  NOT NULL,
   tokenvalue VARCHAR2(255)  NOT NULL
);


-- Primary key

ALTER TABLE persistentlogin ADD  CONSTRAINT persistentlogin_pkey
PRIMARY KEY(id);


ALTER TABLE persistentlogin ADD CONSTRAINT persistentlogin_accountid_key UNIQUE(accountid);


ALTER TABLE persistentlogin ADD CONSTRAINT persistentlogin_tokenvalue_key UNIQUE(tokenvalue);

EXIT;

