
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Body training"},
  {460.190338134766,-993.888488769531,24.914867401123,60,38,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,17,"Police Station"},
  {391.541442871094,-1615.154296875,29.291934967041,60,38,"Police Station"}, 
  {436.566589355469,-994.532653808594,30.6895885467529,315,4,"Driver License"},
  {244.1099395752,-1382.8720703125,39.534328460693,61,3,"Hospital Station"},
  {415.2883605957,-1652.4112548828,29.291698455811,446,47,"Repair Station"},
  {236.41926574707,216.96081542969,106.28672790527,434,4,"Bank Driver Station"},  
  {1049.39819,-555.6142,59.1099167,410,47,"Park"},
  {449.81854248047,-993.30865478516,30.689584732056,73,3,"Police Outfits"},
  {575.40698242188,-3121.94921875,18.768627166748,433,1,"Bounty Hunter"},
  {138.28096008301,-764.61865234375,45.752029418945,88,5,"FBI"}
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
}

return cfg
