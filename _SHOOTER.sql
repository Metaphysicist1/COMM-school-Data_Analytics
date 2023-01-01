/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [incidentid]
      ,[age]
      ,[gender]
      ,[race]
      ,[schoolaffiliation]
      ,[chargesfiled]
INTO _SHT
  FROM [school_shooting].[dbo].[SHOOTER] as s
  where criminalhistory is	null
  and verdict is not null

