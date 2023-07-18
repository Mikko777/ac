ESX          = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


--Car Blacklist if you spawn some blacklisted car anticheat automatically remove that car

carblacklist = {	
	"luxor",
	"maverick",
	"blimp2",
	"lazer",
	"armytanker",
	"freight",
	"rhino",
	"bus",
	"buzzard",
	"jet",
	"khanjali",
	"bombushka",
	"cargobob",
	"cargoplane"
}

--Weapon Blacklist if you got some blacklisted weapon anticheat automatically remove that weapon from you

blackWeapons={ "WEAPON_RPG", "WEAPON_FLAREGUN", "WEAPON_ASSAULTRIFLE", "WEAPON_STONE_HATCHET", "WEAPON_POOLCUE", "WEAPON_COMPACTRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_BULLPUPRIFLE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_SPECIALCARBINE", "WEAPON_BATTLEAXE", "WEAPON_PISTOL_MK2", "WEAPON_APPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_REVOLVER_MK2", "WEAPON_DOUPLEACTION", "WEAPON_CERAMICPISTOL", "WEAPON_NAVYREVOLVER", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MACHINEPISTOL", "WEAPON_MINISMG", "WEAPON_PUMPSHOTGUN", "WEAPON_PUMPSHOTGUN_MK2", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_AUTOSHOTGUN", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_SPECIALCARBINE_MK2", "WEAPON_BULLPUPRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_COMBATRIFLE", "WEAPON_RAYCARBINE", "WEAPON_STICKYBOMB", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_GUSENBERG", "WEAPON_RAYPISTOL", "WEAPON_GARBAGEBAG", "WEAPON_MARKSMANRIFLE_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_HEAVYSNIPER", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_MINIGUN", "WEAPON_FIREWORK", "WEAPON_RAILGUN", "WEAPON_HOMINGLAUNCHER", "WEAPON_COMPACTLAUNCHER", "WEAPON_RAYMINIGUN", "WEAPON_GRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV", "WEAPON_PROXMINE", "WEAPON_SNOWBALL", "WEAPON_PIPEBOMB", "WEAPON_BALL", "WEAPON_SMOKEGRENADE", "WEAPON_ROCKET", "WEAPON_EXPLOSION ", "WEAPON_FLARE" }

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		for k,v in ipairs(blackWeapons) do
			N_0x4757f00bc6323cfe(GetHashKey(v), 0.0)
			Wait(1)
			if HasPedGotWeapon(PlayerPedId(),GetHashKey(v),false) == 1 then
				RemoveAllPedWeapons(PlayerPedId(), true) -- if you get blacklisted weapon that automatically remove all your weapons
			end
		end
	end
end)

Deleter = true
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		local ped = PlayerPedId()
		local handle, object = FindFirstObject()
		local finished = false
		repeat
		Wait(1)
        if (Deleter == true)then
			if IsEntityAttached(object) and DoesEntityExist(object) then
			usernameid = GetPlayerName(PlayerId())
				if GetEntityModel(object) == GetHashKey("prop_weed_pallet") then
					DeleteObjects(object, true)
				end
			end
			for i=1,#Config.M1Objs do
				if GetEntityModel(object) == GetHashKey(Config.M1Objs[i]) then
					DeleteObjects(object, false)
				end
			end		
		end
		finished, object = FindNextObject(handle)

		until not finished
		EndFindObject(handle)	
	end
end)
function DeleteObjects(object, detach)
	if (Deleter == true)then
		if DoesEntityExist(object) then
			NetworkRequestControlOfEntity(object)
			while not NetworkHasControlOfEntity(object) do
				Citizen.Wait(1)
			end
			if detach then
				DetachEntity(object, 0, false)
			end

			SetEntityCollision(object, false, false)
			SetEntityAlpha(object, 0.0, true)
			SetEntityAsMissionEntity(object, true, true)
			SetEntityAsNoLongerNeeded(object)
			DeleteEntity(object)

		end
	end
end

function _DeleteEntity(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end


function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(sc, sc)
	N_0x4e096588b13ffeca(jus)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x - 0.1+w, y - 0.02+h)
end

pedblacklist = {
	"CSB_BallasOG",
	"MP_S_ARMOURED_01",
	"S_F_Y_Cop_01",
	"S_F_Y_Cop_02",
	"S_F_Y_Cop_03",
	"S_M_Y_Cop_02",
	"S_M_Y_Cop_03",
	"S_F_Y_Sheriff_01",
	"S_F_Y_Sheriff_02",
	"S_F_Y_Sheriff_03",
	"S_M_Y_Marine_01",
	"S_M_Y_Marine_02",
	"S_M_Y_Marine_03",
	"S_M_SECURITY_01",
	"S_M_SECURITY_02",
	"S_M_SECURITY_03",
	"S_M_Y_ARMYMECH_01",
	"S_M_Y_ARMYMECH_02",
	"S_M_Y_ARMYMECH_03",
	"S_M_Y_BLACKOPS_01",
	"S_M_Y_BLACKOPS_02",
	"S_M_Y_BLACKOPS_03",
	"U_M_Y_Juggernaut_01",
	"A_M_Y_Acult_02",
	"A_M_M_Acult_01",
	"CS_Orleans",
	"IG_Orleans",
	"S_M_M_Movalien_01",
	"S_M_M_Swat_01",
	"S_M_Y_Swat_01",
	"S_M_Y_Hwaycop_01",
	"A_M_O_Acult_01",
	"A_C_Boar",
	"A_C_Killerwhale",
	"A_C_Sharktiger",
	"CSB_Stripper_01",
	"S_M_Y_Baywatch_01",
	"A_M_M_Acult_01",
	"IG_Barry",
	"G_M_Y_Ballaeast_01",
	"U_M_Y_Babyd",
	"U_M_Y_pogo_01",
	"A_M_Y_Acult_01",
	"A_C_MtLion",
	"A_M_M_Afriamer_01",
	"U_M_Y_Corpse_01",
	"S_M_M_Armoured_02",
	"G_M_M_Armboss_01",
	"G_M_Y_Armgoon_02",
	"S_M_Y_Prismuscl_01",
	"G_M_M_Chemwork_01",
	"A_M_Y_Musclbeac_01",
	"CSB_Cop",
	"S_M_Y_Clown_01",
	"S_M_Y_Cop_01",
	"U_M_Y_Zombie_01",
	"CS_Debra",
 	"A_F_M_Beach_01",
  	"A_F_M_Bodybuild_01",
   	"A_F_M_Business_02",
	"A_F_Y_Business_04", 
	"MP_F_Cocaine_01", 
	"U_F_y_Corpse_01", 
	"MP_F_Meth_01", 
	"G_F_Importexport_01",
    "A_F_Y_Vinewood_04",
	"A_M_M_Tranvest_01",
	"A_M_M_Tranvest_02",
	"IG_Tracydisanto", 
	"CSB_Stripper_02",
	"S_F_Y_Stripper_01",
	"A_F_M_Soucentmc_01", 
	"A_F_M_Soucent_02",
	"U_F_Y_Poppymich",
	"IG_Patricia", 
	"A_C_Husky", 
	"A_C_Cat_01",
	"A_C_Boar",
	"A_C_Sharkhammer",
	"A_C_Coyote", 
 	"A_C_Chimp",
    "A_C_Chop", 
  	"A_C_Cow",
 	"A_C_Deer", 
   	"A_C_Dolphin",
    "A_C_Fish",
	"A_C_Hen",
	"A_C_Humpback",
	"A_C_Mtlion", 
	"A_C_Pig",
	"A_C_Pug", 
	"A_C_Rabbit_01",
	"A_C_Retriever",
	"A_C_Rhesus", 
	"A_C_Rottweiler",
	"A_C_Sharktiger",
	"A_C_Shepherd", 
	"A_C_Westy",
	"batman",
	"thanos",
	"ironman",
	"Gipsy",
	"Deadshot",
	"Joker",
	"OptimusPrime",
	"OptimusPrimeBig"
}

-- block Default error
defaultpedmodel = "A_M_Y_skater_01"

-- code for ^^^ --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			playerModel = GetEntityModel(playerPed)

			if not prevPlayerModel then
				if isPedBlacklisted(prevPlayerModel) then
					SetPlayerModel(PlayerId(), GetHashKey(defaultpedmodel))
				else
					prevPlayerModel = playerModel
				end
			else
				if isPedBlacklisted(playerModel) then
					SetPlayerModel(PlayerId(), prevPlayerModel)
				end

				prevPlayerModel = playerModel
			end
		end
	end
end)

function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end


function KillAllPeds()
	local pedweapon
	local pedid
	for ped in EnumeratePeds() do 
			if DoesEntityExist(ped) then
					pedid = GetEntityModel(ped)
					pedweapon = GetSelectedPedWeapon(ped)
					if pedweapon == -1312131151 or not IsPedHuman(ped) then 
							ApplyDamageToPed(ped, 1000, false)
							DeleteEntity(ped)
					else
							switch = function (choice)
									choice = choice and tonumber(choice) or choice
								
									case = {
											[451459928] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
								
											[1684083350] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[451459928] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
						
											[1096929346] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[880829941] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
				
											[-1404353274] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,

											[2109968527] = function ( )
													ApplyDamageToPed(ped, 1000, false)
													DeleteEntity(ped)
											end,
											
										 default = function ( )
										 end,
									}
									if case[choice] then
										 case[choice]()
									else
										 case["default"]()
									end
								end
								switch(pedid) 
					end
			 end
	end
end

Citizen.CreateThread(function()
	while (true) do
			Citizen.Wait(500)
			KillAllPeds()
			DeleteEntity(ped)
	end
end) 

local entityEnumerator = { __gc = function(enum) if enum.destructor and enum.handle then enum.destructor(enum.handle) end enum.destructor = nil enum.handle = nil end }

local function EnumerateEntities(initFunc, moveFunc, disposeFunc) return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then disposeFunc(iter) return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end

function EnumeratePeds() return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end



local vehicle_weapon_names = { "VEHICLE_WEAPON_WATER_CANNON", "VEHICLE_WEAPON_PLAYER_LAZER", "VEHICLE_WEAPON_PLANE_ROCKET", "VEHICLE_WEAPON_ENEMY_LASER", "VEHICLE_WEAPON_TANK", "VEHICLE_WEAPON_SEARCHLIGHT", "VEHICLE_WEAPON_RADAR", "VEHICLE_WEAPON_PLAYER_BUZZARD", "VEHICLE_WEAPON_SPACE_ROCKET", "VEHICLE_WEAPON_TURRET_INSURGENT", "VEHICLE_WEAPON_PLAYER_SAVAGE", "VEHICLE_WEAPON_TURRET_TECHNICAL", "VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE", "VEHICLE_WEAPON_TURRET_VALKYRIE", "VEHICLE_WEAPON_CANNON_BLAZER", "VEHICLE_WEAPON_TURRET_BOXVILLE", "VEHICLE_WEAPON_RUINER_BULLET", "VEHICLE_WEAPON_RUINER_ROCKET", "VEHICLE_WEAPON_HUNTER_MG", "VEHICLE_WEAPON_HUNTER_MISSILE", "VEHICLE_WEAPON_HUNTER_CANNON", "VEHICLE_WEAPON_HUNTER_BARRAGE", "VEHICLE_WEAPON_TULA_NOSEMG", "VEHICLE_WEAPON_TULA_MG", "VEHICLE_WEAPON_TULA_DUALMG", "VEHICLE_WEAPON_TULA_MINIGUN", "VEHICLE_WEAPON_SEABREEZE_MG", "VEHICLE_WEAPON_MICROLIGHT_MG", "VEHICLE_WEAPON_DOGFIGHTER_MG", "VEHICLE_WEAPON_DOGFIGHTER_MISSILE", "VEHICLE_WEAPON_MOGUL_NOSE", "VEHICLE_WEAPON_MOGUL_DUALNOSE", "VEHICLE_WEAPON_MOGUL_TURRET", "VEHICLE_WEAPON_MOGUL_DUALTURRET", "VEHICLE_WEAPON_ROGUE_MG", "VEHICLE_WEAPON_ROGUE_CANNON", "VEHICLE_WEAPON_ROGUE_MISSILE", "VEHICLE_WEAPON_BOMBUSHKA_DUALMG", "VEHICLE_WEAPON_BOMBUSHKA_CANNON", "VEHICLE_WEAPON_HAVOK_MINIGUN", "VEHICLE_WEAPON_VIGILANTE_MG", "VEHICLE_WEAPON_VIGILANTE_MISSILE", "VEHICLE_WEAPON_TURRET_LIMO", "VEHICLE_WEAPON_DUNE_MG", "VEHICLE_WEAPON_DUNE_GRENADELAUNCHER", "VEHICLE_WEAPON_DUNE_MINIGUN", "VEHICLE_WEAPON_TAMPA_MISSILE", "VEHICLE_WEAPON_TAMPA_MORTAR", "VEHICLE_WEAPON_TAMPA_FIXEDMINIGUN", "VEHICLE_WEAPON_TAMPA_DUALMINIGUN", "VEHICLE_WEAPON_HALFTRACK_DUALMG", "VEHICLE_WEAPON_HALFTRACK_QUADMG", "VEHICLE_WEAPON_APC_CANNON", "VEHICLE_WEAPON_APC_MISSILE", "VEHICLE_WEAPON_APC_MG", "VEHICLE_WEAPON_ARDENT_MG", "VEHICLE_WEAPON_TECHNICAL_MINIGUN", "VEHICLE_WEAPON_INSURGENT_MINIGUN", "VEHICLE_WEAPON_TRAILER_QUADMG", "VEHICLE_WEAPON_TRAILER_MISSILE", "VEHICLE_WEAPON_TRAILER_DUALAA", "VEHICLE_WEAPON_NIGHTSHARK_MG", "VEHICLE_WEAPON_OPPRESSOR_MG", "VEHICLE_WEAPON_OPPRESSOR_MISSILE", "VEHICLE_WEAPON_MOBILEOPS_CANNON", "VEHICLE_WEAPON_AKULA_TURRET_SINGLE", "VEHICLE_WEAPON_AKULA_MISSILE", "VEHICLE_WEAPON_AKULA_TURRET_DUAL", "VEHICLE_WEAPON_AKULA_MINIGUN", "VEHICLE_WEAPON_AKULA_BARRAGE", "VEHICLE_WEAPON_AVENGER_CANNON", "VEHICLE_WEAPON_BARRAGE_TOP_MG", "VEHICLE_WEAPON_BARRAGE_TOP_MINIGUN", "VEHICLE_WEAPON_BARRAGE_REAR_MG", "VEHICLE_WEAPON_BARRAGE_REAR_MINIGUN", "VEHICLE_WEAPON_BARRAGE_REAR_GL", "VEHICLE_WEAPON_CHERNO_MISSILE", "VEHICLE_WEAPON_COMET_MG", "VEHICLE_WEAPON_DELUXO_MG", "VEHICLE_WEAPON_DELUXO_MISSILE", "VEHICLE_WEAPON_KHANJALI_CANNON", "VEHICLE_WEAPON_KHANJALI_CANNON_HEAVY", "VEHICLE_WEAPON_KHANJALI_MG", "VEHICLE_WEAPON_KHANJALI_GL", "VEHICLE_WEAPON_REVOLTER_MG", "VEHICLE_WEAPON_SAVESTRA_MG", "VEHICLE_WEAPON_SUBCAR_MG", "VEHICLE_WEAPON_SUBCAR_MISSILE", "VEHICLE_WEAPON_SUBCAR_TORPEDO", "VEHICLE_WEAPON_THRUSTER_MG", "VEHICLE_WEAPON_THRUSTER_MISSILE", "VEHICLE_WEAPON_VISERIS_MG", "VEHICLE_WEAPON_VOLATOL_DUALMG" }

Citizen.CreateThread(function()
		vehicle_weapons = {}
		
    for _,v in next, vehicle_weapon_names do
        table.insert(vehicle_weapons, GetHashKey(v))
    end

    while true do
        for i=0,256,1 do
		    local ply = GetPlayerPed(i)
		    local veh = GetVehiclePedIsIn(ply, false)

		    if DoesVehicleHaveWeapons(veh) then
			    for _,v in next, vehicle_weapons do
						DisableVehicleWeapon(true, v, veh, ply)
			    end
		    end
        end
        Citizen.Wait(100)
    end
end)


function ReqAndDelete(object, detach)
	if DoesEntityExist(object) then
		NetworkRequestControlOfEntity(object)
		while not NetworkHasControlOfEntity(object) do
			Citizen.Wait(1)
		end
		if detach then
			DetachEntity(object, 0, false)
		end
		SetEntityCollision(object, false, false)
		SetEntityAlpha(object, 0.0, true)
		SetEntityAsMissionEntity(object, true, true)
		SetEntityAsNoLongerNeeded(object)
		DeleteEntity(object)
	end
end

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(carblacklist) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
			SetEntityAsMissionEntity( car, true, true )
			_DeleteEntity(car)
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		SetPedInfiniteAmmoClip(PlayerPedId(), false)
        SetPedInfiniteAmmo(PlayerPedId(), false)
        SetPedArmour(PlayerPedId(-1), 0)
		SetEntityCanBeDamaged(PlayerPedId(), true)
		SetPlayerInvincible(PlayerId(), false)
		SetEntityVisible(GetPlayerPed(-1), true, 0)
		SetEntityInvincible(PlayerPedId(), false)
		SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId()), false)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		local j=GetVehiclePedIsUsing(PlayerPedId())
		local k=GetEntityModel(j) if IsPedSittingInAnyVehicle(PlayerPedId())then
			if j==b and k~=c and c~=nil and c~=0 then DeleteVehicle(j)
				TriggerServerEvent("M1:ban","🛡️ modder | Cheat Engine ",true,true)
				return end
			end;
			b=j;
			c=k
		end
	end
)

	
Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(-1553120962, 0.0) 
        Wait(0)
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)
		numresafter = GetNumResources()
		if numresfirst ~= nil then
			if numresfirst ~= numresafter then
				TriggerServerEvent("M1:ban", "🛡️ ResourceCounter: lol", "nice cheats", true, true)
			end
		end
	end
end)

-- Eulen Blocker

Citizen.CreateThread(function()
	eulenez = GetNumResources()
	while true do 
		Citizen.Wait(1000)
		eulenez2 = GetNumResources()
		if eulenez ~= eulenez2 then
			TriggerServerEvent("M1:ban", "🛡️ Eulen: dec", "modder", true, true)
		end    
	end    
end)
