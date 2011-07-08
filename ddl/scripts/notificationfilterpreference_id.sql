-- Create a sequence and trigger to implement the identity column
-- For table notificationfilterpreference for Oracle
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:39 2011

-- Create trigger statement

CREATE OR REPLACE TRIGGER swtnotificationfilterpreferenc
  BEFORE INSERT ON notificationfilterpreference
  REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
when (NEW.id is null)
BEGIN
  SELECT notificationfilterpreferenceid.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

EXIT;

