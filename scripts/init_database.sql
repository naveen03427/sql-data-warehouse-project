*/
======================
--Create Database and Schemas
=========================
Script Purpose: THis script create a new database names 'DataWareHouse after checking if it already exists if the databse exists , it is dropped and recreated. Additionally the xritps sets up three schemas within the database bronze, silver and gold'.
warning: Running this script will  drop the enitre 'DatWarehouse database it it exists All data in the databse will be permanently deleted. proceed with caution and enusre oyu have proper backups befints running this scripts.'
*/
USE master;
GO
--DROP and reacreate the 'Datawarehouse' databaseIF EXISTS (SELECT 1 FROM sys.database WHERE name='DataWarehouse')
BEGIN	
	ALTER  DATABASE  DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO 
--Creat the 'DateWarehouse' databse.
CREATE  DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
--Create Schemas 
CREATE  SCHEMA bronze;
GO
CREATE  SCHEMA silver;
GO
CREATE  SCHEMA gold;
