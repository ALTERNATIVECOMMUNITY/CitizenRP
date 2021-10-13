# rcore_billing
Better version of esx_billing

You can contact us at our discord discord: https://discord.gg/F28PfsY

### Installation
1) remove esx_billing
2) rename this folder to rcore_billing
3) insert into server.cfg replace esx_billing with rcore_billing

You dont have to change any dependencies for esx_billing, rcore billing
provides all dependencies and its compatible with your esx_billing script.

### ESX selection

`OldESX = true & UseEXM = false` if you are using ESX 1.1 with essentialmode
and your users table has bank & money column

`OldESX = false & UseEXM = true` if you have in your users table column
accounts as json

`OldESX = true & UseEXM = false` if you have user_accounts table

```
Config.OldESX = false --if true use user_accounts table, if false use bank, money column in users table
Config.UseEXM = false --u are using EXM, legacy ESX last and you have accounts json column at users table
```
### Percent options

You can setup multiple percent options, so from one invoice will
more than one society/sender will get more.

#### How to setup that invoice sender will get percent from invoice

Simple:
```lua
Config.PercentForSender = {
	['police'] = 20, --Police officer will get 20% of invoice price
}
```

That mean, that every police officer that will send invoice and invoice get
paid will get 20% of invoice to his bank account.

So police officer will send invoice for 100$ to player, player will pay for that
invoice and society_police will get 80$ and police officer get 20$.

As well you can send part of invoice to another society for our example for goverment

```lua
Config.PercentForSociety = {
	['society_police'] = { --Invoices for society police will give 30% to goverment
		society = 'society_goverment',
		value = 30,
	}, --30% of police invoice will go to society_goverment
}
```

### Antispam settings

If one player will create invoice in this time it will be declared as spam invoice

`SConfig.SpamDetect = 1500`

If this option is true, spam invoices will be automaticly deleted

`SConfig.DeleteSpammedInvoices = true`

Send spam notification to discord? `SConfig.DiscordWebhook = ''` must be filled

`SConfig.SendSpamNotification = true`

### Discord notification

SConfig.DiscordSending = true
SConfig.DiscordSendingLimit = 2000 --If invoice is lower than this its not sending discord notification, set 0 to send all
SConfig.DiscordWebhook = ''
SConfig.DiscordColors = {
    ['Green'] = 56108,
    ['Grey'] = 8421504,
    ['Red'] = 16711680,
    ['Orange'] = 16744192,
    ['Blue'] = 2061822,
    ['Purple'] = 11750815
}

If you will fill job webooks table with your job name and webhook
it will send your notification to your webhook for specific jobs.

```lua
SConfig.JobSending = true
SConfig.JobWebhooks = {
    ['police'] = '',
    ['ambulance'] = '',
}
```

You can edit as well how will message for job looks simply with locales
in locales/en.lua or your language file you can find

```lua
['job_discord_notif'] = 'Player: {PLAYER_NAME}\nCena: {PRICE}$\nTarget: {TARGET_NAME}\nDescription: {DESCRIPTION}',
```

As you can see there is variables with syntax {PLAYER_NAME} you can use this variables

```
--Allowed variables in discord notification
--{PLAYER_NAME} - Player name with discord
--{PLAYER_ID} - Player ID
--{PLAYER_IDENTIFIER} - Player identifier
--{TARGET_NAME} - Player name with discord
--{TARGET_ID} - Player ID
--{TARGET_IDENTIFIER} - Player identifier
--{DESCRIPTION} - label of invoice
--{PRICE} - price of invoice
```
### Automatic payments

In our billing is automatic payment for invoices after due date, due date
you can setup, its count for real days so if you setup due date for 3 it will
be real 3 days.

In standard mode we will take percent of player bank account value and
we will with that value pay invoices. You can setup how much will be used
for paying invoices.

```lua
Config.DueDate = 1--In days, near due date starts at half of this time
Config.BankProcent = 20 --Procent of money what can be used to pay unpaid bills
Config.PaymentMode = 'STANDARD'
```
#### Setup payment timer

We are using cron to run payment process when you want, so d variables is for
days, h for hours, m for minutes, its table so you can create multiple crons
at one

Example every day at 3:00
```lua
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
		h = 3,
		m = 0,
	},
}

```
