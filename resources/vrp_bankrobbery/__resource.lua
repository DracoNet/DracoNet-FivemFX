
description "vRP Bank Robberies by Lee Fall"
--ui_page "ui/index.html"

dependency "vrp"

client_scripts{ 
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}
