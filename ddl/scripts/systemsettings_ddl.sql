-- DDL script for table systemsettings for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:36 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE systemsettings CASCADE CONSTRAINTS;


CREATE TABLE systemsettings
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   contentexpiration NUMBER(10,0),
   contentwarningtext VARCHAR2(255),
   sitelabel CLOB,
   termsofservice CLOB,
   tospromptinterval NUMBER(10,0),
   sendwelcomeemails NUMBER(1,0) DEFAULT 0  NOT NULL,
   pluginwarning CLOB,
   supportemailaddress VARCHAR2(50),
   supportphonenumber VARCHAR2(50),
   supportstreamgroupshortname VARCHAR2(255)
);


-- Primary key

ALTER TABLE systemsettings ADD  CONSTRAINT systemsettings_pkey
PRIMARY KEY(id);

EXIT;
