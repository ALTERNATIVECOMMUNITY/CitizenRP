ESX = nil
local isDead = false

function dprint(msg,...)
	if Config.Debug then
		print(string.format('[rcore_billing] '..msg,...))
	end
end

function ShowBillsMenu()
	ESX.TriggerServerCallback(Config.Callbacks['getBill'], function(bills)
		if #bills > 0 then
			ESX.UI.Menu.CloseAll()
			local elements = {}

			for k,v in ipairs(bills) do
				if v.diffDays > (Config.DueDate/2) and v.diffDays < Config.DueDate then
					table.insert(elements, {
						label  = ('%s - <span style="color:red;">%s</span>'):format(v.label, _U('invoices_item_near_due_date', ESX.Math.GroupDigits(v.amount))),
						billId = v.id
					})
				elseif v.diffDays >= Config.DueDate then
					local days = (v.diffDays-14)
					table.insert(elements, {
						label  = ('%s - <span style="color:red;">%s</span>'):format(v.label, _U('invoices_item_due_date', ESX.Math.GroupDigits(v.amount),days)),
						billId = v.id
					})
				else
					table.insert(elements, {
						label  = ('%s - <span style="color:red;">%s</span>'):format(v.label, _U('invoices_item', ESX.Math.GroupDigits(v.amount))),
						billId = v.id
					})
				end
			end

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'billing', {
				title    = _U('invoices'),
				align    = Config.MenuPosition or 'bottom-right',
				elements = elements
			}, function(data, menu)
				menu.close()

				ESX.TriggerServerCallback(Config.Callbacks["payBill"] or 'esx_billing:payBill', function()
					ShowBillsMenu()
				end, data.current.billId)
			end, function(data, menu)
				menu.close()
			end)
		else
			if Config.ShowEmptyMenu then
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'billing', {
					title    = _U('invoices'),
					align    = Config.MenuPosition or 'bottom-right',
					elements = {
						{
							label = _U('no_invoices'),
						}
					}
				}, function(data, menu)
					menu.close()

					ESX.TriggerServerCallback(Config.Callbacks["payBill"] or 'esx_billing:payBill', function()
						ShowBillsMenu()
					end, data.current.billId)
				end, function(data, menu)
					menu.close()
				end)
			else
				ESX.ShowNotification(_U('no_invoices'))
			end
		end
	end)
end

if Config.TurnOffUI then
	RegisterNetEvent('rcore_billing:openMenu')
	AddEventHandler('rcore_billing:openMenu', function()
		ShowBillsMenu()
	end)
else
	RegisterCommand(Config.Command, function()
		if not isDead and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'billing') then
			ShowBillsMenu()
		end
	end, false)

	RegisterKeyMapping(Config.Command, _U('keymap_showbills'), 'keyboard', 'F7')
end

CreateThread(function()
	local tries = 10
	while not ESX do
		Wait(100)
		TriggerEvent(Config.Callbacks["esx:getSharedObject"] or "esx:getSharedObject", function(obj) ESX = obj end)
		tries = tries - 1
		if tries == 0 then
			print("You forgot to change ESX shared object in config, please do it now or the script wont work properly. (rcore_billing)")
			break
		end
	end
end)

AddEventHandler(Config.Callbacks['esx:onPlayerDeath'], function() isDead = true end)
AddEventHandler('playerSpawned', function(spawn) isDead = false end)