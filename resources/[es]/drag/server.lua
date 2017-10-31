TriggerEvent('es:addCommand', 'drag', function(source, args, user)

	local argument = args[2] -- player id to check license
	local savedsource = source

	if argument == nil or type(tonumber(argument)) == nil then
	
		TriggerClientEvent("chatMessage", source, "SYSTEM", { 0, 141, 155 }, "example: /drag <id>")
		
	--elseif playerJob ~= "cop" and playerJob ~= "sheriff" then                               <-- add your permissions here
	
	--	TriggerClientEvent("chatMessage", source, "SYSTEM", { 0, 141, 155 }, "^3Civilians are not allowed to use /drag")
		
	else 
			
		if(GetPlayerName(tonumber(argument)))then
			TriggerEvent('es:getPlayerFromId', tonumber(argument), function(target)
				if argument == savedsource then
					TriggerClientEvent('chatMessage', source, "SYSTEM", { 0, 141, 155 }, "You cannot drag yourself.")
				else
					TriggerClientEvent("dr:drag", tonumber(argument), source)
				end
			end)
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", { 0, 141, 155 }, "Incorrect Player ID")
		end		
	end
end)