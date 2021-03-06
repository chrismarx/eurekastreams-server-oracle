-- Control file for Oracle SQL Loader
-- Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
-- Timestamp: Sun May 01 19:40:39 2011

OPTIONS(direct=false)
LOAD DATA
INFILE 'oauthconsumer.txt'
INTO TABLE oauthconsumer
INSERT
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' TRAILING NULLCOLS
(id,
 version,
 callbackurl CHAR(255),
 consumerkey CHAR(255),
 consumersecret CHAR(255),
 gadgeturl CHAR(255),
 serviceprovidername CHAR(255),
 signaturemethod CHAR(255),
 title CHAR(255))
