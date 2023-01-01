SELECT * FROM dbo.INCIDENT as inc
inner join
dbo.SHOOTER as shot
on inc.[Incident_ID]=shot.[incidentid]
inner join 
dbo.VICTIM as vic
on vic.[incidentid]=shot.[incidentid]
inner join
dbo.WEAPON as wpn
on vic.[incidentid]=wpn.incidentid

