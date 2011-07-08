-- DDL script for table activity for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:08 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE activity CASCADE CONSTRAINTS;


CREATE TABLE activity
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   actorid VARCHAR2(255)  NOT NULL,
   actortype VARCHAR2(255)  NOT NULL,
   annotation VARCHAR2(255),
   baseobject BLOB,
   baseobjecttype VARCHAR2(255)  NOT NULL,
   location VARCHAR2(255),
   mood VARCHAR2(255),
   opensocialid VARCHAR2(255)  NOT NULL,
   originalactorid VARCHAR2(255),
   originalactortype VARCHAR2(255),
   postedtime TIMESTAMP(6)  NOT NULL,
   updated TIMESTAMP(6)  NOT NULL,
   verb VARCHAR2(255)  NOT NULL,
   recipientparentorgid NUMBER(19,0)  NOT NULL,
   streamscopeid NUMBER(19,0)  NOT NULL,
   originalactivityid NUMBER(19,0),
   isdestinationstreampublic NUMBER(1,0)  NOT NULL,
   appid NUMBER(19,0),
   appsource VARCHAR2(255),
   appname VARCHAR2(255),
   apptype VARCHAR2(255),
   flagged NUMBER(1,0) DEFAULT 0  NOT NULL,
   linksharedresourceid NUMBER(19,0),
   showinstream NUMBER(1,0) DEFAULT 1  NOT NULL
);


-- Primary key

ALTER TABLE activity ADD  CONSTRAINT activity_pkey
PRIMARY KEY(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE activity ADD  CONSTRAINT fka126572f442ebfac
FOREIGN KEY(linksharedresourceid)
REFERENCES sharedresource(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE activity ADD  CONSTRAINT fka126572fa5c6101b
FOREIGN KEY(streamscopeid)
REFERENCES streamscope(id);

EXIT;
