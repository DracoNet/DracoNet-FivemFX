
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 25000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {500,2} 

-- positions of commerce chambers
cfg.commerce_chambers = {
	{3536.4807128906,3660.3364257813,28.121891021729}
}

return cfg
