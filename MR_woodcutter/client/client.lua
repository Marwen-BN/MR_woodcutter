local RSGCore = exports['rsg-core']:GetCoreObject()

local PrimeraMina = false
local Mina1 = false
local Arbol1, Arbol2, Arbol3, Arbol4, Arbol5, Arbol6, Arbol7, Arbol8, Arbol9, Arbol10 = nil, nil, nil, nil
local Mina2 = false
local Mina3 = false
local Mina4 = false
local Mina5 = false
local Mina6 = false
local Mina7 = false
local Mina8 = false
local Mina9 = false
local Mina10 = false
local FinMina = false
local blipname = "WoodC"
local RSGCore = exports['rsg-core']:GetCoreObject()
Citizen.CreateThread(function()
    local blip = Citizen.InvokeNative(0x554d9d53f696d002, -592068833, Config.Zonas['init'].x, Config.Zonas['init'].y, Config.Zonas['init'].z)
end)
local blips = {
    { name = 'wood harvest', sprite = 1904459580, x=-1500.8, y=-791.4, z=101.9},
    { name = 'wood process', sprite = 2107754879, x = -1827.6, y = -424.4, z= 160.7},
}


Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
        SetBlipScale(blip, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end  
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local pos = GetEntityCoords(PlayerPedId())
        Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, Config.Zonas['init'].x, Config.Zonas['init'].y, Config.Zonas['init'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 0.9, 18, 255, 1, 155, 0, 0, 2, 0, 0, 0, 0)

        if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['init'].x, Config.Zonas['init'].y, Config.Zonas['init'].z) < 1.0) then
            if true then
              DrawText3D(Config.Zonas['init'].x, Config.Zonas['init'].y, Config.Zonas['init'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    TriggerServerEvent('woodcutter:checkjob')
					
                end
            end
        end
        if PrimeraMina and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner1'].x, Config.Zonas['Miner1'].y, Config.Zonas['Miner1'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner1'].x, Config.Zonas['Miner1'].y, Config.Zonas['Miner1'].z) < 3.0) then
            DrawText3D(Config.Zonas['Miner1'].x, Config.Zonas['Miner1'].y, Config.Zonas['Miner1'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol1) 
                     RSGCore.Functions.Notify( Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
					RemoveBlip(blip)
					blip2 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner2'].x, Config.Zonas['Miner2'].y, Config.Zonas['Miner2'].z)
                    SetBlipSprite(blip2, -570710357, 1)
					PrimeraMina = false
                    Mina2 = true
                end
            end
        elseif Mina2 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner2'].x, Config.Zonas['Miner2'].y, Config.Zonas['Miner2'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner2'].x, Config.Zonas['Miner2'].y, Config.Zonas['Miner2'].z) < 3.0) then
              DrawText3D(Config.Zonas['Miner2'].x, Config.Zonas['Miner2'].y, Config.Zonas['Miner2'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol2)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip2)
                    blip3 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner3'].x, Config.Zonas['Miner3'].y, Config.Zonas['Miner3'].z)
                    SetBlipSprite(blip3, -570710357, 1)
                    Mina2 = false
                    Mina3 = true
                end
            end
        elseif Mina3 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner3'].x, Config.Zonas['Miner3'].y, Config.Zonas['Miner3'].z - 1.0, 0, 0, 0, 0, 0, 0,2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner3'].x, Config.Zonas['Miner3'].y, Config.Zonas['Miner3'].z) < 3.0) then
               DrawText3D(Config.Zonas['Miner3'].x, Config.Zonas['Miner3'].y, Config.Zonas['Miner3'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol3)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip3)
                    blip4 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner4'].x, Config.Zonas['Miner4'].y, Config.Zonas['Miner4'].z)
                    SetBlipSprite(blip4, -570710357, 1)
                    Mina3 = false
                    Mina4 = true
                end
            end
        elseif Mina4 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner4'].x, Config.Zonas['Miner4'].y, Config.Zonas['Miner4'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner4'].x, Config.Zonas['Miner4'].y, Config.Zonas['Miner4'].z) < 3.0) then
             DrawText3D(Config.Zonas['Miner4'].x, Config.Zonas['Miner4'].y, Config.Zonas['Miner4'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol4)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip4)
                    blip5 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner5'].x, Config.Zonas['Miner5'].y, Config.Zonas['Miner5'].z)
                    SetBlipSprite(blip5, -570710357, 1)
                    Mina4 = false
                    Mina5 = true
                end
            end
        elseif Mina5 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner5'].x, Config.Zonas['Miner5'].y, Config.Zonas['Miner5'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner5'].x, Config.Zonas['Miner5'].y, Config.Zonas['Miner5'].z) < 3.0) then
           DrawText3D(Config.Zonas['Miner5'].x, Config.Zonas['Miner5'].y, Config.Zonas['Miner5'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol5)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip5)
                    blip6 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner6'].x, Config.Zonas['Miner6'].y, Config.Zonas['Miner6'].z)
                    SetBlipSprite(blip6, -570710357, 1)
                    Mina5 = false
                    Mina6 = true
                end
            end
        elseif Mina6 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner6'].x, Config.Zonas['Miner6'].y, Config.Zonas['Miner6'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner6'].x, Config.Zonas['Miner6'].y, Config.Zonas['Miner6'].z) < 3.0) then
              DrawText3D(Config.Zonas['Miner6'].x, Config.Zonas['Miner6'].y, Config.Zonas['Miner6'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol6)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip6)
                    blip7 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner7'].x, Config.Zonas['Miner7'].y, Config.Zonas['Miner7'].z)
                    SetBlipSprite(blip7, -570710357, 1)
                    Mina6 = false
                    Mina7 = true
                end
            end
        elseif Mina7 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner7'].x, Config.Zonas['Miner7'].y, Config.Zonas['Miner7'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner7'].x, Config.Zonas['Miner7'].y, Config.Zonas['Miner7'].z) < 3.0) then
               DrawText3D(Config.Zonas['Miner7'].x, Config.Zonas['Miner7'].y, Config.Zonas['Miner7'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol7)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip7)
                    blip8 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner8'].x, Config.Zonas['Miner8'].y, Config.Zonas['Miner8'].z)
                    SetBlipSprite(blip8, -570710357, 1)
                    Mina7 = false
                    Mina8 = true
                end
            end
        elseif Mina8 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner8'].x, Config.Zonas['Miner8'].y, Config.Zonas['Miner8'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner8'].x, Config.Zonas['Miner8'].y, Config.Zonas['Miner8'].z) < 3.0) then
               DrawText3D(Config.Zonas['Miner8'].x, Config.Zonas['Miner8'].y, Config.Zonas['Miner8'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol8)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip8)
                    blip9 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner9'].x, Config.Zonas['Miner9'].y, Config.Zonas['Miner9'].z)
                    SetBlipSprite(blip9, -570710357, 1)
                    Mina8 = false
                    Mina9 = true
                end
            end
        elseif Mina9 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner9'].x, Config.Zonas['Miner9'].y, Config.Zonas['Miner9'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner9'].x, Config.Zonas['Miner9'].y, Config.Zonas['Miner9'].z) < 3.0) then
               DrawText3D(Config.Zonas['Miner9'].x, Config.Zonas['Miner9'].y, Config.Zonas['Miner9'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol9)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['goto'], 'primary', 3000)
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    RemoveBlip(blip9)
                    blip10 = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner10'].x, Config.Zonas['Miner10'].y, Config.Zonas['Miner10'].z)
                    SetBlipSprite(blip10, -570710357, 1)
                    Mina9 = false
                    Mina10 = true
                end
            end
        elseif Mina10 and IsPedOnFoot(PlayerPedId()) then
            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, Config.Zonas['Miner10'].x, Config.Zonas['Miner10'].y, Config.Zonas['Miner10'].z - 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 5.5, 255, 255, 0, 155, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(pos.x, pos.y, pos.z, Config.Zonas['Miner10'].x, Config.Zonas['Miner10'].y, Config.Zonas['Miner10'].z) < 3.0) then
               DrawText3D(Config.Zonas['Miner10'].x, Config.Zonas['Miner10'].y, Config.Zonas['Miner10'].z, Language.translate[Config.lang]['press'])
                if IsControlJustPressed(0, 0xC7B5340A) then
                    animacion()
					Wait(10000)
                    animacion3(Arbol10)
                    TriggerEvent("MR_notification:warning", Language.translate[Config.lang]['noveh'], 5)
                    RSGCore.Functions.Notify(Language.translate[Config.lang]['carry'], 5, "success")
                    PlaySoundFrontend("Give_Item_Enter", "HUD_Donate_Sounds", true, 1)
                    
                    RemoveBlip(blip10)
                    Mina10 = false
                    FinMina = true
                end
            end
        elseif FinMina == true then
            TriggerServerEvent('MR_woodcutter:givewood')
            FinMina = false
             TriggerEvent('MR_woodcutter:rutafinal')
        end 
    end
    
end)

RegisterNetEvent('MR_woodcutter:rutafinal')
AddEventHandler('MR_woodcutter:rutafinal', function()
	Citizen.Wait(0)

	local jugador = PlayerPedId()
    StartGpsMultiRoute(6, true, true)
        
    -- Add the points
    AddPointToGpsMultiRoute(Config.Zonas['Entrega'].x, Config.Zonas['Entrega'].y, Config.Zonas['Entrega'].z)
    AddPointToGpsMultiRoute(Config.Zonas['Entrega'].x, Config.Zonas['Entrega'].y, Config.Zonas['Entrega'].z)

    -- Set the route to render
    SetGpsMultiRouteRender(true)
    
    
end)


--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    WarMenu.CreateMenu('perso', 'craft  weapon')
	WarMenu.CreateSubMenu('pp1', 'perso', 'craft  weapon')
	WarMenu.CreateSubMenu('pf1', 'perso', 'craft  weapon')
	WarMenu.CreateSubMenu('pd1', 'perso', 'craft  weapon')
	 while true do

        local ped = GetPlayerPed()
        local coords = GetEntityCoords(PlayerPedId())
-- Open
     if WarMenu.IsMenuOpened('perso') then
--	1 layer
		if WarMenu.MenuButton('Wood processing', 'pp1') then
		end
		if WarMenu.MenuButton('processing Wood stump ', 'pf1') then
		end
	    if WarMenu.MenuButton('processing wooden boards', 'pd1') then
		end
		if WarMenu.Button('Close') then
			Citizen.InvokeNative(0x7D9EFB7AD6B19754, ped, false)
			WarMenu.CloseMenu()
		end	
--	1.1 layer	
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('pp1') then
			if WarMenu.Button('processing') then
				WarMenu.CloseMenu()
				animacion2()
			    Wait(10000)
			   TriggerServerEvent('vane_processa:pietra1')
			end
			if WarMenu.Button('Back') then
				WarMenu.CloseMenu()
				WarMenu.OpenMenu('perso')
			end	
			if WarMenu.Button('Close') then
				Citizen.InvokeNative(0x7D9EFB7AD6B19754, ped, false)
				WarMenu.CloseMenu()
			end	
--- 1.2 layer			
				WarMenu.Display()
		elseif WarMenu.IsMenuOpened('pf1') then
			if WarMenu.Button('processing') then
				WarMenu.CloseMenu()
				animacion2()
				 Wait(10000)
			TriggerServerEvent('vane_processa:ferro1')
			end
			if WarMenu.Button('Back') then
				WarMenu.CloseMenu()
				WarMenu.OpenMenu('perso')
			end	
			if WarMenu.Button('Close') then
				Citizen.InvokeNative(0x7D9EFB7AD6B19754, ped, false)
				WarMenu.CloseMenu()
			end	
-- 1.3 layer		
		WarMenu.Display()
		elseif WarMenu.IsMenuOpened('pd1') then
			if WarMenu.Button('processing') then
				WarMenu.CloseMenu()
				animacion2()
				 Wait(10000)
			TriggerServerEvent('vane_processa:diamante1')
			end
			if WarMenu.Button('Back') then
				WarMenu.CloseMenu()
				WarMenu.OpenMenu('perso')
			end	
			if WarMenu.Button('Close') then
				Citizen.InvokeNative(0x7D9EFB7AD6B19754, ped, false)
				WarMenu.CloseMenu()
			end
-- blip		
			WarMenu.Display()
elseif (Vdist(coords.x, coords.y, coords.z, -1824.0, -423.5, 160.0 ) < 1.0) then 
               TriggerEvent("enter1:processominerali")
               if whenKeyJustPressed(key) and not WarMenu.IsMenuOpened('perso') then
			        TriggerEvent('vane_miniera1:open')
               end 
		
		end
		Citizen.Wait(0)
		
	end	
end)

RegisterNetEvent("enter1:processominerali")
  AddEventHandler("enter1:processominerali", function()
    SetTextScale(0.5, 0.5)
    local msg = 'Press [G] to work'
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

  RegisterNetEvent('vane_miniera1:open')
AddEventHandler('vane_miniera1:open', function(cb)
    ClearGpsMultiRoute()
	WarMenu.OpenMenu('perso')
end)

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x760A9C6F) then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
canProcess = false
RegisterNetEvent("checklogcl")
AddEventHandler("checklogcl", function(result)
    canProcess = result
end)

RegisterNetEvent('MR_woodcutter:comienzo')
AddEventHandler('MR_woodcutter:comienzo', function(source)
    PlaySoundFrontend("CHECKPOINT_PERFECT", "HUD_MINI_GAME_SOUNDSET", true, 1)
    RSGCore.Functions.Notify(Language.translate[Config.lang]['gopos'], 5, "success")
    blip = Citizen.InvokeNative(0x554d9d53f696d002, 203020899, Config.Zonas['Miner1'].x, Config.Zonas['Miner1'].y, Config.Zonas['Miner1'].z)
    SetBlipSprite(blip, -570710357, 1)
    PrimeraMina = true
    Mina1 = true
    SpawnearArboles("p_tree_pine_ponderosa_06") 
end)




function animacion()

    local playerPed = PlayerPedId()
    local prop_name = 'p_axe02x'
    local x,y,z = table.unpack(GetEntityCoords(playerPed))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetEntityBoneIndexByName(playerPed, "SKEL_R_Finger12")
    FreezeEntityPosition(playerPed, true)
    RequestAnimDict("amb_work@world_human_tree_chop@male_a@idle_b")
    while not HasAnimDictLoaded("amb_work@world_human_tree_chop@male_a@idle_b") do
        Citizen.Wait(100)
    end
    TaskPlayAnim(playerPed, "amb_work@world_human_tree_chop@male_a@idle_b", "idle_f", 8.0, -8.0, 10000, 0, 0, true, 0, false, 0, false)
    AttachEntityToEntity(prop, playerPed,boneIndex, 0.200, -0.0, 0.5010, 1.024, -160.0, -70.0, true, true, false, true, 1, true)
    RSGCore.Functions.Progressbar('wood-cutter', Language.translate[Config.lang]['mining'], 10000, false, true, {
		disableMovement = true,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function() 
	FreezeEntityPosition(playerPed, false)	
    ClearPedSecondaryTask(playerPed)
    DeleteObject(prop)
	end)
end


function animacion2()
    RequestAnimDict("amb_work@world_human_wood_plane@working@male_a@base")
    while not HasAnimDictLoaded("amb_work@world_human_wood_plane@working@male_a@base") do
        Citizen.Wait(1)
		RequestAnimDict("amb_work@world_human_wood_plane@working@male_a@base")
    end
	while not HasModelLoaded("p_woodplane01x") do
	   RequestModel("p_woodplane01x")
	   Citizen.Wait(1)
	end
    TaskPlayAnim(PlayerPedId(), "amb_work@world_human_wood_plane@working@male_a@base", "base", 1.0, 8.0, -1, 1, 0, false, 0, false, 0, false)
	local object = CreateObject("p_woodplane01x", x, y, z, true, true, true)
	AttachEntityToEntity(object, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 0, 0, 1)
   	RSGCore.Functions.Progressbar('wood-cutter', Language.translate[Config.lang]['placing'], 10000, false, true, {
		disableMovement = true,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function() 
    Wait(10000)
	DeleteObject(object)
	ClearPedTasks(PlayerPedId())
end)
end

	
function animacion3(object)
    local rot = 1.01
    while true do
        Wait(10)
        rot = rot + 1
        SetEntityRotation(object, rot, 0.0, 0.0, 1, true)
        if(rot >= 90) then
            break
        end

    end
    DeleteObject(object)
end

function SpawnearArboles(hash)
    local obj = GetHashKey(hash)
    Wait(500)
    RequestModel(obj)
    if not HasModelLoaded(obj) then 
        RequestModel(obj) 
    end

    while not HasModelLoaded(obj) do 
        Citizen.Wait(1) 
    end

    Arbol1 = CreateObject(obj, Config.Zonas['Miner1'].x, Config.Zonas['Miner1'].y, Config.Zonas['Miner1'].z +1.0, true, true, true)
    Arbol2 = CreateObject(obj, Config.Zonas['Miner2'].x, Config.Zonas['Miner2'].y, Config.Zonas['Miner2'].z +1.0, true, true, true)
    Arbol3 = CreateObject(obj, Config.Zonas['Miner3'].x, Config.Zonas['Miner3'].y, Config.Zonas['Miner3'].z +1.0, true, true, true)
    Arbol4 = CreateObject(obj, Config.Zonas['Miner4'].x, Config.Zonas['Miner4'].y, Config.Zonas['Miner4'].z +1.0, true, true, true)
    Arbol5 = CreateObject(obj, Config.Zonas['Miner5'].x, Config.Zonas['Miner5'].y, Config.Zonas['Miner5'].z +1.0, true, true, true)
    Arbol6 = CreateObject(obj, Config.Zonas['Miner6'].x, Config.Zonas['Miner6'].y, Config.Zonas['Miner6'].z +1.0, true, true, true)
    Arbol7 = CreateObject(obj, Config.Zonas['Miner7'].x, Config.Zonas['Miner7'].y, Config.Zonas['Miner7'].z +1.0, true, true, true)
    Arbol8 = CreateObject(obj, Config.Zonas['Miner8'].x, Config.Zonas['Miner8'].y, Config.Zonas['Miner8'].z +1.0, true, true, true)
    Arbol9 = CreateObject(obj, Config.Zonas['Miner9'].x, Config.Zonas['Miner9'].y, Config.Zonas['Miner9'].z +1.0, true, true, true)
    Arbol10 = CreateObject(obj, Config.Zonas['Miner10'].x, Config.Zonas['Miner10'].y, Config.Zonas['Miner10'].z +1.0, true, true, true)
    PlaceObjectOnGroundProperly(Arbol1)
    PlaceObjectOnGroundProperly(Arbol2)
    PlaceObjectOnGroundProperly(Arbol3)
    PlaceObjectOnGroundProperly(Arbol4)
    PlaceObjectOnGroundProperly(Arbol5)
    PlaceObjectOnGroundProperly(Arbol6)
    PlaceObjectOnGroundProperly(Arbol7)
    PlaceObjectOnGroundProperly(Arbol8)
    PlaceObjectOnGroundProperly(Arbol9)
    PlaceObjectOnGroundProperly(Arbol10)
    SetEntityAsMissionEntity(Arbol1, true)
    SetEntityAsMissionEntity(Arbol2, true)
    SetEntityAsMissionEntity(Arbol3, true)
    SetEntityAsMissionEntity(Arbol4, true)
    SetEntityAsMissionEntity(Arbol5, true)
    SetEntityAsMissionEntity(Arbol6, true)
    SetEntityAsMissionEntity(Arbol7, true)
    SetEntityAsMissionEntity(Arbol8, true)
    SetEntityAsMissionEntity(Arbol9, true)
    SetEntityAsMissionEntity(Arbol10, true)


end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 14);
    DisplayText(str, x, y)
end

function CreateVarString(p0, p1, variadic)
    return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
end



function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoord())
    
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(1)
    SetTextColor(255, 255, 255, 215)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 14);
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
    local factor = (string.len(text)) / 150
  
end