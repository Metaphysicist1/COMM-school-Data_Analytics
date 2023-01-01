/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [incidentid]
      ,[weaponcaliber]
      
      ,[weapontype]
INTO WEPN	 
  FROM [school_shooting].[dbo].[WEAPON] as w
  
  where w.weaponcaliber is not null 
  AND w.weaponcaliber not like '%Unknown%'
