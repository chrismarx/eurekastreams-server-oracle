@echo off
echo.
echo Importing table systemsettings_ldapgroups to Oracle
rem Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
rem Timestamp: Sun May 01 19:40:48 2011

rem --------------------------------------------------------------
rem How to use this command file:

rem To create table, constraints, import data and create indexes run:
rem 	systemsettings_ldapgroups.bat all

rem To create table and its constraints run:
rem 	systemsettings_ldapgroups.bat table

rem To import data into the table run:
rem 	systemsettings_ldapgroups.bat import

rem To create indexes for the table run:
rem 	systemsettings_ldapgroups.bat idx

rem To execute all DDL statements for the table run:
rem 	systemsettings_ldapgroups.bat ddl

rem --------------------------------------------------------------
rem Define a task to perform

if "%1"=="" goto create_table
if %1==all goto create_table
if %1==table goto create_table
if %1==import goto import_data
if %1==idx goto create_idx
if %1==ddl goto create_table
goto end

rem --------------------------------------------------------------
:create_table
echo Creating table and its constraints using the Oracle SQL*Plus utility

sqlplus eureka_streams/YourekaTent!@SW2_GUILLEMOT @systemsettings_ldapgroups_ddl.sql

if "%1"=="" goto import_data
if %1==all goto import_data
if %1==ddl goto create_idx
goto end

rem --------------------------------------------------------------
:import_data
echo Importing data using the Oracle SQL*Loader utility

sqlldr userid=eureka_streams/YourekaTent!@SW2_GUILLEMOT control=systemsettings_ldapgroups.ctl log=systemsettings_ldapgroups.log rows=1000 readsize=553000 bindsize=553000



if "%1"=="" goto create_idx
if %1==all goto create_idx
goto end

rem --------------------------------------------------------------
:create_idx


rem --------------------------------------------------------------
:end

