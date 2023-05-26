local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('woodcutter:checkjob')
AddEventHandler('woodcutter:checkjob', function() 
    local _source = source
    local Player = RSGCore.Functions.GetPlayer(source)

            TriggerClientEvent('MR_woodcutter:comienzo',_source)
            RSGCore.Functions.Notify( _source, "Go to the specified position", 'primary', 3000)
         
end)

RegisterServerEvent('MR_woodcutter:givewood')
AddEventHandler('MR_woodcutter:givewood', function()
    local _source = source
    local Player = RSGCore.Functions.GetPlayer(source)
    math.randomseed(os.time())
    local item1 = math.random(1,5)
    local item2 = math.random(2,5)
    local item3 = math.random(3,5)

    Player.Functions.AddItem('wood', item1)
	
    Player.Functions.AddItem('woodlog', item2)
    
    Player.Functions.AddItem('woodplank', item3)
    TriggerClientEvent("inventory:client:ItemBox", _source, RSGCore.Shared.Items['woodplank'], "add")
  TriggerClientEvent("inventory:client:ItemBox", _source, RSGCore.Shared.Items['wood'], "add")
TriggerClientEvent("inventory:client:ItemBox", _source, RSGCore.Shared.Items['woodlog'], "add")
end)
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vane_processa:pietra1")
AddEventHandler("vane_processa:pietra1", function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(source)
    local hasitem = Player.Functions.GetItemByName("wood")
        if hasitem and hasitem.amount >= 5 then 
            count = hasitem.amount
			
			 Player.Functions.RemoveItem('wood', 5)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['wood'], 'remove')
			 Player.Functions.AddItem('frame',1)
TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['frame'], "add")
             Player.Functions.AddMoney('cash', 5)
			RSGCore.Functions.Notify( source, "I processed the wood", 'primary', 3000)
		else
			RSGCore.Functions.Notify( source, "You don t have enough materials", 'primary', 3000)
		end
end)


RegisterServerEvent("vane_processa:ferro1")
AddEventHandler("vane_processa:ferro1", function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(source)
    local hasitem = Player.Functions.GetItemByName("woodlog")
        if hasitem and hasitem.amount >= 5 then 
            count = hasitem.amount
			
			 Player.Functions.RemoveItem('woodlog', 5)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['woodlog'], 'remove')
			 Player.Functions.AddItem('grip',1)
TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['grip'], "add")
            Player.Functions.AddMoney('cash', 5)
			RSGCore.Functions.Notify( source, "I have processed some logs", 'primary', 3000)
		else
			RSGCore.Functions.Notify( source, "You don t have enough materials", 'primary', 3000)
		end
end)

RegisterServerEvent("vane_processa:diamante1")
AddEventHandler("vane_processa:diamante1", function()
	local src = source
    local Player = RSGCore.Functions.GetPlayer(source)
    local hasitem = Player.Functions.GetItemByName("woodplank")
        if hasitem and hasitem.amount >= 5 then 
            count = hasitem.amount
			 Player.Functions.RemoveItem('woodplank', 5)
TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items['woodplank'], 'remove')
			 Player.Functions.AddItem('stock',1)
TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['stock'], "add")
			Player.Functions.AddMoney('cash', 5)
			RSGCore.Functions.Notify( source, "I have processed some wooden boards", 'primary', 3000)
		else
			RSGCore.Functions.Notify( source, "You don t have enough materials", 'primary', 3000)
		end

end)

