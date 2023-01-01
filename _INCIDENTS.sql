/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
	SUM(INC.Shots_Fired) AS 'Total Shots',
		[Incident_ID]
      ,[Date]

      ,[School]
      ,[City]
      ,[State]
      ,[School_Level]
      ,[Location]
      ,[Location_Type]
      ,[During_School]
      ,[Time_Period]
      ,[First_Shot]
      
      
      ,[Targets]
      ,[Accomplice]
      ,[Hostages]
      
      ,[Shots_Fired]
	  

INTO INCIDENT_FILTRED
  FROM [school_shooting].[dbo].[INCIDENT] AS INC
  WHERE 1=1 
  AND INC.Shots_Fired IS NOT NULL
  AND DATEDIFF(YEAR,INC.Date,GETDATE())<40
  GROUP BY INC.Incident_ID, INC.Date,INC.Shots_Fired, INC.[School],INC.City,INC.State,INC.School_Level,INC.Location,INC.Location_Type,INC.During_School,INC.Time_Period, INC.First_Shot,INC.Targets,INC.Accomplice,INC.Hostages
  



