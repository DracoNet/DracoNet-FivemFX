
local cfg = {}

-- mysql credentials
cfg.db = {
  host = "127.0.0.1", -- database ip (default is local)
  database = "vRP",   -- name of database
  user = "root",    --  database username
  password = ""   -- password of your database
}

cfg.save_interval = 30 -- seconds
cfg.whitelist = false -- enable/disable whitelist

-- delay the tunnel at loading (for weak connections)
cfg.load_duration = 5 -- seconds, player duration in loading mode at the first spawn
cfg.load_delay = 0 -- milliseconds, delay the tunnel communication when in loading mode
cfg.global_delay = 0 -- milliseconds, delay the tunnel communication when not in loading mode

cfg.ping_timeout = 5 -- number of minutes after a client should be kicked if not sending pings

-- identify users only with steam or ros identifiers (solve same ip issue, recommended)
-- if enabled, steam auth should be forced in the FiveM server config
cfg.ignore_ip_identifier = true

cfg.lang = "en" -- en / fr / it / ger / pt / ru / lith / dan / ar / pl / es / swe (English/Français/Italiano/Deutsche/Português/Pусский/Lietuvių/Dansk/العربية/Polskie/Español/Svenska)
cfg.debug = false


return cfg
