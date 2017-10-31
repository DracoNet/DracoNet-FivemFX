
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["eastlossantos1"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",10,0,""},
    ["WEAPON_BAT"] = {"Bat",50,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",50,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,2,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,2,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",2500,2,""},
    ["WEAPON_PISTOL"] = {"Pistol",2500,2,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",5000,2,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",5000,2,""},
    ["WEAPON_APPISTOL"] = {"Ap Pistol",7500,2,""},
    ["WEAPON_DAGGER"] = {"Dagger",100,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",50,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",100,0,""},
    ["WEAPON_MICROSMG"] = {"Mini SMG",5000,5,""},
    ["WEAPON_SMG"] = {"SMG",5000,5,""},
    ["WEAPON_ASSAULTSMG"] = {"Assault SMG",5500,5,""},
    ["WEAPON_COMBATPDW"] = {"Combat PDW",7500,5,""},
    ["WEAPON_MACHINEPISTOL"] = {"Machine Pistol",7500,5,""},
    ["WEAPON_CROWBAR"] = {"Crowwbar",70,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",30,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",100,0,""},
    ["WEAPON_MACHETE"] = {"Machete",150,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,5,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,5,""},
    ["WEAPON_COMPACTRIFLE"] = {"Mini SMG",5500,10,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Assault Rifle",65000,50,""},
    ["WEAPON_CARBINERIFLE"] = {"Carabineri Rifle",65000,50,""},
    ["WEAPON_GRENADE"] = {"Grenade",350,350,""},
    ["WEAPON_MOLOTOV"] = {"Molotv",100,100,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_GUSENBERG"] = {"Gusenberg MG",5000,5,""},
    ["WEAPON_MG"] = {"MG",100000,75,""},
    ["WEAPON_COMBATMG"] = {"Combat MG",150000,100,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,7,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,7,""},
    ["WEAPON_MARKSMANRIFLE"] = {"Marksman Rifle",100000,100,""},
    ["WEAPON_SNIPERRIFLE"] = {"Sniper Rifle",200000,75,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",400000,150,""},
    ["WEAPON_BULLPUPRIFLE"] = {"Bullpup Rifle",50000,45,""},
    ["WEAPON_ADVANCEDRIFLE"] = {"Carabine",65000,50,""},
    ["WEAPON_SPECIALCARBINE"] = {"Special Carabine",65000,50,""},
    ["WEAPON_GRENADE"] = {"Grenade",350,350,""},
    ["WEAPON_MOLOTOV"] = {"Molotv",100,100,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",30000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",7000,20,""},
    ["WEAPON_BULLPUPSHOTGUN"] = {"BullUp Shotgun",10000,30,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",50000,50,""},
    ["WEAPON_ASSAULTSHOTGUN"] = {"Assault Shotgun",150000,50,""},
    ["WEAPON_GRENADELAUNCHER_SMOKE"] = {"Grenade Launcher",500000,3500,""},
    ["WEAPON_FIREWORK"] = {"Firework",20,0,""},
    ["WEAPON_SNOWBALL"] = {"SnowBall",3000000,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",20,0,""},
    ["WEAPON_MUSKET"] = {"Musket",50000,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",1500,15,""},
    ["WEAPON_SNSPISTOL"] = {"S&S Pistol",2500,15,""},
    ["WEAPON_GRENADE"] = {"Grenade",350,3500,""},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",50,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",25000,0,""}
  },
  ["policeloadout"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"police.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""}
  },
  ["Cadet"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"Cadet.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
  ["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
  ["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
  ["WEAPON_STUNGUN"] = {"Tazer",0,0,""}
  },
  ["SWAT"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"SWAT.loadshop"}},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",0,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
    ["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
    ["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""}
  },
  ["Bounty_Hunter"] = {
    _config = {blipid=150,blipcolor=1, permissions = {"Bounty.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""}
  },
  ["emsloadout"] = {
    _config = {blipid=446,blipcolor=74, permissions = {"ems.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
   	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""}
   },
  ["bombsticky"] = {
    _config = {blipid=110,blipcolor=1},
   ["WEAPON_STICKYBOMB"] = {"Sticky bomb",50000,50000,""} 
 }
}
-- list of gunshops positions

cfg.gunshops = {
  {"emsloadout", 232.89363098145,-1368.3338623047,39.534381866455}, -- spawn hospital
  {"emsloadout", 1837.8341064453,3671.3837890625,34.276763916016}, -- sandy shores
  {"emsloadout", -246.91954040527,6330.349609375,32.42618560791}, -- paleto
  {"eastlossantos1", 844.299, -1033.26, 28.1949},
  {"SWAT", 461.33551025391,-981.11071777344,30.689584732056},
  {"Cadet", 461.33551025391,-981.11071777344,30.689584732056},
  {"policeloadout", 461.33551025391,-981.11071777344,30.689584732056},--- main pd
  {"Bounty_Hunter", 563.62060546875,-3126.9626464844,18.768604278564}, 
  {"policeloadout", 1851.7342529297,3683.7416992188,34.267044067383}, -- sandy shores
  {"policeloadout", -442.724609375,6012.6293945313,31.716390609741}, -- paleto
  {"bombsticky", 708.847778320313,-959.231750488281,30.3953418731689}
}

return cfg
