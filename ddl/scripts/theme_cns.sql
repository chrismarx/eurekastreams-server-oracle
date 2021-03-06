-- DDL script for constraints for table theme for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:15 2011

SET DEFINE OFF

--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE organization ADD  CONSTRAINT fk50104153b79fc87
FOREIGN KEY(themeid)
REFERENCES theme(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE person ADD  CONSTRAINT fk8e488775b79ce026
FOREIGN KEY(themeid)
REFERENCES theme(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE person ADD  CONSTRAINT fk8e4887757656ef13
FOREIGN KEY(personid)
REFERENCES theme(id);

EXIT;

