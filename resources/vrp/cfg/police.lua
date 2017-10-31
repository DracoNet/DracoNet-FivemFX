
local cfg = {}

-- PCs positions
cfg.pcs = {
  {1853.21, 3689.51, 34.2671},
  {442.030609130859, -978.72705078125, 30.6896057128906},
  {-448.97076416016,6012.4208984375,31.71639251709}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 300, -- min time in seconds
  max_time = 600, -- max time in seconds
  service = "police",  -- service to alert when the tracking is successful
  "SWAT",
  "sheriff",
  "highway",
  "trafficguard",
  "Chief",
  "Commander",
  "Lieutenant",
  "Detective",
  "Sergeant",
  "Deputy",
  "Bounty",
  "Dispatch"
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police",
  "SWAT",
  "sheriff",
  "highway",
  "trafficguard",
  "Chief",
  "Dispatch",
  "Commander",
  "Lieutenant",
  "Detective",
  "Deputy",
  "Bounty",
  "Sergeant"
}

-- illegal items (seize)
cfg.seizable_items = {
  "dirty_money",
  "cocaine",
  "lsd",
  "seeds",
  "harness",
  "credit",
  "weed"
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
  ["Fornærmelse"] = 250,
  ["Vold"] = 1250,
  ["Fartbøde"] = 500,
  ["Rødt Lys"] = 500,
  ["Stjæler"] = 1000,
  ["Credit Cards - Per Kort"] = 1000,
  ["Stoffer - pr. stk"] = 2000,
  ["Våbenbesiddelse pr. stk"] = 5000,
  ["Kørsel uden kørekort"] = 1500,
  ["Dirty Money - Per $1000"] = 1500,
  ["Organiseret kriminalitet (10k)"] = 10000,
  ["Organiseret kriminalitet (50k)"] = 50000,
  ["Organiseret kriminalitet (100k)"] = 100000,
  ["Organiseret kriminalitet (500k)"] = 500000,
  ["Organiseret kriminalitet (1M)"] = 1000000
}

return cfg
