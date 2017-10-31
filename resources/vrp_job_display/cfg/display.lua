
local cfg = {}

cfg.firstjob = false -- set this to your first job, for example "citizen", or false to disable

-- text display css
cfg.display_css = [[
.div_job{
  position: absolute;
  top: 90px;
  right: 55px;
  font-size: 30px;
  font-family: 'Pricedown', sans serif;
  color: white;
  text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
}
]]

-- icon display css
cfg.icon_display_css = [[
.div_job_icon{
  position: absolute;
  top: 85px;
  right: 10px;
  }
]]

-- list of ["group"] => css for icons
cfg.group_icons = {
--  ["police"] = [[
--    .div_job_icon{
--      content: url('http://draconet.net/FiveM_icons/police.png');
--      height: 40px;
--      width: 40px;
--    }
--  ]],  -- this is an example, add more under it using the same model, leave the } at the end.
  ["Cadet"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Chief of Police"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Sheriff"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["State Trooper"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Deputy Sheriff"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Police Captain"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Police Lieutenant"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Police Detective"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Police Sergeant"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Dispatcher"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ofdlci2.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Bounty Hunter"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/PP4szb6.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["SWAT"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/22rpAWb.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["EMS"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/NWmIRQ7.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Bankdriver"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/vHampVE.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Delivery"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/eECICNR.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Lawyer"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/PQAjaTC.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Mechanic"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/U9gEhTo.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["UBER"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/Z7OR8gv.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Drug Dealer"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/ZqR5KkB.png');
      height: 40px;
      width: 40px;
    }
  ]],
  ["Hacker"] = [[
    .div_job_icon{
      content: url('https://i.imgur.com/HRvGj4s.png');
      height: 40px;
      width: 40px;
    }
  ]]
}
return cfg

