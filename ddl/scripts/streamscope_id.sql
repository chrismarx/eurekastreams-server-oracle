-- Create a sequence and trigger to implement the identity column
-- For table streamscope for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:04 2011

-- Create trigger statement

CREATE OR REPLACE TRIGGER swt_streamscope_id
  BEFORE INSERT ON streamscope
  REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
when (NEW.id is null)
BEGIN
  SELECT streamscope_id_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

EXIT;
