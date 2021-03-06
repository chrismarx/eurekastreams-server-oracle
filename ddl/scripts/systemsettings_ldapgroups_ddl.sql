-- DDL script for table systemsettings_ldapgroups for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:48 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE systemsettings_ldapgroups CASCADE CONSTRAINTS;


CREATE TABLE systemsettings_ldapgroups
(
   systemsettings_id NUMBER(19,0)  NOT NULL,
   element VARCHAR2(255)
);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE systemsettings_ldapgroups ADD  CONSTRAINT fk67784f28d85b27c0
FOREIGN KEY(systemsettings_id)
REFERENCES systemsettings(id);

EXIT;

