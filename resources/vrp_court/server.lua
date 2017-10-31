local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

local cfg = module("vrp_court", "config")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRPcourt")
vRPjailerC = Tunnel.getInterface("vRPcourt","vRPcourt")


-----------------------------

AddEventHandler('chatMessage', function(source, n, message)
    local user_id = vRP.getUserId({source})
    --print("User ID:"..user_id)
    if vRP.hasPermission({user_id,"police.jail"}) then
	--print("user can jail...")
    else
	--print("user does not have right to jail")
	--print(GetPlayername(source) .. " does not have permission to jail people!! ")
	--TriggerClientEvent('chatMessage', -1, 'JUDGE', { 0, 0, 0 }, GetPlayerName(source) ..' cannot Jail People!')
        return
    end
    --cm = stringsplit(message, " ")
    cmstring = stringsplit(message, "|")
    cm = stringsplit(cmstring[1], " ")
    if cmstring[2] ~= nil then
    	reason = cmstring[2]
    else
    	reason = "Not Given"
    end

    if(cm[1] == "/jailme") then
		CancelEvent()
		local jT = cfg.defaultmins
		if cm[2] ~= nil then
			jT = tonumber(cm[2])				
		end
		if jT > cfg.maxmins then
			jT = cfg.maxmins
		end
		jTsecs = jT * 60
		
		print("Jailing ".. GetPlayerName(source) .. " for ".. jT .." minutes")
		TriggerClientEvent("JP", source, jTsecs)
		print("jailed myself")
		TriggerClientEvent('chatMessage', -1, 'JUDGE', { 0, 0, 0 }, GetPlayerName(source) ..' jailed for '.. jT ..' minutes')
       elseif cm[1] == "/unjail" then
		CancelEvent()
			local dbPID = tonumber(cm[2])
			local tPID = vRP.getUserSource({dbPID})
			if GetPlayerName(tPID) ~= nil then
				print("Unjailing ".. GetPlayerName(tPID).. " - cm entered by ".. GetPlayerName(source))
				print("reason: "..reason)
				TriggerClientEvent("UnJP", tPID)
			end
	elseif cm[1] == "/jail" then
		CancelEvent()
		if tablelength(cm) > 2 then
				local dbPID = tonumber(cm[2])
				local tPID = vRP.getUserSource({dbPID})
				local jT = cfg.defaultmins
				if tablelength(cm) > 2 then
					if cm[3] ~= nil then
						jT = tonumber(cm[3])				
					end
				end
				if jT > cfg.maxmins then
					jT = cfg.maxmins
				end
				jTsecs = jT * 60
				if GetPlayerName(tPID) ~= nil then
					print("Jailing ".. GetPlayerName(tPID).. " for ".. jT .." minutes - cm entered by ".. GetPlayerName(source))
					print("reason: "..reason)
					line = "Jailed " .. jT .. " minutes by ".. GetPlayerName(source) .." Reason: " .. reason
        				local user_id = tPID --vRP.getUserId({source})
					vRP.insertPoliceRecord({user_id, line})
					vRPclient.toggleHandcuff(tPID,{})
					TriggerClientEvent("JP", tPID, jTsecs)
					TriggerClientEvent('chatMessage', -1, 'JUDGE', { 0, 0, 0 }, GetPlayerName(tPID) ..' jailed for '.. jT ..' minutes')
				end
		end
	elseif cm[1] == "/warrant" then
		print("warrant section...")
		CancelEvent()
		if tablelength(cm) > 1 then
				print ("test 1")
				local dbPID = tonumber(cm[2])
				local tPID = vRP.getUserSource({dbPID})
				local tP = cfg.defaulttick
				if GetPlayerName(tPID) ~= nil then
					print ("test 2")
					print("Warrant Issued to  ".. GetPlayerName(tPID).. " - cm entered by ".. GetPlayerName(source))
					print("reason: "..reason)
        				local user_id = tPID --vRP.getUserId({source})
					line = "Warrant issed by ".. GetPlayerName(source) .." Details: " .. reason
					vRP.insertPoliceRecord({user_id, line})
					print ("test 3")
				end
		end
	elseif cm[1] == "/unwarrant" then
		CancelEvent()
		if tablelength(cm) > 1 then
				local dbPID = tonumber(cm[2])
				local tPID = vRP.getUserSource({dbPID})
				local tP = cfg.defaulttick
				if GetPlayerName(tPID) ~= nil then
					print("All Warrants Issued to  ".. GetPlayerName(tPID).. " cleared! - cm entered by ".. GetPlayerName(source))
        				local user_id = tPID --vRP.getUserId({source})
					line = "Active Warrants cleared by ".. GetPlayerName(source)
					vRP.insertPoliceRecord({user_id, line})
				end
		end
	elseif cm[1] == "/ticket" then
		CancelEvent()
		if tablelength(cm) > 2 then
				local dbPID = tonumber(cm[2])
				local tPID = vRP.getUserSource({dbPID})
				local tP = cfg.defaulttick
				if tablelength(cm) > 2 then
					if cm[3] ~= nil then
						tP = tonumber(cm[3])				
					end
				end
				if tP > cfg.maxtick then
					tP = cfg.maxtick
				end
				if GetPlayerName(tPID) ~= nil then
					print("Ticket Given to  ".. GetPlayerName(tPID).. " for ".. tP .." dollars - cm entered by ".. GetPlayerName(source))
					print("reason: "..reason)

        				local user_id = tPID --vRP.getUserId({source})
          				--if vRP.tryFullPayment({user_id,tP}) then
          				if vRP.forcePayment({user_id,tP}) then
						TriggerClientEvent("TP", tPID, tP)
						TriggerClientEvent('chatMessage', -1, 'JUDGE', { 0, 0, 0 }, GetPlayerName(tPID) ..' fined for '.. tP ..' dollars')
						line = "Fined " .. tP .. " dollars by ".. GetPlayerName(source) .." Reason: " .. reason
						vRP.insertPoliceRecord({user_id, line})
          				else
						TriggerClientEvent("TPFail", tPID, tP)
						TriggerClientEvent('chatMessage', -1, 'JUDGE', { 0, 0, 0 }, GetPlayerName(tPID) ..' NOT billed for '.. tP ..' dollars.  Not enought money')
         				end



				end
		end
	end
end)

print('vrp_court by mr_cpu_geek (LUA, FXServer, FiveM).')
print('based on Jailer by Albo1125.')
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
--Coded by Albo1125
