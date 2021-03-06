-- DDL script for table streamhashtag for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:47 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE streamhashtag CASCADE CONSTRAINTS;


CREATE TABLE streamhashtag
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   activitydate TIMESTAMP(6),
   streamentityuniquekey VARCHAR2(255),
   streamscopetype VARCHAR2(255),
   activityid NUMBER(19,0),
   hashtagid NUMBER(19,0)
);


-- Primary key

ALTER TABLE streamhashtag ADD  CONSTRAINT streamhashtag_pkey
PRIMARY KEY(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE streamhashtag ADD  CONSTRAINT fk75654bec3e94a88a
FOREIGN KEY(activityid)
REFERENCES activity(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE streamhashtag ADD  CONSTRAINT fk75654beca9c5a662
FOREIGN KEY(hashtagid)
REFERENCES hashtag(id);


ALTER TABLE streamhashtag ADD CONSTRAINT streamhashtagstreamentityuniqu UNIQUE(streamentityuniquekey,activityid,hashtagid);

EXIT;

