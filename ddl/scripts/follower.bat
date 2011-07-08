@echo off
echo.
echo Importing table follower to Oracle
rem Generated by (c) Ispirer SQLWays 4.0 Build 374 EVALUATION VERSION
rem Timestamp: Sun May 01 19:40:30 2011

rem --------------------------------------------------------------
rem How to use this command file:

rem To create table, constraints, import data and create indexes run:
rem 	follower.bat all

rem To create table and its constraints run:
rem 	follower.bat table

rem To import data into the table run:
rem 	follower.bat import

rem To create indexes for the table run:
rem 	follower.bat idx

rem To execute all DDL statements for the table run:
rem 	follower.bat ddl

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

sqlplus eureka_streams/YourekaTent!@SW2_GUILLEMOT @follower_ddl.sql

if "%1"=="" goto import_data
if %1==all goto import_data
if %1==ddl goto create_idx
goto end

rem --------------------------------------------------------------
:import_data
echo Importing data using the Oracle SQL*Loader utility

sqlldr userid=eureka_streams/YourekaTent!@SW2_GUILLEMOT control=follower.ctl log=follower.log rows=1000 readsize=83000 bindsize=83000



if "%1"=="" goto create_idx
if %1==all goto create_idx
goto end

rem --------------------------------------------------------------
:create_idx


rem --------------------------------------------------------------
:end

