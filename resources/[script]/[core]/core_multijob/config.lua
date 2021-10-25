Config = {


MaxJobs = 3, -- Maximum amount of jobs avalable for every player (Only applies to jobs that are auto savable)
AllowAutoJobSavining = true, -- When the script detects a new job it will add it to your jobs Ex. You get police job and it saves that job (if maximum not reached) to your job list

OpenJobUIKey = 'F11', -- The key used to open the UI (Leave blank if you do not want to use key)
OpenJobUICommand = 'jobs', -- Command used to open the UI (MUST NOT BE BLANK!!)

--Set up blip info (https://docs.fivem.net/docs/game-references/blips/)
--BLIPS FOR MANAGEMENT LOCATIONS
BlipSprite = 457,
BlipColor = 3,
BlipText = 'Gestions Emplois',

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Pole Emplois',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.5,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(-261.82537841797,-965.21392822266,31.22407531738), blip = true}
},

--Boss menu locations
BossMenuLocations = {

	{coords = vector3(-1093.4733886719,-828.84777832031,34.276973724365), job = "police", label = "POLICE"},
{coords = vector3(-560.65112304688,-125.27180480957,47.518131256104), job = "police", label = "POLICE"},
	{coords = vector3(335.06,-593.75,42.28), job = "ambulance", label = "L.S.F.D"},
--	{coords = vector3(542.61, -200.18, 53.49), job = "import", label = "JDM Imports"},

},

--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true},
	['capitaine'] = {canWithdraw = false, canDeposit = false, canHire = true, canRank = true, canFire = true},
	['sergent'] = {canWithdraw = false, canDeposit = false, canHire = true, canRank = true, canFire = true},
	['commandant'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true}

},




LocationsToChangeJobs = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(-267.58975219727,-958.55718994141,31.22312927246), blip = true}
},

OffdutyForEveryone = true, -- Everyone can go into offduty job
JobsThatCanUseOffduty = { -- Jobs that can use offduty if option above is false
	'police',
	'ambulance',
	'mechanic',
	'mecano'
},

DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/

	{job = 'miner', label = "Mineur", icon = "fas fa-gem", description = ""},
	--{job = 'fisherman', label = "Pecheur", icon = "fas fa-fish", description = ""},
--	{job = 'avocat', label = "Avocat", icon = "fas fa-archway", description = ""},
--	{job = 'fueler', label = "Petrolier", icon = "fas fa-gas-pump", description = ""},
	--{job = 'garbage', label = "Eboueur", icon = "fas fa-recycle", description = ""},
--	{job = 'lumberjack', label = "Bucheron", icon = "fas fa-tree", description = ""},
	--{job = 'slaughterer', label = "Boucher", icon = "fas fa-drumstick-bite", description = ""},
	--{job = 'tailor', label = "Tailleur", icon = "fas fa-tshirt", description = ""},
		{job = 'gardener', label = "Jardinier", icon = "fas fa-carrot", description = ""},
			{job = 'tastyeats', label = "Uber Eat", icon = "fas fa-utensils", description = ""},
				{job = 'busdriver', label = "Chauffeur de bus", icon = "fas fa-bus", description = ""},
				{job = 'farmer', label = "Fermier", icon = "fas fa-seedling", description = ""},
				{job = 'fruitpicker', label = "Saisonier", icon = "fas fa-apple-alt", description = ""},
				{job = 'courier', label = "Chauffeur-Livreur", icon = "fas fa-envelope", description = ""},
	{job = 'unemployed', label = "Chommeur", icon = "fas fa-peace", description = "Chomeur ..."},


},

DefaultJobs = { -- Jobs that will be added in menu by default and wont be removable


},

Text = {

	['cant_offduty'] = 'Vous ne pouvez pas vous absenter !',
	['open_ui_hologram'] = '[~b~E~w~] Ouvrir la gestion des tâches',
	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Ouvrir Job Center',
	['wrong_usage'] = 'Mauvaise utilisation de la commande',
	['job_added'] = 'Offre d&#39;emploi ajoutée !',
	['promoted'] = 'Vous avez été promu',
	['promoted_other'] = 'Vous avez été promu dans un autre emploi !',
	['fired'] = 'vous avez été licencié',
	['fired_other'] = 'vous avez été licencié',
	['hired'] = 'Yvous avez été embauché',
	['bossmenu_hologram'] = '[~b~E~w~] Ouvrir le menu du boss',
	['action_success'] = 'Action réussiel',
	['action_unsuccessful'] = 'Action infructueuse',
	['cant_access_bossmenu'] = 'Vous ne pouvez pas accéder au menu du patron',
	['insufficent_balance'] = 'Solde insuffisant',
	['bonus_given'] = 'Bonus has been given!',
	['bonus_recieved'] = 'Vous avez reçu un bonus ! +$'

}


}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		--SetNotificationTextEntry('STRING')
		--AddTextComponentString(msg)
		--DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		exports['mythic_notify']:SendAlert('error', msg)

end
