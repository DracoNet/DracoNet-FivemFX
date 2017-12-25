local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"police.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end		
	if vRP.hasPermission(user_id,"emergency.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"Chief.paycheck") then
		vRP.giveMoney(user_id,3000)
		vRPclient.notify(source,{"Payday: ~g~$3000"})
	end
	if vRP.hasPermission(user_id,"Commander.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Payday: ~g~$4000"})
	end
	if vRP.hasPermission(user_id,"Captain.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Lieutenant.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Detective.paycheck") then
		vRP.giveMoney(user_id,2250)
		vRPclient.notify(source,{"Payday: ~g~$2250"})
	end
	if vRP.hasPermission(user_id,"Sergeant.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"uber.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"Lawyer.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Payday: ~g~$4000"})
	end
	if vRP.hasPermission(user_id,"delivery.paycheck") then
		vRP.giveMoney(user_id,900)
		vRPclient.notify(source,{"Deliver this Sandwiches, Payday: ~g~$900"})
	end
	if vRP.hasPermission(user_id,"citizen.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Get a job, Payday: ~g~$500"})
	end
	if vRP.hasPermission(user_id,"SWAT.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"sheriff.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Cadet.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"trafficguard.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Payday: ~g~$1500"})
	end
	if vRP.hasPermission(user_id,"bankdriver.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.giveMoney(user_id,100)
		vRPclient.notify(source,{"Gift for play: ~g~$100"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.tryPayment(user_id,25)
		vRPclient.notify(source,{"Phone bill: ~r~$-25"})
	end
end)