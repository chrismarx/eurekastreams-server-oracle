-- Create a sequence and trigger to implement the identity column
-- For table persistentlogin for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:43 2011

-- Create trigger statement

CREATE OR REPLACE TRIGGER swt_persistentlogin_id
  BEFORE INSERT ON persistentlogin
  REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
when (NEW.id is null)
BEGIN
  SELECT persistentlogin_id_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

EXIT;

