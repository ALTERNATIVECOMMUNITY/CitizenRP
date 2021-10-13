-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
Config = {}

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.AutoCamPosition = true -- If true it'll set the camera position automatically

Config.AutoCamRotation = true -- If true it'll set the camera rotation automatically

Config.HideMinimap = true -- If true it'll hide the minimap when interacting with an NPC

Config.UseOkokTextUI = true -- If true it'll use okokTextUI

Config.CameraAnimationTime = 1000 -- Camera animation time: 1000 = 1 second

Config.TalkToNPC = {
	{
		npc = 'a_m_y_acult_02', 										-- Website too see peds name: https://wiki.rage.mp/index.php?title=Peds
		header = 'Mec Chelou', 								-- Text over the name
		name = 'Maurice', 										-- Text under the header
		uiText = "Parler au mec chelou",							-- Name shown on the notification when near the NPC
		dialog = 'Wesh, tu veux quoi ?',						-- Text showm on the message bubble
		coordinates = vector3(125.78336334229,6644.1044921875,30.799661636353), 				-- coordinates of NPC
		heading = 45.0,											-- Heading of NPC (needs decimals, 0.0 for example)
		camOffset = vector3(0.0, 0.0, 0.0), 						-- Camera position relative to NPC 	| (only works if Config.AutoCamPosition = false)
		camRotation = vector3(0.0, 0.0, 0.0),						-- Camera rotation 					| (only works if Config.AutoCamRotation = false)
		interactionRange = 2.5, 									-- From how far the player can interact with the NPC
		options = {													-- Options shown when interacting (Maximum 6 options per NPC)
			{'Je cherches des trucs...', "TriggerEvent('inventory:openShop')", 'c'},		-- 'c' for client
		--	{'How can I rob the bank?', 'okokTalk:rob', 'c'},		-- 's' for server (if you write something else it'll be server by default)
		},
		jobs = {													-- Jobs that can interact with the NPC

		},
	},
	--[[
	-- This is the template to create new NPCs
	{
		npc = "",
		header = "",
		name = "",
		uiText = "",
		dialog = "",
		coordinates = vector3(0.0, 0.0, 0.0),
		heading = 0.0,
		camOffset = vector3(0.0, 0.0, 0.0),
		camRotation = vector3(0.0, 0.0, 0.0),
		interactionRange = 0,
		options = {
			{"", 'client:event', 'c'},
			{"", 'client:event', 'c'},
			{"", 'client:event', 'c'},
			{"", 'server:event', 's'},
			{"", 'server:event', 's'},
			{"", 'server:event', 's'},
		},
		jobs = {	-- Example jobs
			'police',
			'ambulance',
		},
	},
	]]--
}
