SELECT 
	
	[Average_value],
	[Station_name_district],
	[Address],
	[Latitude],
	[Longitude],
	
	[Item_name],
	[Unit_of_measurement],
	[Good_Blue],
	[Normal_Green],
	[Bad_Yellow],
	[Very_bad_Red]  
	INTO ALL_TOGETHER
FROM 
	[AirPollution].[dbo].[Measurement_station_info] as stt_db
		INNER JOIN 
	[AirPollution].[dbo].[NEW_INFO] as inf_db 
		ON inf_db.Station_code=stt_db.Station_code
		INNER JOIN
	[AirPollution].[dbo].[Measurement_item_info] as itm_db
		ON inf_db.Item_code=itm_db.Item_code
