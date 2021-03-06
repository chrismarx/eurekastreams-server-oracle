-- DDL script for table gadget for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:31 2011

-- Create table statement

SET DEFINE OFF


DROP TABLE gadget CASCADE CONSTRAINTS;


CREATE TABLE gadget
(
   id NUMBER(19,0)  NOT NULL,
   version NUMBER(19,0)  NOT NULL,
   datedeleted TIMESTAMP(6),
   deleted NUMBER(1,0)  NOT NULL,
   minimized NUMBER(1,0)  NOT NULL,
   zoneindex NUMBER(10,0)  NOT NULL,
   zonenumber NUMBER(10,0)  NOT NULL,
   gadgetdefinitionid NUMBER(19,0)  NOT NULL,
   ownerid NUMBER(19,0),
   tabtemplateid NUMBER(19,0),
   gadgetuserpref CLOB,
   maximized NUMBER(1,0) DEFAULT 0
);


-- Primary key

ALTER TABLE gadget ADD  CONSTRAINT gadget_pkey
PRIMARY KEY(id);


ALTER TABLE gadget ADD  CONSTRAINT gadget_gadgetdefinitionid_fkey
FOREIGN KEY(gadgetdefinitionid)
REFERENCES gadgetdefinition(id)   ON DELETE CASCADE;


ALTER TABLE gadget ADD  CONSTRAINT gadget_ownerid_fkey
FOREIGN KEY(ownerid)
REFERENCES person(id)   ON DELETE CASCADE;


ALTER TABLE gadget ADD  CONSTRAINT gadget_tabtemplateid_fkey
FOREIGN KEY(tabtemplateid)
REFERENCES tabtemplate(id)   ON DELETE CASCADE;

EXIT;

