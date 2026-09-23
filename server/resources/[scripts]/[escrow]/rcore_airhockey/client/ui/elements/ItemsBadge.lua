local L0_1, L1_1, L2_1
L0_1 = RageUI
L1_1 = {}
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = ""
  L0_2.BadgeDictionary = "commonmenu"
  return L0_2
end
L1_1.None = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mp_medal_bronze"
  return L0_2
end
L1_1.BronzeMedal = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mp_medal_gold"
  return L0_2
end
L1_1.GoldMedal = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "medal_silver"
  return L0_2
end
L1_1.SilverMedal = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mp_alerttriangle"
  return L0_2
end
L1_1.Alert = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.BadgeTexture = "mp_hostcrown"
  if A0_2 then
    L2_2 = {}
    L2_2.R = 0
    L2_2.G = 0
    L2_2.B = 0
    L2_2.A = 255
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = {}
  L2_2.R = 255
  L2_2.G = 255
  L2_2.B = 255
  L2_2.A = 255
  ::lbl_20::
  L1_2.BadgeColour = L2_2
  return L1_2
end
L1_1.Crown = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_ammo_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_ammo_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Ammo = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_armour_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_armour_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Armour = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_barber_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_barber_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Barber = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_clothing_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_clothing_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Clothes = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_franklin_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_franklin_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Franklin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_garage_bike_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_garage_bike_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Bike = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_garage_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_garage_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Car = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_boat_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_boat"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Boat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_heli_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_heli"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Heli = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_plane_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_plane"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Plane = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "player_2"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "player"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "rcore_airhockey"
  return L1_2
end
L1_1.HockeyPlayer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "puck_2"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "puck"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "rcore_airhockey"
  return L1_2
end
L1_1.HockeyPuck = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "bounciness_2"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "bounciness"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "rcore_airhockey"
  return L1_2
end
L1_1.HockeyBounciness = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "scoreboard_2"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "scoreboard"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "rcore_airhockey"
  return L1_2
end
L1_1.HockeyScoreboard = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_boatpickup_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_boatpickup"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.BoatPickup = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_keycard_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_keycard"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Card = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_gunclub_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_gunclub_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Gun = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_health_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_health_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Heart = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_health_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_health_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  if A0_2 then
    L2_2 = {}
    L2_2.R = 255
    L2_2.G = 0
    L2_2.B = 93
    L2_2.A = 255
    if L2_2 then
      goto lbl_26
    end
  end
  L2_2 = {}
  L2_2.R = 255
  L2_2.G = 0
  L2_2.B = 93
  L2_2.A = 255
  ::lbl_26::
  L1_2.BadgeColour = L2_2
  return L1_2
end
L1_1.CasinoVIP = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_makeup_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_makeup_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Makeup = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_mask_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_mask_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Mask = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_michael_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_michael_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Michael = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "shop_new_star"
  return L0_2
end
L1_1.Star = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_tattoos_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_tattoos_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Tattoo = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "shop_trevor_icon_b"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "shop_trevor_icon_a"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  return L1_2
end
L1_1.Trevor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.BadgeTexture = "shop_lock"
  if A0_2 then
    L2_2 = {}
    L2_2.R = 0
    L2_2.G = 0
    L2_2.B = 0
    L2_2.A = 255
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = {}
  L2_2.R = 255
  L2_2.G = 255
  L2_2.B = 255
  L2_2.A = 255
  ::lbl_20::
  L1_2.BadgeColour = L2_2
  return L1_2
end
L1_1.Lock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L1_2.BadgeTexture = "shop_tick_icon"
  if A0_2 then
    L2_2 = {}
    L2_2.R = 0
    L2_2.G = 0
    L2_2.B = 0
    L2_2.A = 255
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = {}
  L2_2.R = 255
  L2_2.G = 255
  L2_2.B = 255
  L2_2.A = 255
  ::lbl_20::
  L1_2.BadgeColour = L2_2
  return L1_2
end
L1_1.Tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_cuffkeys_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_cuffkeys"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Key = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_coke_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_coke"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Coke = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_heroin_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_heroin"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Heroin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_meth_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_meth"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Meth = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_weed_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_weed"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Weed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_package_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_package"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Package = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  if A0_2 then
    L2_2 = "mp_specitem_cash_black"
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = "mp_specitem_cash"
  ::lbl_9::
  L1_2.BadgeTexture = L2_2
  L1_2.BadgeDictionary = "mpinventory"
  return L1_2
end
L1_1.Cash = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.BadgeTexture = "mp_anim_rp"
  L1_2.BadgeDictionary = "mphud"
  return L1_2
end
L1_1.RP = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mpgroundlogo_cops"
  L0_2.BadgeDictionary = "3dtextures"
  return L0_2
end
L1_1.LSPD = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mpgroundlogo_vagos"
  L0_2.BadgeDictionary = "3dtextures"
  return L0_2
end
L1_1.Vagos = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "mpgroundlogo_bikers"
  L0_2.BadgeDictionary = "3dtextures"
  return L0_2
end
L1_1.Bikers = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "badbeat"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.Badbeat = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "cashingout"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.CashingOut = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "fullhouse"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.FullHouse = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "highroller"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.HighRoller = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "housekeeping"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.HouseKeeping = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "loosecheng"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.LooseCheng = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "luckylucky"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.LuckyLucky = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "playtowin"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.PlayToWin = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "straightflush"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.StraightFlush = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "strongarmtactics"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.StrongArmTactics = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.BadgeTexture = "toppair"
  L0_2.BadgeDictionary = "mpawardcasino"
  return L0_2
end
L1_1.TopPair = L2_1
L0_1.BadgeStyle = L1_1
