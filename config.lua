Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 255, g = 255, b = 255 }
Config.Locale = 'en'

Config.UseLicense                 = true

Config.DisplayPrice               = 2
Config.TestPrice                  = 5000
Config.RentTime                   = 20
Config.MoneyType                  = 'money' -- Change to 'money' or 'bank'


Config.SpawnPoint = {

  x = -45.13,
  y = -1081.57,
  z = 26.01,
  heading = 69.89

}

Config.Zones = {

  ShopInside = {
    Pos     = { x = 228.26 , y = -986.57, z = -99.96 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 177.28,
    Type    = -1,
  },

  Catalog = {
    Pos     = { x = 228.18 , y = -995.48, z = -99.96 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 177.28,
    Type    = 27,
  },

  GoDownFrom = {
    Pos   = { x = -50.03, y = -1089.18, z = 25.48 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 27,
  },

  GoUpFrom = {
    Pos   = { x = 240.98, y = -1004.85, z = -99.98 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 27,
  },

}