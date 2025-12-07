/*
===================================================================
              DDL Scripts: Create Raw Tables
===================================================================
Project: SQL Server Ingestion Pipeline
Scripts: 2.1_Create_Raw_Tables.sql
Author: Abdul Muqtadeer Baag
Created On: 07/12/2025

Purpose:
    Create raw tables to store incoming CSV data (Exact Copy).

⚠ Warning!
    This table holds raw unmodified source data.
    Do not apply any transformations here.

---------------------------------------------------------------------
*/

-- Use the Database:
	USE IngestionDB;
	GO

----------------------------------------------------------------------
-- CRM: Customer Relationship Management.
-- i. Drop Table if it already exists:
IF OBJECT_ID ('raw.crm_cust_info','U') IS NOT NULL
	DROP TABLE raw.crm_cust_info;
GO

-- Create the CRM table_1 'Cust_Info':
	CREATE TABLE raw.crm_cust_info
	(
		Cust_Id					INT,
		Cust_Key				VARCHAR(30),
		Cust_Firstname			VARCHAR(50),
		Cust_Lastname			VARCHAR(50),
		Cust_Marital_Status		VARCHAR(20),
		Cust_Gndr				VARCHAR(15),
		Cust_Create_Date		DATE
	);
	GO

-- See the table:
SELECT * FROM raw.crm_cust_info;
GO

----------------------------------------------------------------------
-- ii. Drop Table if it already exists:
IF OBJECT_ID('raw.crm_prod_info', 'U') IS NOT NULL
    DROP TABLE raw.crm_prod_info;
GO

-- Create the CRM table_2 'Prod_Info':
	CREATE TABLE raw.crm_prod_info
	(
		Prod_Id				INT,
		Prod_Key			VARCHAR(30),
		Prod_Name			VARCHAR(50),
		Prod_Cost			INT,
		Prod_Line			VARCHAR(20),
		Prod_Start_Date		DATETIME,
		Prod_End_Date		DATETIME
	);
	GO

-- See the table:
SELECT * FROM raw.crm_prod_info;
GO

----------------------------------------------------------------------
-- iii. Drop Table if it already exists:
IF OBJECT_ID('raw.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE raw.crm_sales_details;
GO

-- Create the CRM table_3 'Sales_Details':
	CREATE TABLE raw.crm_sales_details
	(
		Sls_Ord_Num		VARCHAR(20),
		Sls_Prod_Key	VARCHAR(30),
		Sls_Cust_Id		INT,
		Sls_Order_Date	INT,
		Sls_Ship_Date	INT,
		Sls_Due_Date	INT,
		Sls_Sales		INT,
		Sls_Quantity	INT,
		Sls_Price		INT
	);
	GO

-- See the table:
SELECT * FROM raw.crm_sales_details;
GO

----------------------------------------------------------------------
--ERP: Enterprise Resource Planning.
-- i. Drop Table if it already exists:
IF OBJECT_ID('raw.erp_loc_mst', 'U') IS NOT NULL
    DROP TABLE raw.erp_loc_mst;
GO

-- Create the ERP table_1 'Loc_Mst':
	CREATE TABLE raw.erp_loc_mst
	(
		C_Id	 VARCHAR(30),
		Country  VARCHAR(20)
	);
	GO

-- See the table:
SELECT * FROM raw.erp_loc_mst;
GO

----------------------------------------------------------------------
-- ii. Drop Table if it already exists:
IF OBJECT_ID('raw.erp_cust_mst', 'U') IS NOT NULL
    DROP TABLE raw.erp_cust_mst;
GO

-- Create the ERP table_2 'Cust_Mst':
	CREATE TABLE raw.erp_cust_mst
	(
		C_Id    VARCHAR(30),
		DoB		DATE,
		Gender  VARCHAR(15)
	);
	GO

-- See the table:
SELECT * FROM raw.erp_cust_mst;
GO

----------------------------------------------------------------------------
-- iii. Drop Table if it already exists:
IF OBJECT_ID('raw.erp_prod_catg', 'U') IS NOT NULL
    DROP TABLE raw.erp_prod_catg;
GO

-- Create the ERP table_3 'Prod_Catg':
	CREATE TABLE raw.erp_prod_catg
	(
		Id           VARCHAR(30),
		Catg         VARCHAR(30),
		Sub_Catg     VARCHAR(30),
		Maintenance  VARCHAR(10)
	);
	GO

-- See the table:
SELECT * FROM raw.erp_prod_catg;
GO
