local CurrentActionData, dragStatus = {}, {}
local HasAlreadyEnteredMarker, isBussy, isHandcuffed = false, false, false
local LastStation, LastPart, CurrentAction, CurrentZone
dragStatus.isDragged = false
local CurrentlyTowedVehicle = nil
local ESXLoaded = false
local CurrentJob = nil
ESX = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent(Config.GetClientESXEvent, function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
	ESXLoaded = true
	refreshBlips()
end)

local jobBlips = {}

function refreshBlips()
	for i=1, #jobBlips do
		RemoveBlip(jobBlips[i])
	end
	if Config.Blips then
		for k,v in pairs(Config.Blips) do
			if v.Jobs and type(v.Jobs == 'table') and v.Jobs[ESX.PlayerData.job.name] then
				local blip = AddBlipForCoord(v.BlipCoords)
				SetBlipSprite (blip, v.Sprite)
				SetBlipDisplay(blip, v.Display)
				SetBlipScale  (blip, v.Scale)
				SetBlipColour (blip, v.Colour)
				SetBlipAsShortRange(blip, true)

				BeginTextCommandSetBlipName('STRING')
				AddTextComponentSubstringPlayerName(v.Name)
				EndTextCommandSetBlipName(blip)
				table.insert(jobBlips, blip)
			end
		end
	end

end

RegisterNetEvent(Config.customEvents['esx:setJob'])
AddEventHandler(Config.customEvents['esx:setJob'], function(job)
	ESX.PlayerData.job = job
	TriggerServerEvent("sqz_unijob:getCollectPoints")
	isBussy = false
	CurrentAction = nil
	TriggerServerEvent("sqz_unijob:StopSelling")
	refreshBlips()

	if Config.NonJobActions and Config.NonJobActions.Enabled then
		local allowed = false
		for k, v in pairs(Config.NonJobActions.Jobs) do
			if Config.Jobs[k] and Config.Jobs[k].CollectPoints and #Config.Jobs[k].CollectPoints > 0 then
				allowed = k
				break
			end
		end
		if allowed and not Config.Jobs[ESX.PlayerData.job.name] and Config.Jobs[allowed] and Config.Jobs[allowed].CollectPoints and #Config.Jobs[allowed].CollectPoints > 0 then
			TriggerServerEvent("sqz_unijob:getCollectPoints", allowed)
		end
	end
end)

Citizen.CreateThread(function()
	if Config.Blips then
		for k,v in pairs(Config.Blips) do
			if not v.Jobs or v.Jobs == 'none' then
				local blip = AddBlipForCoord(v.BlipCoords)
				SetBlipSprite (blip, v.Sprite)
				SetBlipDisplay(blip, v.Display)
				SetBlipScale  (blip, v.Scale)
				SetBlipColour (blip, v.Colour)
				SetBlipAsShortRange(blip, true)

				BeginTextCommandSetBlipName('STRING')
				AddTextComponentSubstringPlayerName(v.Name)
				EndTextCommandSetBlipName(blip)
			end
		end
	end
end)

function OpenCloakRoomMenu()
	local elements = {}

	local ready = false
	local attempt = 0

	ESX.TriggerServerCallback('sqz_unijob:GetPlayerDressing', function(dressing)

		for i=1, #dressing, 1 do
			table.insert(elements, {label = dressing[i], value = i})
		end

		ready = true

	end)

	while not ready and attempt < 100 do
		attempt = attempt + 1
		Wait(1)
	end

	if Config.Jobs[ESX.PlayerData.job.name].DefaultClothes then

		for k, v in pairs(Config.Jobs[ESX.PlayerData.job.name].DefaultClothes) do
			if type(v) == 'table' and (v.JobGrades == 'all' or v.JobGrades[ESX.PlayerData.job.grade_name]) then
				if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
					table.insert(elements, {label = k, value = v.male, isNpc = true})
				else
					table.insert(elements, {label = k, value = v.female, isNpc = true})
				end
			end
		end

		if Config.Jobs[ESX.PlayerData.job.name].DefaultClothes.ReloadSkin then
			table.insert(elements, {label = Config.Jobs[ESX.PlayerData.job.name].DefaultClothes.ReloadSkin, isNpc = 'reload'})
		end

	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'player_dressing', {
		title    = _U('player_clothes'),
		align    = Config.MenuAlign,
		elements = elements,
		}, function(data, menu)

			if data.current.isNpc == 'reload' then
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
					TriggerEvent('skinchanger:loadSkin', skin)
				end)
			elseif data.current.isNpc then
				TriggerEvent('skinchanger:getSkin', function(skin)
					TriggerEvent('skinchanger:loadClothes', skin, data.current.value)
				end)
			else
				TriggerEvent('skinchanger:getSkin', function(skin)

					ESX.TriggerServerCallback('sqz_unijob:GetPlayerOutfit', function(clothes)

						TriggerEvent('skinchanger:loadClothes', skin, clothes)
						TriggerEvent('esx_skin:setLastSkin', skin)

						TriggerEvent('skinchanger:getSkin', function(skin)
							TriggerServerEvent('esx_skin:save', skin)
						end)

						TriggerEvent('sqz_unijob:sendClientNotify', _U('loaded_outfit'))
					end, data.current.value)
				end)
			end

		end, function(data, menu)
		menu.close()

		CurrentAction     = 'menu_cloakroom'
		CurrentActionData = {}
		end
	)
end

function OpenBuyItemsMenu(station)
	local elements = {}
	local playerPed = PlayerPedId()
	local shopzones = Config.Jobs[ESX.PlayerData.job.name].Zones[station].ShopItems.shared
	if shopzones then

		for k,v in pairs(shopzones) do

			table.insert(elements, {
				label      = ('%s - <span style="color:green;">%s</span>'):format(v.label, _U('shop_item', ESX.Math.GroupDigits(v.price))),
				itemLabel = v.label,
				item       = v.item,
				price      = v.price,

				-- menu properties
				value      = 1,
				type       = 'slider',
				min        = 1,
				max        = 100
			})
		end

	end

	local shopzones2 = Config.Jobs[ESX.PlayerData.job.name].Zones[station].ShopItems[ESX.PlayerData.job.grade_name]

	if shopzones2 then

		for k,v in pairs(shopzones2) do

			table.insert(elements, {
				label      = ('%s - <span style="color:green;">%s</span>'):format(v.label, _U('shop_item', ESX.Math.GroupDigits(v.price))),
				itemLabel = v.label,
				item       = v.item,
				price      = v.price,

				-- menu properties
				value      = 1,
				type       = 'slider',
				min        = 1,
				max        = 100
			})
		end

	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
		title    = _U('job_shop'),
		align    = Config.MenuAlign,
		elements = elements
	}, function(data, menu)
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
			title    = _U('shop_confirm', data.current.value, data.current.itemLabel, ESX.Math.GroupDigits(data.current.price * data.current.value)),
			align    = Config.MenuAlign,
			elements = {
				{label = _U('no'),  value = 'no'},
				{label = _U('yes'), value = 'yes'}
		}}, function(data2, menu2)
			if data2.current.value == 'yes' then
				local price = data.current.price * data.current.value
				TriggerServerEvent('sqz_unijob:buyItem', data.current.item, data.current.value, price)
			end

			menu2.close()
		end, function(data2, menu2)
			menu2.close()
		end)
	end, function(data, menu)
		menu.close()
	end)
end

function OpenBuyWeaponsMenu()
	local elements = {}
	local playerPed = PlayerPedId()

	if Config.Jobs[ESX.PlayerData.job.name].AuthorizedWeapons.shared then

		for k,v in ipairs(Config.Jobs[ESX.PlayerData.job.name].AuthorizedWeapons.shared) do
			local weaponNum, weapon = ESX.GetWeapon(v.weapon)
			local components, label = {}
			local hasWeapon = HasPedGotWeapon(playerPed, GetHashKey(v.weapon), false)

			if v.components then
				for i=1, #v.components do
					if v.components[i] then
						local component = weapon.components[i]
						local hasComponent = HasPedGotWeaponComponent(playerPed, GetHashKey(v.weapon), component.hash)

						if hasComponent then
							label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_owned'))
						else
							if v.components[i] > 0 then
								label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_item', ESX.Math.GroupDigits(v.components[i])))
							else
								label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_free'))
							end
						end

						table.insert(components, {
							label = label,
							componentLabel = component.label,
							hash = component.hash,
							name = component.name,
							price = v.components[i],
							hasComponent = hasComponent,
							componentNum = i
						})
					end
				end
			end

			if hasWeapon and v.components then
				label = ('%s: <span style="color:green;">></span>'):format(weapon.label)
			elseif hasWeapon and not v.components then
				label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_owned'))
			else
				if v.price > 0 then
					label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_item', ESX.Math.GroupDigits(v.price)))
				else
					label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_free'))
				end
			end

			table.insert(elements, {
				label = label,
				weaponLabel = weapon.label,
				name = weapon.name,
				components = components,
				price = v.price,
				hasWeapon = hasWeapon
			})
		end

	end

	if Config.Jobs[ESX.PlayerData.job.name].AuthorizedWeapons[ESX.PlayerData.job.grade_name] then

		for k,v in ipairs(Config.Jobs[ESX.PlayerData.job.name].AuthorizedWeapons[ESX.PlayerData.job.grade_name]) do
			local weaponNum, weapon = ESX.GetWeapon(v.weapon)
			local components, label = {}
			local hasWeapon = HasPedGotWeapon(playerPed, GetHashKey(v.weapon), false)

			if v.components then
				for i=1, #v.components do
					if v.components[i] then
						local component = weapon.components[i]
						local hasComponent = HasPedGotWeaponComponent(playerPed, GetHashKey(v.weapon), component.hash)

						if hasComponent then
							label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_owned'))
						else
							if v.components[i] > 0 then
								label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_item', ESX.Math.GroupDigits(v.components[i])))
							else
								label = ('%s: <span style="color:green;">%s</span>'):format(component.label, _U('armory_free'))
							end
						end

						table.insert(components, {
							label = label,
							componentLabel = component.label,
							hash = component.hash,
							name = component.name,
							price = v.components[i],
							hasComponent = hasComponent,
							componentNum = i
						})
					end
				end
			end

			if hasWeapon and v.components then
				label = ('%s: <span style="color:green;">></span>'):format(weapon.label)
			elseif hasWeapon and not v.components then
				label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_owned'))
			else
				if v.price > 0 then
					label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_item', ESX.Math.GroupDigits(v.price)))
				else
					label = ('%s: <span style="color:green;">%s</span>'):format(weapon.label, _U('armory_free'))
				end
			end

			table.insert(elements, {
				label = label,
				weaponLabel = weapon.label,
				name = weapon.name,
				components = components,
				price = v.price,
				hasWeapon = hasWeapon
			})
		end

	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_buy_weapons', {
		title    = _U('armory_weapontitle'),
		align    = Config.MenuAlign,
		elements = elements
	}, function(data, menu)
		if data.current.hasWeapon then
			if #data.current.components > 0 then
				OpenWeaponComponentShop(data.current.components, data.current.name, menu)
			end
		else
			ESX.TriggerServerCallback('sqz_unijob:buyWeapon', function(bought)
				if bought then
					if data.current.price > 0 then
						TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_bought', data.current.weaponLabel, ESX.Math.GroupDigits(data.current.price)))
					end

					menu.close()
					OpenBuyWeaponsMenu()
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_money'))
				end
			end, data.current.name, 1)
		end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenWeaponComponentShop(components, weaponName, parentShop)
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_buy_weapons_components', {
		title    = _U('armory_componenttitle'),
		align    = Config.MenuAlign,
		elements = components
	}, function(data, menu)
		if data.current.hasComponent then
			TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_hascomponent'))
		else
			ESX.TriggerServerCallback('sqz_unijob:buyWeapon', function(bought)
				if bought then
					if data.current.price > 0 then
						TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_bought', data.current.componentLabel, ESX.Math.GroupDigits(data.current.price)))
					end

					menu.close()
					parentShop.close()
					OpenBuyWeaponsMenu()
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_money'))
				end
			end, weaponName, 2, data.current.componentNum)
		end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenPutStocksMenu(station)
	ESX.TriggerServerCallback('sqz_unijob:getPlayerInventory', function(inventory)
		local elements = {}

		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, { label = item.label .. ' | ' .. item.count .. 'x', count = item.count, name = item.name, label2 = item.label, type = "item"})
			end
		end

		for i=1, #inventory.accounts, 1 do
			local account = inventory.accounts[i]

			if Config.AlloweAccountsToDeposit[account.name] then

				if account.money > 0 then
					table.insert(elements, { label = account.label .. ' | ' .. account.money .. 'x', count = account.count, name = account.name, label2 = account.label, type = "account"})
				end

			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
			title    = _U('inventory'),
			align    = Config.MenuAlign,
			elements = elements
		}, function(data, menu)
			local itemName = data.current.name
			local itemLabel = data.current.label2

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
				title = _U('quantity')
			}, function(data2, menu2)
				local count = tonumber(data2.value)
				if not count then
					TriggerEvent('sqz_unijob:sendClientNotify', _U('quantity_invalid'))
				else
					ESX.UI.Menu.CloseAll()

					if Config.UseAnimations then
						RequestAnimDict("mp_cop_armoury")
						while not HasAnimDictLoaded("mp_cop_armoury") do
							Wait(100)
						end
						TaskPlayAnim(PlayerPedId(), "mp_cop_armoury", "package_from_counter", 8.0, -8.0, 5000, 0, 0)
					end

					local item_id = math.random(1, 9^9)
					TriggerServerEvent('sqz_unijob:putStockItems', itemName, count, itemLabel, station, data.current.type, item_id)
					Wait(5000)
					OpenArmoryMenu(CurrentActionData.station, CurrentActionData.partNum)
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function OpenGetWeaponMenu(station)

	ESX.TriggerServerCallback('sqz_unijob:CheckOpenInventory', function(canBeOpened)

		if canBeOpened then

			TriggerServerEvent('sqz_unijob:InventoryOpenedSuccesfully', station..'_society_'..ESX.PlayerData.job.name)
			ESX.TriggerServerCallback('sqz_unijob:getArmoryWeapons', function(weapons)
				local elements = {}


				for i=1, #weapons, 1 do
					table.insert(elements, {label = weapons[i].label .. ' | ' .. weapons[i].count .. 'x', value = weapons[i].item, count = weapons[i].count, item_id = weapons[i].item_id})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_get_weapon', {
					title    = _U('get_weapon_menu'),
					align    = Config.MenuAlign,
					elements = elements
				}, function(data, menu)
					ESX.UI.Menu.CloseAll()

					if Config.UseAnimations then
						RequestAnimDict("mp_cop_armoury")
						while not HasAnimDictLoaded("mp_cop_armoury") do
							Wait(100)
						end
						TaskPlayAnim(PlayerPedId(), "mp_cop_armoury", "package_from_counter", 8.0, -8.0, 5000, 0, 0)
					end

					TriggerServerEvent('sqz_unijob:getStockItem', data.current.value, data.current.count, station, "weapon", data.current.item_id)
					TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', station..'_society_'..ESX.PlayerData.job.name)
					Wait(5000)
					OpenArmoryMenu(CurrentActionData.station, CurrentActionData.partNum)
				end, function(data, menu)
					menu.close()
					TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', station..'_society_'..ESX.PlayerData.job.name)
				end)
			end, station)
		else
			TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_opened'))
		end
	end, station..'_society_'..ESX.PlayerData.job.name)
end

function OpenGetStocksMenu(station)

	ESX.TriggerServerCallback('sqz_unijob:CheckOpenInventory', function(canBeOpened)

		if canBeOpened then

			TriggerServerEvent('sqz_unijob:InventoryOpenedSuccesfully', station..'_society_'..ESX.PlayerData.job.name)

			ESX.TriggerServerCallback('sqz_unijob:getStockItems', function(items)
				local elements = {}

				for i=1, #items, 1 do
					table.insert(elements, {label = items[i].label .. ' | ' .. items[i].count .. 'x', value = items[i].item, count = items[i].count, type = items[i].type})
				end
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
					title    = _U('stock'),
					align    = Config.MenuAlign,
					elements = elements
				}, function(data, menu)
					local itemName = data.current.value

					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
						title = _U('quantity')
					}, function(data2, menu2)
						local count = tonumber(data2.value)

						if not count or type(count) ~= "number" then
							TriggerEvent('sqz_unijob:sendClientNotify', _U('quantity_invalid'))
						else

							if count <= tonumber(data.current.count) then

								if Config.UseAnimations then
									RequestAnimDict("mp_cop_armoury")
									while not HasAnimDictLoaded("mp_cop_armoury") do
										Wait(100)
									end
									TaskPlayAnim(PlayerPedId(), "mp_cop_armoury", "package_from_counter", 8.0, -8.0, 5000, 0, 0)
								end

								TriggerServerEvent('sqz_unijob:getStockItem', itemName, count, station, data.current.type)
								TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', station..'_society_'..ESX.PlayerData.job.name)

								ESX.UI.Menu.CloseAll()

								Citizen.Wait(5000)
								OpenArmoryMenu(CurrentActionData.station, CurrentActionData.partNum)

							else
								TriggerEvent('sqz_unijob:sendClientNotify', _U('quantity_invalid'))
							end
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				end, function(data, menu)
					menu.close()
					TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', station..'_society_'..ESX.PlayerData.job.name)
				end)
			end, station)
		else
			TriggerEvent('sqz_unijob:sendClientNotify', _U('armory_opened'))
		end
	end, station..'_society_'..ESX.PlayerData.job.name)
end

function OpenPutWeaponMenu(station)
	local elements   = {}
	local playerPed  = PlayerPedId()
	local weaponList = ESX.GetWeaponList()

	for i=1, #weaponList, 1 do
		local weaponHash = GetHashKey(weaponList[i].name)
		local ammo = GetAmmoInPedWeapon(GetPlayerPed(-1), weaponHash)

		if HasPedGotWeapon(GetPlayerPed(-1), weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
			table.insert(elements, {label = weaponList[i].label .. ' | ' .. ammo .. 'x', name = weaponList[i].name, count = ammo, label2 = weaponList[i].label})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_put_weapon', {
		title    = _U('put_weapon_menu'),
		align    = Config.MenuAlign,
		elements = elements
	}, function(data, menu)
		ESX.UI.Menu.CloseAll()

		if Config.UseAnimations then
			RequestAnimDict("mp_cop_armoury")
			while not HasAnimDictLoaded("mp_cop_armoury") do
				Wait(100)
			end
			TaskPlayAnim(PlayerPedId(), "mp_cop_armoury", "package_from_counter", 8.0, -8.0, 5000, 0, 0)
		end

		local item_id = math.random(1, 9^9)
		TriggerServerEvent('sqz_unijob:putStockItems', data.current.name, data.current.count, data.current.label2, station, "weapon", item_id)

		Citizen.Wait(5000)
		OpenArmoryMenu(CurrentActionData.station, CurrentActionData.partNum)

	end, function(data, menu)
		menu.close()
	end)

end

function OpenArmoryMenu(station)
	local elements = {}

	if Config.Jobs[ESX.PlayerData.job.name].Zones[station].BuyWeapon and ESX.PlayerData.job.grade >= Config.Jobs[ESX.PlayerData.job.name].Zones[station].BuyWeaponGrade then
		table.insert(elements, {label = _U('buy_weapon'),     value = 'buy_weapons'})
	end

	if ESX.PlayerData.job.grade >= Config.Jobs[ESX.PlayerData.job.name].Zones[station].GetWeaponGrade then
		table.insert(elements, {label = _U('put_weapon'),     value = 'put_weapon'})
		table.insert(elements, {label = _U('get_weapon'),     value = 'get_weapon'})
	end

	if ESX.PlayerData.job.grade >= Config.Jobs[ESX.PlayerData.job.name].Zones[station].GetStockGrade then
		table.insert(elements, {label = _U('deposit_object'),     value = 'put_stock'})
		table.insert(elements, {label = _U('get_stock'),     value = 'get_stock'})
	end

	if Config.Jobs[ESX.PlayerData.job.name].Zones[station].BuyItems then
		table.insert(elements, {label = _U('buy_items'),     value = 'buy_items'})
	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory', {
		title    = _U('armory'),
		align    = Config.MenuAlign,
		elements = elements
	}, function(data, menu)

		if data.current.value == 'get_weapon' then
			if type(Config.UseCustomGetWeaponsMenu) == "boolean" then
				if Config.UseCustomGetWeaponsMenu then
					TriggerEvent('sqz_unijob:GetWeaponsCustomMenu', station)
				else
					OpenGetWeaponMenu(station)
				end
			else
				local s,e=pcall(function()error({c='^1['..GetCurrentResourceName()..'] Config.UseCustomGetWeaponsMenu is not a bolean value, contact the server owner please.^0'})end)print(e.c)
			end
		elseif data.current.value == 'put_weapon' then
			if type(Config.UseCustomOpenMenuWeapons) == "boolean" then
				if Config.UseCustomOpenMenuWeapons then
					TriggerEvent('sqz_unijob:OpenCustomPutWeaponMenu', station)
				else
					OpenPutWeaponMenu(station)
				end
			else
				local s,e=pcall(function()error({c='^1['..GetCurrentResourceName()..'] Config.UseCustomOpenMenuWeapons is not a bolean value, contact the server owner please.^0'})end)print(e.c)
			end
		elseif data.current.value == 'buy_weapons' then
			OpenBuyWeaponsMenu(station)
		elseif data.current.value == 'put_stock' then
			if type(Config.UseCustomOpenMenuInventory) == "boolean" then
				if Config.UseCustomOpenMenuInventory then
					TriggerEvent('sqz_unijob:OpenCustomPutStockMenu', station)
				else
					OpenPutStocksMenu(station)
				end
			else
				local s,e=pcall(function()error({c='^1['..GetCurrentResourceName()..'] Config.UseCustomOpenMenuInventory is not a bolean value, contact the server owner please.^0'})end)print(e.c)
			end
		elseif data.current.value == 'get_stock' then
			if type(Config.UseCustomGetItemsMenu) == "boolean" then
				if Config.UseCustomGetItemsMenu then
					TriggerEvent('sqz_unijob:GetItemsCustomMenu', station)
				else
					OpenGetStocksMenu(station)
				end
			else
				local s,e=pcall(function()error({c='^1['..GetCurrentResourceName()..'] Config.UseCustomGetItemsMenu is not a bolean value, contact the server owner please.^0'})end)print(e.c)
			end
		elseif data.current.value == 'buy_items' then
			OpenBuyItemsMenu(station)
		end

	end, function(data, menu)
		menu.close()

		CurrentAction     = 'menu_armory'
		CurrentActionData = {station = station}
	end)
end

local nearestCoords
local timeToWait = 500

Citizen.CreateThread(function()

    while true do
        Wait(500)
        if nearestCoords then
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            if #(pedCoords - nearestCoords) > Config.DrawDistance then
                nearestCoords = nil
                timeToWait = 500
            else
                Wait(500)
            end
        else
            Wait(500)
        end
    end

end)

if Config.NonJobActions and Config.NonJobActions.Enabled then
	Citizen.CreateThread(function()
		while not ESXLoaded do Wait(0) end

		while true do
			Wait(timeToWait)
			if Config.NonJobActions.Jobs and not Config.Jobs[ESX.PlayerData.job.name] then
				local isInMarker, hasExited, letSleep = false, false, true
				local CurrentZoneIndex, CurrentPartNum

				for l, m in pairs(Config.NonJobActions.Jobs) do

					local playerCoords = GetEntityCoords(PlayerPedId())
					local zones = Config.Jobs[l].Zones

					for k,v in pairs(zones) do
						if Config.NonJobActions.AllowedActions and Config.NonJobActions.AllowedActions[v.Type] then
							local distance = #(playerCoords - vector3(v.Pos.x, v.Pos.y, v.Pos.z))
							if (v.Marker ~= -1 and distance < Config.DrawDistance) then
								letSleep = false

								if not nearestCoords then
									nearestCoords = vector3(v.Pos.x, v.Pos.y, v.Pos.z)
									timeToWait = 0
								end

								if not Config.UseCustomMarkers then
									DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0, 0, 0, 0, 0, 0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, v.BouncingMarker, true, 2, v.RotatingMarker, nil, nil, false)
									if distance < Config.DrawTextDistance and v.Draw3DText then
										DrawText3Ds(v.Pos.x, v.Pos.y, v.Pos.z + 0.4, tostring(v.MotionText))
									end
								else
									if distance < Config.CustomMarkerDistance then
										DrawCustomMarkers(v)
									end
								end
							end
							if distance < v.Size.x then
								CurrentPartNum = v
								DisableControlAction(0, 73, true)
								letSleep, isInMarker, CurrentZone, CurrentZoneIndex, CurrentJob = false, true, v, k, l
							end
						end
					end
				end
				if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= CurrentZone or LastPart ~= CurrentZoneIndex)) then

					if (LastStation and LastPart) and
						(LastStation ~= CurrentZone or LastPart ~= CurrentZoneIndex) then
						hasExited, CurrentAction, CurrentJob = true, nil, nil
						ESX.UI.Menu.CloseAll()
					end

					HasAlreadyEnteredMarker = true
					LastStation2             = CurrentZone2
					LastPart2                = CurrentZoneIndex
					TriggerEvent('sqz_unijob:hasEnteredMarker', CurrentZoneIndex, CurrentZone, CurrentPartNum)

				end
				if not hasExited and not isInMarker and HasAlreadyEnteredMarker then
					if CurrentActionData and CurrentActionData.station then
						TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', CurrentActionData.station..'_society_'..ESX.PlayerData.job.name)
					end
					HasAlreadyEnteredMarker = false
					hasExited, CurrentAction = true, nil
					ESX.UI.Menu.CloseAll()
					isBussy = false
					TriggerServerEvent("sqz_unijob:StopSelling")
				end
				if letSleep then
					Citizen.Wait(500)
				end

			end
		end

	end)

end

Citizen.CreateThread(function()
	while not ESXLoaded do Wait(0) end
	if Config.Jobs[ESX.PlayerData.job.name] and Config.Jobs[ESX.PlayerData.job.name].CollectPoints then
		TriggerServerEvent("sqz_unijob:getCollectPoints")
	end
	while true do
		Citizen.Wait(timeToWait)
		if Config.Jobs[ESX.PlayerData.job.name] then
			local playerCoords = GetEntityCoords(PlayerPedId())
			local CurrentZoneIndex, CurrentPartNum
			local zones = nil
			local isInMarker, hasExited, letSleep = false, false, true
			zones = Config.Jobs[ESX.PlayerData.job.name].Zones

			for k,v in pairs(zones) do

				local distance = #(playerCoords - vector3(v.Pos.x, v.Pos.y, v.Pos.z))
				if (v.Marker ~= -1 and distance < Config.DrawDistance) and (v.Type == 'BossActions' and (Config.BossMenuOnlyBoss and Config.BossGrades[ESX.PlayerData.job.grade_name] or not Config.BossMenuOnlyBoss) or v.Type ~= 'BossActions')  then
					letSleep = false

					if not nearestCoords then
						nearestCoords = vector3(v.Pos.x, v.Pos.y, v.Pos.z)
						timeToWait = 0
					end
					if not Config.UseCustomMarkers then
						if not Config.ChangeMarkerWhenNear then
							DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0, 0, 0, 0, 0, 0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, v.BouncingMarker, true, 2, v.RotatingMarker, nil, nil, false)
							if distance < Config.DrawTextDistance and v.Draw3DText then
								DrawText3Ds(v.Pos.x, v.Pos.y, v.Pos.z + 0.4, tostring(v.MotionText))
							end
						else
							if distance > v.Size.x then
								DrawMarker(Config.DefaultMarker.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0, 0, 0, 0, 0, 0, Config.DefaultMarker.Size.x, Config.DefaultMarker.Size.y, Config.DefaultMarker.Size.z, Config.DefaultMarker.Color.r, Config.DefaultMarker.Color.g, Config.DefaultMarker.Color.b, 100, Config.DefaultMarker.BouncingMarker, true, 2, Config.DefaultMarker.RotatingMarker, nil, nil, false)
							else
								DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0, 0, 0, 0, 0, 0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, v.BouncingMarker, true, 2, v.RotatingMarker, nil, nil, false)
							end
							if distance < Config.DrawTextDistance and v.Draw3DText then
								DrawText3Ds(v.Pos.x, v.Pos.y, v.Pos.z + 0.4, tostring(v.MotionText))
							end

						end
					else
						if distance < Config.CustomMarkerDistance then
							DrawCustomMarkers(v)
						end
					end
				end
				if distance < v.Size.x then
					CurrentPartNum = v
					DisableControlAction(0, 73, true)
					letSleep, isInMarker, CurrentZone, CurrentZoneIndex = false, true, v, k
				end
			end

			if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= CurrentZone or LastPart ~= CurrentZoneIndex)) then

				if (LastStation and LastPart) and
					(LastStation ~= CurrentZone or LastPart ~= CurrentZoneIndex) then
					hasExited, CurrentAction = true, nil
					ESX.UI.Menu.CloseAll()
				end

				HasAlreadyEnteredMarker = true
				LastStation             = CurrentZone
				LastPart                = CurrentZoneIndex
				TriggerEvent('sqz_unijob:hasEnteredMarker', CurrentZoneIndex, CurrentZone, CurrentPartNum)

			end
			if not hasExited and not isInMarker and HasAlreadyEnteredMarker then
				if CurrentActionData and CurrentActionData.station then
					TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', CurrentActionData.station..'_society_'..ESX.PlayerData.job.name)
				end
				HasAlreadyEnteredMarker = false
				hasExited, CurrentAction = true, nil
				ESX.UI.Menu.CloseAll()
				isBussy = false
				TriggerServerEvent("sqz_unijob:StopSelling")
			end

			if letSleep then
				Citizen.Wait(500)
			end
		else
			Wait(500)
		end
	end

end)

RegisterCommand('epressed', function()
	local allowed = false
	if CurrentAction and not isBussy then
		if Config.NonJobActions and Config.NonJobActions.Enabled and Config.NonJobActions.AllowedActions[CurrentActionData.data.Type] then
			for k, v in pairs(Config.NonJobActions.Jobs) do
				if Config.Jobs[k] then
					allowed = k
					break
				end
			end
		end

		if Config.Jobs[ESX.PlayerData.job.name] or (allowed and CurrentJob) then
			if CurrentAction == 'menu_cloakroom' then
				OpenCloakRoomMenu()
				CurrentAction = nil
			elseif CurrentAction == 'menu_armory' then
				OpenArmoryMenu(CurrentActionData.station, CurrentActionData.partNum)
				CurrentAction = nil
			elseif CurrentAction == 'delete_vehicle' then
				if Config.UseCustomGarageEvents then
					TriggerEvent('sqz_unijob:StoreVehicleCustom')
				else
					local playerPed = PlayerPedId()
					local vehicle = GetVehiclePedIsIn(playerPed)
					TaskLeaveVehicle(playerPed, vehicle, 0)
					Wait(1700)
					ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
				end
			elseif CurrentAction == 'menu_vehicle_spawner' then
				if Config.UseCustomGarageEvents then
					TriggerEvent('sqz_unijob:CustomVehicleSpawnerEvent', CurrentActionData.station)
				else
					OpenVehicleSpawnerMenu(CurrentActionData.station, CurrentActionData.partNum)
				end
			elseif CurrentAction == 'menu_heli_spawner' then
				if Config.UseCustomGarageEvents then
					TriggerEvent('sqz_unijob:CustomAirCraftSpawnerEvent', CurrentActionData.station)
				else
					OpenAirCraftSpawnerMenu(CurrentActionData.station, CurrentActionData.partNum)
				end
			elseif CurrentAction == 'menu_boss_actions' then
				ESX.UI.Menu.CloseAll()
				TriggerEvent(Config.customEvents['esx_society:openBossMenu'], ESX.PlayerData.job.name, function(data, menu)
					menu.close()
					CurrentAction     = 'menu_boss_actions'
					CurrentActionData = {}

				end, {
					wash = Config.Jobs[ESX.PlayerData.job.name].AllowedActions.CanWash,
					deposit = Config.Jobs[ESX.PlayerData.job.name].AllowedActions.Deposit,
					grades = Config.Jobs[ESX.PlayerData.job.name].AllowedActions.Grades,
					withdraw = Config.Jobs[ESX.PlayerData.job.name].AllowedActions.Withdraw,
					employees = Config.Jobs[ESX.PlayerData.job.name].AllowedActions.Employees,
			 	})
			elseif CurrentAction == 'remove_entity' then
				DeleteEntity(CurrentActionData.entity)
			elseif CurrentAction == 'pickup_collect' and not isBussy then
				isBussy = true
				if Config.AntiDupe and Config.AntiDupe.Enabled then
					if not HasAnimDictLoaded(Config.AntiDupe.AnimDict) then
						RequestAnimDict(Config.AntiDupe.AnimDict)
						while not HasAnimDictLoaded(Config.AntiDupe.AnimDict) do
							Wait(10)
						end
					end

					TaskPlayAnim(PlayerPedId(), Config.AntiDupe.AnimDict, Config.AntiDupe.AnimN, -8.0, 8.0, Config.AntiDupe.Time, 1, 0.0, false, false, false)

					if Config.UseMythic_Progressbar then
						TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
							name = "antidupe_sqz_unijob_system",
							duration = Config.AntiDupe.Time,
							label = Config.AntiDupe.Message,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
								}
							}, function(status)
						end)
					end
					Wait(Config.AntiDupe.Time)
				end
				if not Config.Jobs[ESX.PlayerData.job.name] and allowed and CurrentJob then
					ProcessCollect(CurrentActionData, CurrentJob)
				else
					ProcessCollect(CurrentActionData)
				end
			elseif CurrentAction == "menu_crafting" and not isBussy then
				isBussy = true
				if not Config.Jobs[ESX.PlayerData.job.name] and allowed and CurrentJob then
					CraftingMenu(CurrentActionData.data, CurrentActionData.job)
				else
					CraftingMenu(CurrentActionData.data)
				end
			elseif CurrentAction == "selling_point" and not isBussy then
				isBussy = true
				if not Config.Jobs[ESX.PlayerData.job.name] and allowed and CurrentJob then
					TriggerServerEvent('sqz_unijob:SellItem', CurrentActionData, CurrentJob)
				else
					TriggerServerEvent('sqz_unijob:SellItem', CurrentActionData)
				end

			end
		end
	end

end, false)

RegisterCommand('jobactions', function()

	if Config.Jobs[ESX.PlayerData.job.name] then

		OpenF6ControlMenu()

	end

end, false)

function OpenF6ControlMenu()
	ESX.UI.Menu.CloseAll()
	local elements = {}
		for k, v in pairs(Config.Jobs) do
			if ESX.PlayerData.job.name == k then
				if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.HasBodyActions then
					table.insert(elements, {label = _U('citizen_interaction'), value = 'citizen_interaction'})
				end

				if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.HasMechanicActions then
					table.insert(elements, {label = _U('vehicle_interaction'), value = 'vehicle_interaction'})
				end

				if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.Billing then
					table.insert(elements, {label = _U('billing'), value = 'billing'})
				end

				if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.CustomMenuElement then
					table.insert(elements, {label = _U('custom_menu_element'), value = 'custom_element'})
				end

				if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.CanUnlock and not Config.Jobs[ESX.PlayerData.job.name].AllowedActions.HasMechanicActions then
					table.insert(elements, {label = _U('lock_pick_vehicle'), value = 'lockpick_vehicle'})
				end
			end
		end
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'f6_actions', {
				title    = _U('job_actions_menu'),
				align    = Config.MenuAlign,
				elements = elements
			}, function(data, menu)
		if data.current.value == "custom_element" then
			TriggerEvent('sqz_unijob:CustomElementInPersonalMenu')
		elseif data.current.value == "lockpick_vehicle" then
				local playerPed = PlayerPedId()
				local vehicle   = ESX.Game.GetVehicleInDirection()
				local coords    = GetEntityCoords(playerPed)
				if IsPedSittingInAnyVehicle(playerPed) then
					TriggerEvent('sqz_unijob:sendClientNotify', _U('not_in_veh'))
					return
				end
				if DoesEntityExist(vehicle) then
					if not isBussy then
						if not Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem or (Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem and ItemCheck(Config.Jobs[ESX.PlayerData.job.name].LockPickItemName)) then
							isBussy = true
							if Config.UseAnimations then
							TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
							end
							if Config.UseAnimations and not Config.UseMythic_Progressbar then
								Citizen.Wait(10000)
								ClearPedTasks(playerPed)
							end
							if Config.UseMythic_Progressbar then
							TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
								name = "vehicle_hijack_unlock_sqz_unijob:11",
								duration = 10000,
								label = _U("unlocking_vehicle"),
								useWhileDead = false,
								canCancel = false,
								controlDisables = {
									disableMovement = true,
									disableCarMovement = true,
									disableMouse = false,
									disableCombat = true,
									}
								}, function(status)
							end)
								Citizen.Wait(10000)
							end
							if Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem and Config.Jobs[ESX.PlayerData.job.name].RemoveLockPickAfterUse then
								TriggerServerEvent('sqz_unijob:removeItem', Config.Jobs[ESX.PlayerData.job.name].LockPickItemName)
							end
							SetVehicleDoorsLocked(vehicle, 1)
							SetVehicleDoorsLockedForAllPlayers(vehicle, false)
							ClearPedTasks(playerPed)
							TriggerEvent('sqz_unijob:sendClientNotify', _U('vehicle_opened'))
							TriggerServerEvent('sqz_unijob:db_log', 'Hijack Vehicle', '', Config.DiscordLoggingActionsMenu)
							isBussy = false
						else
							TriggerEvent('sqz_unijob:sendClientNotify', _U('no_lockpick'))
						end
					end
				end
		elseif data.current.value == 'billing' then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer ~= -1 and closestDistance <= 3.0 then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billingsqwaefwa', {
						title = _U('billing_amount')
						}, function(data, menu)
							ESX.UI.Menu.CloseAll()
						ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'billing1507', {
								title = _U('billing_label')
								}, function(data3, menu3)

								local amount = tonumber(data.value)
								local billinglabel = data3.value
								if billinglabel == nil then
									TriggerEvent('sqz_unijob:sendClientNotify', _U('billing_label_empty'))
								elseif amount == nil then
									TriggerEvent('sqz_unijob:sendClientNotify', _U('billing_ammount_empty'))
								else
									menu.close()
									local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
									if closestPlayer == -1 or closestDistance > 3.0 then
										TriggerEvent('sqz_unijob:sendClientNotify', _U('no_players_near'))
									else
										TriggerEvent('sqz_unijob:CustomElementJobMenu', 'billing')
										ESX.UI.Menu.CloseAll()
										local playerPed        = GetPlayerPed(-1)
										if Config.UseAnimations then
											TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
										end
										if Config.UseAnimations and not Config.UseMythic_Progressbar then
											Citizen.Wait(5000)
											ClearPedTasks(playerPed)
										end
										if Config.UseMythic_Progressbar then
											TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
												name = "faktura_not_fine_sqz_unijob",
												duration = 20000,
												label = _U("proggbar_writing_bill"),
												useWhileDead = false,
												canCancel = false,
												controlDisables = {
													disableMovement = true,
													disableCarMovement = true,
													disableMouse = false,
													disableCombat = true,
													}
												}, function(status)
											end)
										end
										if Config.UseMythic_Progressbar then
											Citizen.Wait(5000)
											ClearPedTasks(playerPed)
										end
										TriggerServerEvent(Config.customEvents['esx_billing:sendBill'], GetPlayerServerId(closestPlayer), 'society_'..ESX.PlayerData.job.name, billinglabel, amount)
										TriggerEvent('sqz_unijob:sendClientNotify', _U('bill_sent'))
									end
								end
						end, function(data3, menu3)
							menu3.close()
						end)
					end, function(data, menu)
						menu.close()
					end)
			else
				TriggerEvent('sqz_unijob:sendClientNotify', _U("no_players_near"))
			end
		end

		if data.current.value == 'citizen_interaction' then
			local elements = {
				{label = _U('search'), value = 'search'},
				{label = _U('handcuff'), value = 'handcuff'},
				{label = _U('un_hadncuff'), value = 'uncuff'},
				{label = _U('drag'), value = 'drag'},
				{label = _U('put_in_vehicle'), value = 'put_in_vehicle'},
				{label = _U('out_the_vehicle'), value = 'out_the_vehicle'},
			}
			for k, v in pairs(Config.Jobs) do
				if ESX.PlayerData.job.name == k then
					if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.CanRevive then
						table.insert(elements, {label = _U('revive'), value = 'revive'})
					end
				end
			end
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction', {
				title    = _U('citizen_interaction'),
				align    = Config.MenuAlign,
				elements = elements
			}, function(data2, menu2)
				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer ~= -1 and closestDistance <= 3.0 then
			local action = data2.current.value
			if action == 'search' then
				local searchPlayerPed = GetPlayerPed(closestPlayer)
				if IsEntityPlayingAnim(searchPlayerPed, 'missminuteman_1ig_2', 'handsup_enter', 3) or IsEntityPlayingAnim(searchPlayerPed, 'random@mugging3', 'handsup_standing_base', 3) or IsEntityPlayingAnim(searchPlayerPed, 'mp_arresting', 'idle', 3) or IsEntityDead(searchPlayerPed) then
					if Config.UseMythic_Progressbar then

						TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
							name = "stealing",
							duration = 8000,
							label = _U('searching_player'),
							useWhileDead = false,
							canCancel = true,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},

							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},

							}, function(cancelled)
								if not cancelled then
									ESX.TriggerServerCallback('sqz_unijob:CheckOpenInventory', function(canBeOpened)
										if canBeOpened then
											TriggerServerEvent('sqz_unijob:InventoryOpenedSuccesfully', GetPlayerServerId(closestPlayer))
											OpenBodySearchMenu(closestPlayer)
											TriggerEvent('sqz_unijob:CustomElementJobMenu', 'search')
											TriggerServerEvent('sqz_unijob:db_log', 'Search', GetPlayerServerId(closestPlayer), Config.DiscordLoggingActionsMenu)
										else
											TriggerEvent('sqz_unijob:sendClientNotify', _U('already_searched'))
										end
									end, GetPlayerServerId(closestPlayer))

								else
									TriggerEvent('sqz_unijob:sendClientNotify', 'stopped_searching_player')
								end
							end)
					elseif not Config.UseMythic_Progressbar then
						ESX.TriggerServerCallback('sqz_unijob:CheckOpenInventory', function(canBeOpened)
							if canBeOpened then
								TriggerServerEvent('sqz_unijob:InventoryOpenedSuccesfully', GetPlayerServerId(closestPlayer))
								OpenBodySearchMenu(closestPlayer)
								TriggerEvent('sqz_unijob:CustomElementJobMenu', 'search')
								TriggerServerEvent('sqz_unijob:db_log', 'Search', GetPlayerServerId(closestPlayer), Config.DiscordLoggingActionsMenu)
							else
								TriggerEvent('sqz_unijob:sendClientNotify', _U('already_searched'))
							end
						end, GetPlayerServerId(closestPlayer))
					end
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('not_hands_up'))
				end
			elseif action == 'handcuff' then
				local target, distance = ESX.Game.GetClosestPlayer()
				playerheading = GetEntityHeading(GetPlayerPed(-1))
				playerlocation = GetEntityForwardVector(PlayerPedId())
				playerCoords = GetEntityCoords(GetPlayerPed(-1))
				local target_id = GetPlayerServerId(target)
				if distance <= 2.0 then
					TriggerServerEvent('sqz_unijob:requestarrest', target_id, playerheading, playerCoords, playerlocation)
					TriggerServerEvent('sqz_unijob:db_log', 'HandCuff', target_id, Config.DiscordLoggingActionsMenu)
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'handcuff')
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('no_players_near'))
				end
				TriggerServerEvent('sqz_unijob:handcuff', GetPlayerServerId(closestPlayer))
			elseif action == 'uncuff' then
				local target, distance = ESX.Game.GetClosestPlayer()
				playerheading = GetEntityHeading(GetPlayerPed(-1))
				playerlocation = GetEntityForwardVector(PlayerPedId())
				playerCoords = GetEntityCoords(GetPlayerPed(-1))
				local target_id = GetPlayerServerId(target)
				if distance <= 2.0 then
					TriggerServerEvent('sqz_unijob:requestrelease', target_id, playerheading, playerCoords, playerlocation)
					TriggerServerEvent('sqz_unijob:db_log', 'Uncuff', target_id, Config.DiscordLoggingActionsMenu)
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'uncuff')
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('no_players_near'))
				end
			elseif action == 'drag' then
						TriggerServerEvent('sqz_unijob:drag', GetPlayerServerId(closestPlayer))
						TriggerServerEvent('sqz_unijob:db_log', 'Drag', GetPlayerServerId(closestPlayer), Config.DiscordLoggingActionsMenu)
						TriggerEvent('sqz_unijob:CustomElementJobMenu', 'drag')
			elseif action == 'put_in_vehicle' then
						TriggerServerEvent('sqz_unijob:putInVehicle', GetPlayerServerId(closestPlayer))
						TriggerServerEvent('sqz_unijob:db_log', 'Put in Vehicle', GetPlayerServerId(closestPlayer), Config.DiscordLoggingActionsMenu)
						TriggerEvent('sqz_unijob:CustomElementJobMenu', 'putIV')
			elseif action == 'out_the_vehicle' then
						TriggerServerEvent('sqz_unijob:OutVehicle', GetPlayerServerId(closestPlayer))
						TriggerEvent('sqz_unijob:CustomElementJobMenu', 'outOV')
			elseif action == 'revive' then
					local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
					local closestPlayerPed = GetPlayerPed(closestPlayer)
					local health = GetEntityHealth(closestPlayerPed)
					TriggerServerEvent('sqz_unijob:db_log', 'SmallInjuries Heal', GetPlayerServerId(closestPlayer), Config.DiscordLoggingActionsMenu)
					if health == 0 then
						local playerPed = GetPlayerPed(-1)
						TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
						Wait(10000)
						ClearPedTasks(playerPed)
						TriggerServerEvent('sqz_unijob:revive', GetPlayerServerId(closestPlayer))
					end
			else
				TriggerEvent('sqz_unijob:sendClientNotify', _U('no_players_near'))
			end
		else
			TriggerEvent('sqz_unijob:sendClientNotify', _U('no_players_near'))
		end
		end, function(data2, menu2)
			menu2.close()
		end)
	end
	if data.current.value == 'vehicle_interaction' then
			local elements  = {}
			local playerPed = PlayerPedId()
			local vehicle = ESX.Game.GetVehicleInDirection()
			if Config.Jobs[ESX.PlayerData.job.name].AllowedActions.HasMechanicActions then
				table.insert(elements, {label = _U('fix_vehicle'), value = 'fix_vehicle'})
				table.insert(elements, {label = _U('clean_vehicle'), value = 'clean_vehicle'})
				table.insert(elements, {label = _U('impound'), value = 'impound'})
				table.insert(elements, {label = _U('dep_vehicle'), value = 'dep_vehicle'})
				table.insert(elements, {label = _U('lock_pick_vehicle'), value = 'hijack_vehicle'})
			end
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_interaction', {
				title    = _U('vehicle_interaction'),
				align    = Config.MenuAlign,
				elements = elements
			}, function(data2, menu2)
				local coords  = GetEntityCoords(playerPed)
			if data2.current.value == 'hijack_vehicle' then
				local playerPed = PlayerPedId()
				local vehicle   = ESX.Game.GetVehicleInDirection()
				local coords    = GetEntityCoords(playerPed)
					if IsPedSittingInAnyVehicle(playerPed) then
						TriggerEvent('sqz_unijob:sendClientNotify', _U('not_in_veh'))
						return
					end
					if DoesEntityExist(vehicle) then
						if not isBussy then
							if not Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem or (Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem and ItemCheck(Config.Jobs[ESX.PlayerData.job.name].LockPickItemName)) then
								isBussy = true
								if Config.UseAnimations then
								TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
								end
								if Config.UseAnimations and not Config.UseMythic_Progressbar then
									Citizen.Wait(10000)
									ClearPedTasks(playerPed)
								end
								if Config.UseMythic_Progressbar then
								TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
									name = "vehicle_hijack_unlock_sqz_unijob:11",
									duration = 10000,
									label = _U("unlocking_vehicle"),
									useWhileDead = false,
									canCancel = false,
									controlDisables = {
										disableMovement = true,
										disableCarMovement = true,
										disableMouse = false,
										disableCombat = true,
										}
									}, function(status)
								end)
									Citizen.Wait(10000)
								end
								if Config.Jobs[ESX.PlayerData.job.name].NeededLockPickItem and Config.Jobs[ESX.PlayerData.job.name].RemoveLockPickAfterUse then
									TriggerServerEvent('sqz_unijob:removeItem', Config.Jobs[ESX.PlayerData.job.name].LockPickItemName)
								end
								SetVehicleDoorsLocked(vehicle, 1)
								SetVehicleDoorsLockedForAllPlayers(vehicle, false)
								ClearPedTasks(playerPed)
								TriggerEvent('sqz_unijob:sendClientNotify', _U('vehicle_opened'))
								TriggerServerEvent('sqz_unijob:db_log', 'Hijack Vehicle', '', Config.DiscordLoggingActionsMenu)
								TriggerEvent('sqz_unijob:CustomElementJobMenu', 'hijack')
								isBussy = false
							else
								TriggerEvent('sqz_unijob:sendClientNotify', _U('no_lockpick'))
							end
						end
					end
			elseif data2.current.value == 'fix_vehicle' then
				local playerPed = PlayerPedId()
				local vehicle   = ESX.Game.GetVehicleInDirection()
				local coords    = GetEntityCoords(playerPed)
				if IsPedSittingInAnyVehicle(playerPed) then
						TriggerEvent('sqz_unijob:sendClientNotify', _U('not_in_veh'))
					return
				end
			if DoesEntityExist(vehicle) then
				if not isBussy then
					isBussy = true
				if Config.UseAnimations then
					TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
				end
				if Config.UseAnimations and not Config.UseMythic_Progressbar then
					Citizen.Wait(10000)
					ClearPedTasks(playerPed)
				end
				if Config.UseMythic_Progressbar then
				TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
					name = "repair_vehicle_sqz_unijob:11",
					duration = 20000,
					label = _U("repairing_vehicle"),
					useWhileDead = false,
					canCancel = false,
						controlDisables = {
							disableMovement = true,
							disableCarMovement = true,
							disableMouse = false,
							disableCombat = true,
							}
					}, function(status)
				end)
				Citizen.Wait(10000)
				end
					SetVehicleFixed(vehicle)
					SetVehicleDeformationFixed(vehicle)
					SetVehicleUndriveable(vehicle, false)
					SetVehicleEngineOn(vehicle, true, true)
					ClearPedTasks(playerPed)
					TriggerEvent('sqz_unijob:sendClientNotify', _U('repaired_veh'))
					TriggerServerEvent('sqz_unijob:db_log', 'Fix Vehicle', '', Config.DiscordLoggingActionsMenu)
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'fix')
					isBussy = false
			end
			end
		elseif data2.current.value == 'clean_vehicle' then
			local playerPed = PlayerPedId()
			local vehicle   = ESX.Game.GetVehicleInDirection()
			local coords    = GetEntityCoords(playerPed)

			if IsPedSittingInAnyVehicle(playerPed) then
				TriggerEvent('sqz_unijob:sendClientNotify', _U('not_in_veh'))
				return
			end
			if DoesEntityExist(vehicle) then
				if not isBussy then
					isBussy = true
				if Config.UseAnimations then
				TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_MAID_CLEAN', 0, true)
				end
				if Config.UseAnimations and not Config.UseMythic_Progressbar then
					Citizen.Wait(20000)
					ClearPedTasks(playerPed)
				end
				if Config.UseMythic_Progressbar then
				TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
					name = "clean_vehicle_15rwajobs:11",
					duration = 20000,
					label = _U("cleaning_vehicle"),
					useWhileDead = false,
					canCancel = false,
					controlDisables = {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
					}
					}, function(status)
					end)
					Citizen.Wait(20000)
				end
				SetVehicleDirtLevel(vehicle, 0)
				ClearPedTasks(playerPed)
				TriggerEvent('sqz_unijob:sendClientNotify', _U('veh_clean'))
				TriggerServerEvent('sqz_unijob:db_log', 'Clean Vehicle', '', Config.DiscordLoggingActionsMenu)
				TriggerEvent('sqz_unijob:CustomElementJobMenu', 'clean')
				isBussy = false
			end
			end
		elseif data2.current.value == 'impound' then
			local Ped = PlayerPedId()

			if IsPedSittingInAnyVehicle(Ped) then

				local vehicleImpound = GetVehiclePedIsIn(Ped, false)

				if GetPedInVehicleSeat(vehicleImpound, -1) == Ped then
					TriggerEvent('sqz_unijob:sendClientNotify', _U('vehicle_impounded'))
					ESX.Game.DeleteVehicle(vehicleImpound)
					TriggerServerEvent('sqz_unijob:db_log', 'Impound vehicle', '', Config.DiscordLoggingActionsMenu)
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'impound')
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('must_seat_driver'))
				end
			else
				local vehicleImpound = ESX.Game.GetVehicleInDirection()

				if DoesEntityExist(vehicleImpound) then
					if Config.ShowImpoundNotification then
						showImpoundAnimation()
					end
					TriggerEvent('sqz_unijob:sendClientNotify', _U('vehicle_impounded'))
					ESX.Game.DeleteVehicle(vehicleImpound)
					TriggerServerEvent('sqz_unijob:db_log', 'Impound vehicle', '', Config.DiscordLoggingActionsMenu)
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'impound')
				else
					TriggerEvent('sqz_unijob:sendClientNotify', _U('must_near'))
				end
			end
		elseif data2.current.value == 'dep_vehicle' then
			local playerPed = PlayerPedId()
			local vehicle = GetVehiclePedIsIn(playerPed, true)

			local towmodel = GetHashKey('flatbed')
			local isVehicleTow = IsVehicleModel(vehicle, towmodel)

			if isVehicleTow then
				local targetVehicle = ESX.Game.GetVehicleInDirection()

				if CurrentlyTowedVehicle == nil then
					if targetVehicle ~= 0 then
						if not IsPedInAnyVehicle(playerPed, true) then
							if vehicle ~= targetVehicle then
								AttachEntityToEntity(targetVehicle, vehicle, 20, -0.5, -5.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
								CurrentlyTowedVehicle = targetVehicle
								TriggerEvent('sqz_unijob:sendClientNotify', _U('veh_attached'))
								TriggerEvent('sqz_unijob:CustomElementJobMenu', 'dep')
							else
								TriggerEvent('sqz_unijob:sendClientNotify', _U('can_not_self_veh'))
							end
						end
					end
				else
					AttachEntityToEntity(CurrentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
					DetachEntity(CurrentlyTowedVehicle, true, true)

					CurrentlyTowedVehicle = nil
					TriggerEvent('sqz_unijob:sendClientNotify', _U('veh_attached'))
					TriggerEvent('sqz_unijob:CustomElementJobMenu', 'dep')
				end
			else
				TriggerEvent('sqz_unijob:sendClientNotify', _U('no_veh_near'))
			end
		else
			TriggerEvent('sqz_unijob:sendClientNotify', _U('no_veh_near'))
		end
		end, function(data2, menu2)
			menu2.close()
		end)
	end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenBodySearchMenu(player)
	ESX.TriggerServerCallback('sqz_unijob:getOtherPlayerData', function(data)
		local elements = {}

		for i=1, #data.accounts, 1 do
			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
				table.insert(elements, {
					label    = _U('confiscate_dirty', ESX.Math.Round(data.accounts[i].money)),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end
		end

		table.insert(elements, {label = _U('guns_label')})

		for i=1, #data.weapons, 1 do
			table.insert(elements, {
				label    = _U('confiscate_weapon', ESX.GetWeaponLabel(data.weapons[i].name), data.weapons[i].ammo),
				value    = data.weapons[i].name,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end

		table.insert(elements, {label = _U('inventory_label')})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = _U('confiscate_inv', data.inventory[i].count, data.inventory[i].label),
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search', {
			title    = _U('search'),
			align    = Config.MenuAlign,
			elements = elements
		}, function(data, menu)
			if data.current.value then
				TriggerServerEvent('sqz_unijob:confiscatePlayerItem', GetPlayerServerId(player), data.current.itemType, data.current.value, data.current.amount)
				OpenBodySearchMenu(player)
			end
		end, function(data, menu)
			menu.close()
			TriggerServerEvent('sqz_unijob:InventoryClosedSuccesFully', GetPlayerServerId(player))
		end)
	end, GetPlayerServerId(player))
end

RegisterNetEvent('sqz_unijob:getarrested')
AddEventHandler('sqz_unijob:getarrested', function(playerheading, playercoords, playerlocation)

	playerPed = GetPlayerPed(-1)
	SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
	local x, y, z   = table.unpack(playercoords + playerlocation * 1.0)
	SetEntityCoords(GetPlayerPed(-1), x, y, z)
	SetEntityHeading(GetPlayerPed(-1), playerheading)
	Citizen.Wait(250)
	loadanimdict('mp_arrest_paired')
	TaskPlayAnim(GetPlayerPed(-1), 'mp_arrest_paired', 'crook_p2_back_right', 8.0, -8, 3750 , 2, 0, 0, 0, 0)
	Citizen.Wait(4000)
	isHandcuffed = true
	TriggerEvent('sqz_unijob:handcuff')
	loadanimdict('mp_arresting')
	TaskPlayAnim(GetPlayerPed(-1), 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
end)

RegisterNetEvent('sqz_unijob:doarrested')
AddEventHandler('sqz_unijob:doarrested', function()
	Citizen.Wait(250)
	loadanimdict('mp_arrest_paired')
	TaskPlayAnim(GetPlayerPed(-1), 'mp_arrest_paired', 'cop_p2_back_right', 8.0, -8,3750, 2, 0, 0, 0, 0)
	Citizen.Wait(3000)

end)


RegisterNetEvent('sqz_unijob:handcuff')
AddEventHandler('sqz_unijob:handcuff', function()
	local playerPed = PlayerPedId()

	if isHandcuffed then
		RequestAnimDict('mp_arresting')
		while not HasAnimDictLoaded('mp_arresting') do
			Citizen.Wait(1000)
		end

		TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)

		SetEnableHandcuffs(playerPed, true)
		DisablePlayerFiring(playerPed, true)
		DisableControlAction(0, 73, true) -- Disable clearing animation
		SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
		SetPedCanPlayGestureAnims(playerPed, false)
		DisplayRadar(false)

	end
end)

function loadanimdict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname)
		while not HasAnimDictLoaded(dictname) do
			Citizen.Wait(1)
		end
	end
end
RegisterNetEvent('sqz_unijob:getuncuffed')
AddEventHandler('sqz_unijob:getuncuffed', function(playerheading, playercoords, playerlocation, cuffsPlayer, giveCuffs)
	local playerPed = PlayerPedId()

	if IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) then
		TriggerServerEvent("sqz_unijob:doReleasing", cuffsPlayer)
		local x, y, z   = table.unpack(playercoords + playerlocation * 1.0)
		SetEntityCoords(playerPed, x, y, z)
		SetEntityHeading(playerPed, playerheading)
		Citizen.Wait(250)
		loadanimdict('mp_arresting')
		TaskPlayAnim(playerPed, 'mp_arresting', 'b_uncuff', 8.0, -8,-1, 2, 0, 0, 0, 0)
		Citizen.Wait(5500)
		isHandcuffed = false
		ClearPedSecondaryTask(playerPed)
		SetEnableHandcuffs(playerPed, false)
		DisablePlayerFiring(playerPed, false)
		DisableControlAction(0, 73, true) -- Disable clearing animation
		SetPedCanPlayGestureAnims(playerPed, true)
		DisplayRadar(true)
		ClearPedTasks(playerPed)
	end
end)

RegisterNetEvent('sqz_unijob:douncuffing')
AddEventHandler('sqz_unijob:douncuffing', function()
	Citizen.Wait(250)
	loadanimdict('mp_arresting')
	TaskPlayAnim(GetPlayerPed(-1), 'mp_arresting', 'a_uncuff', 8.0, -8,-1, 2, 0, 0, 0, 0)
	Citizen.Wait(5500)
	ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent('sqz_unijob:drag')
AddEventHandler('sqz_unijob:drag', function(copId)
	if isHandcuffed then
		dragStatus.isDragged = not dragStatus.isDragged
		dragStatus.CopId = copId
	end
end)

Citizen.CreateThread(function()
	local wasDragged

	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()

		if isHandcuffed and dragStatus.isDragged then
			local targetPed = GetPlayerPed(GetPlayerFromServerId(dragStatus.CopId))

			if DoesEntityExist(targetPed) and IsPedOnFoot(targetPed) and not IsPedDeadOrDying(targetPed, true) then
				if not wasDragged then
					AttachEntityToEntity(playerPed, targetPed, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
					wasDragged = true
				else
					Citizen.Wait(1000)
				end
			else
				wasDragged = false
				dragStatus.isDragged = false
				DetachEntity(playerPed, true, false)
			end
		elseif wasDragged then
			wasDragged = false
			DetachEntity(playerPed, true, false)
		else
			Citizen.Wait(500)
		end
	end
end)

RegisterNetEvent('sqz_unijob:putInVehicle')
AddEventHandler('sqz_unijob:putInVehicle', function()
	if isHandcuffed then
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if IsAnyVehicleNearPoint(coords, 5.0) then
			local vehicle = GetClosestVehicle(coords, 5.0, 0, 71)

			if DoesEntityExist(vehicle) then
				local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

				for i=maxSeats - 1, 0, -1 do
					if IsVehicleSeatFree(vehicle, i) then
						freeSeat = i
						break
					end
				end

				if freeSeat then
					TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
					dragStatus.isDragged = false
				end
			end
		end
	end
end)
-- Handcuff
Citizen.CreateThread(function()
	RequestAnimDict("mp_arresting")
	while not HasAnimDictLoaded("mp_arresting") do
		Wait(100)
	end
	while true do
		Citizen.Wait(0)
		if isHandcuffed then
			local playerPed = PlayerPedId()
			--DisableControlAction(0, 1, true) -- Disable pan
			--DisableControlAction(0, 2, true) -- Disable tilt
			DisableControlAction(0, 24, true) -- Attack
			DisableControlAction(0, 257, true) -- Attack 2
			DisableControlAction(0, 25, true) -- Aim
			DisableControlAction(0, 263, true) -- Melee Attack 1
			--DisableControlAction(0, 32, true) -- W
			--DisableControlAction(0, 34, true) -- A
			--DisableControlAction(0, 31, true) -- S
			--DisableControlAction(0, 30, true) -- D
			DisableControlAction(0, 19, true) -- LEFTALT (TokoVOIP Radio)
			DisableControlAction(0,21,true) -- Sprint
			DisableControlAction(0, 45, true) -- Reload
			DisableControlAction(0, 22, true) -- Jump
			DisableControlAction(0, 44, true) -- Cover
			DisableControlAction(0, 37, true) -- Select Weapon
			DisableControlAction(0, 23, true) -- Also 'enter'?

			DisableControlAction(0, 288,  true) -- Disable phone
			DisableControlAction(0, 289, true) -- Inventory
			DisableControlAction(0, 170, true) -- Animations
			DisableControlAction(0, 167, true) -- Job

			DisableControlAction(0, 0, true) -- Disable changing view
			DisableControlAction(0, 26, true) -- Disable looking behind
			DisableControlAction(0, 73, true) -- Disable clearing animation
			DisableControlAction(2, 199, true) -- Disable pause screen

			DisableControlAction(0, 59, true) -- Disable steering in vehicle
			DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
			DisableControlAction(0, 72, true) -- Disable reversing in vehicle

			DisableControlAction(2, 36, true) -- Disable going stealth

			DisableControlAction(0, 47, true)  -- Disable weapon
			DisableControlAction(0, 264, true) -- Disable melee
			DisableControlAction(0, 257, true) -- Disable melee
			DisableControlAction(0, 140, true) -- Disable melee
			DisableControlAction(0, 141, true) -- Disable melee
			DisableControlAction(0, 142, true) -- Disable melee
			DisableControlAction(0, 143, true) -- Disable melee
			DisableControlAction(0, 75, true)  -- Disable exit vehicle
			DisableControlAction(27, 75, true) -- Disable exit vehicle
			if IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) ~= 1 then
				TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0.0, false, false, false)
			end
		else
			Citizen.Wait(1000)
		end
	end
end)
RegisterNetEvent('sqz_unijob:OutVehicle')
AddEventHandler('sqz_unijob:OutVehicle', function()
	local playerPed = PlayerPedId()

	if IsPedSittingInAnyVehicle(playerPed) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		TaskLeaveVehicle(playerPed, vehicle, 16)
	end
end)

AddEventHandler('sqz_unijob:hasEnteredMarker', function(station, currentZone, partNum)
	if currentZone.Type == 'Cloakroom' then
		CurrentAction     = 'menu_cloakroom'
		CurrentActionData = {data = partNum}
	elseif currentZone.Type == 'Armory' then
		CurrentAction     = 'menu_armory'
		CurrentActionData = {station = station, data = partNum}
	elseif currentZone.Type == 'Vehicles' then
		CurrentAction     = 'menu_vehicle_spawner'
		CurrentActionData = {station = station, data = partNum}
	elseif currentZone.Type == 'Aircrafts' then
		CurrentAction = 'menu_heli_spawner'
		CurrentActionData = {station = station, data = partNum}
	elseif currentZone.Type == 'VehicleDeleter' then
		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)
		if IsPedInAnyVehicle(playerPed,  false) then
			local vehicle = GetVehiclePedIsIn(playerPed, false)
			if DoesEntityExist(vehicle) then
				CurrentAction     = 'delete_vehicle'
				CurrentActionData = {vehicle = vehicle, data = partNum}
			end
		end
	elseif currentZone.Type == "Craft" then
		CurrentAction     = 'menu_crafting'
		CurrentActionData = {steation = station, data = partNum}
	elseif currentZone.Type == "Selling" then
		CurrentAction     = 'selling_point'
		CurrentActionData = {data = partNum}
	elseif currentZone.Type == 'BossActions' then
		CurrentAction     = 'menu_boss_actions'
		CurrentActionData = {data = partNum}
	end
end)

function OpenVehicleSpawnerMenu(station, partNum)

	ESX.UI.Menu.CloseAll()

		local elements = {}

		local sharedVehicles = Config.Jobs[ESX.PlayerData.job.name].AuthorizedVehicles.shared
		for i=1, #sharedVehicles, 1 do
			table.insert(elements, { label = sharedVehicles[i].label, model = sharedVehicles[i].model, props = sharedVehicles[i].props})
		end

		local authorizedVehicles = Config.Jobs[ESX.PlayerData.job.name].AuthorizedVehicles[ESX.PlayerData.job.grade_name]
		if authorizedVehicles then
		for i=1, #authorizedVehicles, 1 do
			table.insert(elements, { label = authorizedVehicles[i].label, model = authorizedVehicles[i].model, props = authorizedVehicles[i].props})
		end
		end
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner',
		{
			title    = _U('vehicle_menu'),
			align    = Config.MenuAlign,
			elements = elements
		}, function(data, menu)
			menu.close()
			local foundSpawn, spawnPoint = GetAvailableVehicleSpawnPoint(station, part, partNum)
			if foundSpawn then
					ESX.Game.SpawnVehicle(data.current.model, spawnPoint.coords, spawnPoint.heading, function(vehicle)
						if Config.UseLegacyFuel then
						exports["LegacyFuel"]:SetFuel(vehicle, 100)
						end
						TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
						SetVehicleMaxMods(vehicle, data.current.props)
					end)
			end

		end, function(data, menu)
			menu.close()

			CurrentAction     = 'menu_vehicle_spawner'
			CurrentActionMsg  = 'Stiskni [E] pro výber vozidla'
			CurrentActionData = {station = station, partNum = partNum}
		end)

end

function OpenAirCraftSpawnerMenu(station, partNum)

		ESX.UI.Menu.CloseAll()

		local elements = {}

		local sharedAirCrafts = Config.Jobs[ESX.PlayerData.job.name].AuthorizedAirCrafts.shared
		for i=1, #sharedAirCrafts, 1 do
			table.insert(elements, { label = sharedAirCrafts[i].label, model = sharedAirCrafts[i].model, props = sharedAirCrafts[i].props})
		end

		local AuthorizedAirCrafts = Config.Jobs[ESX.PlayerData.job.name].AuthorizedAirCrafts[ESX.PlayerData.job.grade_name]
		if AuthorizedAirCrafts then
		for i=1, #AuthorizedAirCrafts, 1 do
			table.insert(elements, { label = AuthorizedAirCrafts[i].label, model = AuthorizedAirCrafts[i].model, props = AuthorizedAirCrafts[i].props})
		end
		end
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'helicopter_spawner',
			{
				title    = _U('helicopter_menu'),
				align    = Config.MenuAlign,
				elements = elements
			}, function(data, menu)
				menu.close()
				local foundSpawn, spawnPoint = GetAvailableVehicleSpawnPoint(station, part, partNum)
				if foundSpawn then
						ESX.Game.SpawnVehicle(data.current.model, spawnPoint.coords, spawnPoint.heading, function(vehicle)
							TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
							SetVehicleMaxMods(vehicle, data.current.props)
						end)
				end

			end, function(data, menu)
				menu.close()

				CurrentAction     = 'menu_heli_spawner'
				CurrentActionData = {station = station, partNum = partNum}
			end)

end
function GetAvailableVehicleSpawnPoint(station, part, partNum)
	local spawnPoints = Config.Jobs[ESX.PlayerData.job.name].Zones[CurrentActionData.station].SpawnPoints
	local found, foundSpawnPoint = false, nil

	for i=1, #spawnPoints, 1 do
		if ESX.Game.IsSpawnPointClear(spawnPoints[i].coords, spawnPoints[i].radius) then
			found, foundSpawnPoint = true, spawnPoints[i]
			break
		end
	end

	if found then
		return true, foundSpawnPoint
	else
		TriggerEvent('sqz_unijob:sendClientNotify', _U('vehicle_blocked'))
		return false
	end
end

function SetVehicleMaxMods(vehicle, props)
	ESX.Game.SetVehicleProperties(vehicle, props)
end

local phoneProp = 0
local phoneModel = -1038739674

function showImpoundAnimation()
	local playerPed = PlayerPedId()
	RequestAnimDict("cellphone@")
	while not HasAnimDictLoaded("cellphone@") do
		Citizen.Wait(1)
	end
	TaskPlayAnim(playerPed, "cellphone@", "cellphone_text_to_call", 3.0, -1, -1, 14, 0, false, false, false)
	RequestModel(phoneModel)
	while not HasModelLoaded(phoneModel) do
		Citizen.Wait(1)
	end
	phoneProp = CreateObject(phoneModel, 1.0, 1.0, 1.0, 1, 1, 0)
	local bone = GetPedBoneIndex(playerPed, 28422)
	AttachEntityToEntity(phoneProp, playerPed, bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)
	if Config.UseMythic_Progressbar then
		TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
			name = "impounding_vehicle",
			duration = Config.ImpoundAnimationWaitTime,
			label = _U("impounding_vehicle"),
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
				}
			}, function(status)
		end)
	end
	Wait(Config.ImpoundAnimationWaitTime)
	ClearPedTasks(playerPed)
	if phoneProp ~= 0 then
		Citizen.InvokeNative(0xAE3CBE5BF394C9C9 , Citizen.PointerValueIntInitialized(phoneProp))
		phoneProp = 0
	end
	Citizen.Wait(100) -- sleep the entire script to let stuff sink back to reality

end

local collectPoints = {}

RegisterNetEvent("sqz_unijob:SetPointsData")
AddEventHandler("sqz_unijob:SetPointsData", function(data, dataJob)

	while not ESXLoaded do
		Wait(10)
	end

	local allowed = false

	if Config.NonJobActions and Config.NonJobActions.Enabled and Config.NonJobActions.Jobs[dataJob] then
		for k, v in pairs(Config.NonJobActions.Jobs) do
			if k == dataJob and Config.Jobs[k] then
				allowed = k
				break
			end
		end
	end

	if ESX.PlayerData.job.name == dataJob or (Config.NonJobActions and Config.NonJobActions.Enabled and allowed) then
		collectPoints = data
	end

end)

Citizen.CreateThread(function()
	while not ESXLoaded do Wait(0) end
	AddTextEntry('helpNotificationSQZ_UNIJOB', _U("e_to_pickup"))

	if Config.NonJobActions and Config.NonJobActions.Enabled then
		local allowed = false
		for k, v in pairs(Config.NonJobActions.Jobs) do
			if Config.Jobs[k] and Config.Jobs[k].CollectPoints and #Config.Jobs[k].CollectPoints > 0 then
				allowed = k
				break
			end
		end
		if allowed and not Config.Jobs[ESX.PlayerData.job.name] and Config.Jobs[allowed] and Config.Jobs[allowed].CollectPoints and #Config.Jobs[allowed].CollectPoints > 0 then
			TriggerServerEvent("sqz_unijob:getCollectPoints", allowed)
		end
	end

	while true do
		Wait(timeToWait)
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local CurrentZoneIndex, CurrentPartNum

		for k, v in pairs(collectPoints) do
			local markerData = Config.Jobs[v.job].CollectPoints.Marker
			local dist = #(pedCoords - v.position)

			if dist < Config.Jobs[v.job].CollectPoints.DrawDistance then

				if not nearestCoords then
					timeToWait = 0
					nearestCoords = v.position
				end

				DrawMarker(markerData.Marker, v.position, 0, 0, 0, 0, 0, 0, markerData.Size.x, markerData.Size.y, markerData.Size.z, markerData.Color.r, markerData.Color.g, markerData.Color.b, 100, markerData.BouncingMarker, true, 2, markerData.RotatingMarker, nil, nil, false)

				if dist < markerData.Size.x then

					BeginTextCommandDisplayHelp('helpNotificationSQZ_UNIJOB')
					EndTextCommandDisplayHelp(0, false, true, -1)

					if not isBussy then
						CurrentJob = v.job
						CurrentAction = "pickup_collect"
						CurrentActionData = {data = {Type = 'Collecting'}, index = k, value = v}
					end

				end
			end
		end
	end

end)

function ProcessCollect(data, jobName)

	--if not collectPoints[data.value] then
	--	isBussy = false
	--	return
	--end


	local ped = PlayerPedId()
	local pedCoords = GetEntityCoords(ped)
	local animationData = Config.Jobs[jobName and jobName or ESX.PlayerData.job.name].CollectPoints.Animation

	if animationData.UseMythicProggBar then

		TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
			name = "collecting_an_item",
			duration = animationData.Duration,
			label = animationData.MythicProggbarLabel,
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
				}
			}, function(status)
		end)

	end

	RequestAnimDict(animationData.AnimDict)

	while not HasAnimDictLoaded(animationData.AnimDict) do
		Wait(100)
	end

	TaskPlayAnim(ped, animationData.AnimDict, animationData.AnimName, animationData.blendInSpeed, animationData.blendOutSpeed, animationData.Duration, animationData.AnimFlag, 0)
	Wait(animationData.Duration)
	TriggerServerEvent("sqz_unijob:onPickup", data, pedCoords, jobName and jobName)
	isBussy = false
	CurrentAction = nil
	CurrentActionData = nil
end

function CraftingMenu(data, jobName)

    local entity = PlayerPedId()
    local entityCoords = GetEntityCoords(entity)
	if #data.RequiredItems == 0 then
		if data.Animations.Duration > 0 then

			local AnimDict =  data.Animations.AnimDict
			local AnimName =  data.Animations.AnimName
			local blendInSpeed =  data.Animations.blendInSpeed
			local blendOutSpeed =  data.Animations.blendOutSpeed
			local AnimDuration =  data.Animations.Duration
			local AnimFlag =  data.Animations.AnimFlag
			if data.Animations.UseMythicProggBar then
				TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
					name = "picking_up_drug_harvestingMabye",
					duration = AnimDuration,
					label =  data.Animations.MythicProggbarLabel,
					useWhileDead = false,
					canCancel = false,
					controlDisables = {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}
					}, function(status)
				end)
			end

			RequestAnimDict(AnimDict)
			while not HasAnimDictLoaded(AnimDict) do
				Wait(100)
			end
			TaskPlayAnim(entity, AnimDict, AnimName, blendInSpeed, blendOutSpeed, AnimDuration, AnimFlag, 0)
			Wait(data.Animations.Duration)
			if jobName then
				TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount, jobName)
			else
				TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount)
			end
			isBussy = false
		else
			if jobName then
				TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount, jobName)
			else
				TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount)
			end
			isBussy = false
		end
	else
		ESX.TriggerServerCallback('sqz_unijob:CheckForItems', function(callback)
			if callback then
				if data.Animations.Duration > 0 then

					local AnimDict =  data.Animations.AnimDict
					local AnimName =  data.Animations.AnimName
					local blendInSpeed =  data.Animations.blendInSpeed
					local blendOutSpeed =  data.Animations.blendOutSpeed
					local AnimDuration =  data.Animations.Duration
					local AnimFlag =  data.Animations.AnimFlag
					if data.Animations.UseMythicProggBar then
						TriggerEvent(Config.customEvents["mythic_progressbar:client:progress"], {
							name = "picking_up_drug_harvestingMabye",
							duration = AnimDuration,
							label =  data.Animations.MythicProggbarLabel,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
								}
							}, function(status)
						end)
					end

					RequestAnimDict(AnimDict)
					while not HasAnimDictLoaded(AnimDict) do
						Wait(100)
					end
					TaskPlayAnim(entity, AnimDict, AnimName, blendInSpeed, blendOutSpeed, AnimDuration, AnimFlag, 0)
					Wait(data.Animations.Duration)

					if jobName then
						TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount, jobName)
					else
						TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount)
					end
					isBussy = false

				else
					if jobName then
						TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount, jobName)
					else
						TriggerServerEvent("sqz_unijob:StartedPickup", entityCoords, data.GiveItem, data.GiveItemCount)
					end
					isBussy = false
				end
			else
				TriggerEvent('sqz_unijob:sendClientNotify', _U('not_enough_items'))
				isBussy = false
			end
		end, data.RequiredItems)
	end
end

RegisterNetEvent("sqz_drugs:StopSelling")
AddEventHandler("sqz_drugs:StopSelling", function()

	isBussy = false

end)

function ItemCheck(item)

	local result = nil
	local tick = 0

	ESX.TriggerServerCallback('sqz_unijob:checkItemCount', function(callback)

		result = callback

	end, item)

	while not result and tick < 60 do
		Wait(100)
		tick = tick +1
	end

	if result == 'has' then
		return true
	else
		return false
	end

end
