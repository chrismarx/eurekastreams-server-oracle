-- DDL script for table person_relatedorganization for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:44 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE person_relatedorganization CASCADE CONSTRAINTS;


CREATE TABLE person_relatedorganization
(
   organizationid NUMBER(19,0)  NOT NULL,
   personid NUMBER(19,0)  NOT NULL
);


-- Primary key

ALTER TABLE person_relatedorganization ADD  CONSTRAINT personrelatedorganizationpkey
PRIMARY KEY(organizationid,personid);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE person_relatedorganization ADD  CONSTRAINT fk37f185145a0afee8
FOREIGN KEY(organizationid)
REFERENCES organization(id);


--SQLWAYS_EVAL# was removed since such behaviour is default while RESTRICT keyword(s) not supported
ALTER TABLE person_relatedorganization ADD  CONSTRAINT fk37f18514d5843ec
FOREIGN KEY(personid)
REFERENCES person(id);


--Foreign key is commented since it is identical to the previous foreign key
--ALTER TABLE public.person_relatedorganization ADD  CONSTRAINT fk37f18514351eb3ab
-- FOREIGN KEY (personid)
--REFERENCES public.person (id)   
---- ON DELETE RESTRICT was removed since such behaviour is default while RESTRICT keyword(s) not supported
--  ON UPDATE RESTRICT


ALTER TABLE person_relatedorganization ADD CONSTRAINT personrelatedorganizationperso UNIQUE(personid,organizationid);

EXIT;

