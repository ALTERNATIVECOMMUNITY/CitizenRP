Config = {}

Config.Debug = true
Config.DebugLevel = {
	'INFO',
	'SECURITY',
	'CRITICAL',
	'DEBUG',
	'ERROR',
	'SUCCESS',
}

Config.License = '183418d1f732e6738dd98bcdf670f2ec'
Config.TurnOffUI = true
Config.Command = 'fakturace' --/cmd to open invoice menu
Config.DeleteAfterPay = true
Config.CanPayCash = false --If true, they can take money from cash
Config.PercentForSender = {
	['police'] = 20, --Police officer will get 20% of invoice price
}
Config.PercentForSociety = {
	--['society_police'] = { --Invoices for society police will give 30% to goverment
	--	society = 'society_goverment',
	--	value = 30,
	--}, --30% of police invoice will go to society_goverment
}
Config.Callbacks = {
	['getTargetBills'] = 'esx_billing:getTargetBills',
	['payBill'] = 'esx_billing:payBill',
	['getBill'] = 'esx_billing:getBills',
	['sendBill'] = 'esx_billing:sendBill',
	['esx:playerLoaded'] = 'esx:playerLoaded',
	['esx:playerDropped'] = 'esx:playerDropped',
	['esx:onPlayerDeath'] = 'esx:onPlayerDeath',
	['esx_addonaccount:getSharedAccount'] = 'esx_addonaccount:getSharedAccount',
	['esx_society:getSociety'] = 'esx_society:getSociety',
	["esx:getSharedObject"] = "esx:getSharedObject",
}
Config.MenuPosition = 'right'
Config.OldESX = false --if true use user_accounts table, if false use bank, money column in users table
Config.UseEXM = false --u are using EXM, legacy ESX last and you have accounts json column at users table
Config.ShowEmptyMenu = true --Show menu even if its empty
Config.Locale = 'en'
Config.DueDate = 1--In days, near due date starts at half of this time
Config.BankProcent = 20 --Procent of money what can be used to pay unpaid bills
Config.PaymentMode = 'STANDARD'
Config.PayoutTime = { --every day at
	{
		d = { -- can be nil for everyday or specify days with numbers
			1, --Monday
			2,
			3,
			4,
			5, --Friday
			6,
			7 --Sunday
		},
		h = 16,
		m = 50,
	},
}
