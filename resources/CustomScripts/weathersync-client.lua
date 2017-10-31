-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.
-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.
-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.
-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.
-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.
-- DO NOT TOUCH BELOW UNLESS YOU KNOW WHAT YOU ARE DOING. CONTACT TheStonedTurtle IF ANYTHING IS BROKEN.

-- Change Weather Type
function changeWeatherType(type)
	ClearWeatherTypePersist() -- Ensure no persistant weather
	--SetOverrideWeather(type)
	SetWeatherTypeOverTime(type, 60.00)
end


-- Update players wind
function updateWind(toggle,heading)
	if(toggle) then
		SetWind(1.0)
		SetWindSpeed(11.99);
		SetWindDirection(heading)
	else
		SetWind(0.0)
		SetWindSpeed(0.0);
	end
end



-- Sync weather with server settings.
RegisterNetEvent('smartweather:updateWeather')
AddEventHandler('smartweather:updateWeather', function(data)
	changeWeatherType(data["weatherString"])
	updateWind(data["windEnabled"],data["windHeading"])
end)


-- Sync on player connect
AddEventHandler('onClientMapStart', function()	
	Citizen.Trace("Running V1.3 of SmartWeather created by TheStonedTurtle")
	TriggerServerEvent('smartweather:syncWeather')
	Citizen.Trace("Synced Weather with server settings :)")
end)