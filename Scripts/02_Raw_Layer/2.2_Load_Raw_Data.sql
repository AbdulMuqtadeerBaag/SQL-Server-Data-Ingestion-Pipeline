/*
==================================================================================
                   Stored Procedure: Load Raw Data (Source → Raw)
==================================================================================

Project     : SQL Server Ingestion Pipeline
Script      : 2.2_Load_Raw_Data.sql
Author      : Abdul Muqtadeer Baag
Created On  : 07/12/2025

Purpose:
   Load CSV/source files into the raw schema (store as-is, landing zone).

Notes:
   - This procedure Truncates and Reloads raw tables.
   - Uses the 'BULK INSERT' Loads data from CSV files into raw tables.
   - Do not apply transformations here; keep raw data unchanged.

==================================================================================
*/
