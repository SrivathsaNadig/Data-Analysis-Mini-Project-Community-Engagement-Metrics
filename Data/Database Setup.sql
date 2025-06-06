--Created Database 'DataWarehouse'
USE MASTER;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Community')
BEGIN 
	ALTER DATABASE Community SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Community;
CREATE DATABASE Community;
USE Community;
--Created Schema 'Community';
CREATE SCHEMA raw_schema;
GO
CREATE SCHEMA stable_schema;
GO
CREATE SCHEMA deploy_schema;
GO
