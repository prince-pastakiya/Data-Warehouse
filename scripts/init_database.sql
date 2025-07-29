/*

=====================================================================
Create Database and Schemas
=====================================================================
Script Purpose:
  This Script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreate. Additionaly, the script sets up three schemas
  within the database: 'Bronze', "Silver', and 'Gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' Database if it exists.
  All data in the Database will be permanently deleted. Proceed with caution.
  And ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and Recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
      ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
