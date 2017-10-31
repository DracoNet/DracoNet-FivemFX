-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = -2511.16479492188, y = 3616.90478515625, z = 13.6422147750854, heading = 245.000457763672}, 
	{id = 2, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = 24.392505645752, y = -1345.41369628906, z = 29.4970207214355, heading = 264.900115966797},
	{id = 3, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = -47.3110542297363, y = -1758.62475585938, z = 29.4209995269775, heading = 48.1558074951172},
	{id = 4, name = "Ammunation", BlipID = 110, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "s_m_y_ammucity_01", x = 841.843566894531, y = -1035.70556640625, z = 28.1948642730713, heading = 3.31448912620544},
}

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip For NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, true, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetAmbientVoiceName(ShopClerk[i].id, ShopClerk[i].Ambiance)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
      end
      generalLoaded = true
		
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Action when player Near NPC (or not)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		RequestAnimDict("random@shop_gunstore")
		while (not HasAnimDictLoaded("random@shop_gunstore")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 4 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_greeting", 1.0, -1.0, 4000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(4000)
				if PlayingAnim == true then
					TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle_b", 1.0, -1.0, -1, 0, 1, true, true, true)
					Citizen.Wait(40000)
				end
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 5.5 and distance < 6 then
				PlayingAnim = false
			end


		end
  end
end)

