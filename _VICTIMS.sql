/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [incidentid]
      ,[race]
      ,[injury]
      ,[gender]
      ,[schoolaffiliation]
      ,[age]
	  INTO VIC_FLTRD
  FROM [school_shooting].[dbo].[VICTIM] AS VIC
WHERE 1=1
AND VIC.race IS NOT NULL
AND VIC.gender NOT LIKE 'UNKNOWN'
