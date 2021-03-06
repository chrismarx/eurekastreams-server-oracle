-- DDL script for table applicationalertnotification for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:17 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE applalertnotification CASCADE CONSTRAINTS;


CREATE TABLE applalertnotification
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   auxiliaryname VARCHAR2(255),
   activityid NUMBER(19,0),
   actoraccountid VARCHAR2(255)  NOT NULL,
   actorname VARCHAR2(255)  NOT NULL,
   notificationtype VARCHAR2(255)  NOT NULL,
   recipientid NUMBER(19,0)  NOT NULL,
   activitytype VARCHAR2(255),
   isread NUMBER(1,0) DEFAULT 0  NOT NULL,
   destinationname VARCHAR2(255),
   destinationuniqueid VARCHAR2(255),
   notificationdate TIMESTAMP(6) DEFAULT SYSTIMESTAMP  NOT NULL,
   destinationtype VARCHAR2(255),
   auxiliarytype VARCHAR2(255),
   auxiliaryuniqueid VARCHAR2(255)
);


-- Primary key

ALTER TABLE applalertnotification ADD  CONSTRAINT applalertnotificationpk
PRIMARY KEY(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE applalertnotification ADD  CONSTRAINT fk1a60d517880d76c6
FOREIGN KEY(recipientid)
REFERENCES person(id);

EXIT;

