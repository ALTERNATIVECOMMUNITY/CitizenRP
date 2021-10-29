Config = {
	Default_Prio = 500000, -- This is the default priority value if a discord isn't found
	AllowedPerTick = 6, -- How many players should we allow to connect at a time?
	HostDisplayQueue = true,
	onlyActiveWhenFull = false,
	Requirements = { -- A player must have the identifier to be allowed into the server
		Discord = true,
		Steam = false
	},
	WhitelistRequired = true, -- If this option is set to true, a player must have a role in Config.Rankings to be allowed into the server
	Debug = true,
	Webhook = 'https://discord.com/api/webhooks/892448792064979034/ADlB1qenKyEXyF827oyK6NYyAGlPmbCfiPrNeV53Z9bFI8iKs6FicrraCu2w2DG4BBv7',
	Displays = {
		Prefix = '[NTM]',
		ConnectingLoop = {
			'🦡🌿🦡🌿🦡🌿',
			'🌿🦡🌿🦡🌿🦡',
			'🦡🌿🦡🌿🦡🥦',
			'🌿🦡🌿🦡🥦🦡',
			'🦡🌿🦡🥦🦡🥦',
			'🌿🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🥦',
			'🥦🦡🥦🦡🥦🦡',
			'🦡🥦🦡🥦🦡🌿',
			'🥦🦡🥦🦡🌿🦡',
			'🦡🥦🦡🌿🦡🌿',
			'🥦🦡🌿🦡🌿🦡',
		},
		Messages = {
			MSG_CONNECTING = 'You are being connected [{QUEUE_NUM}/{QUEUE_MAX}]: ', -- Default message if they have no discord roles
			MSG_CONNECTED = 'You are up! You are being connected now :)',
			MSG_DISCORD_REQUIRED = 'Your Discord was not detected... You are required to have Discord to play on this server...',
			MSG_STEAM_REQUIRED = 'Your Steam was not detected... You are required to have Steam to play on this server...',
			MSG_NOT_WHITELISTED = 'You do not have a Discord role whitelisted for this server... You are not whitelisted.',
		},
	},
}

Config.Rankings = {
    -- LOWER NUMBER === HIGHER PRIORITY
    -- ['roleID'] = {rolePriority, connectQueueMessage},
    --	['Citoyens'] = {500, "Tu es sur la rocade ! [{QUEUE_NUM}/{QUEUE_MAX}]:"},
    ['vip'] = {
        200,
        "Tu es sur la rocade ! (VIP) [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },
    ['Testeur'] = {
        200,
        "Tu es sur la rocade ! (Testeur) [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },

    ['Streamer'] = {
        100,
        "Rocade spéciale press [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },

    ['MODERATION'] = {
        50,
        "Rocade Modérateur [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },

    ['Dev'] = {
        30,
        "Rocade des geeks. [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },
    ['Gestions'] = {
        20,
        "Rocade des semi-dieux. [{QUEUE_NUM}/{QUEUE_MAX}]:"
    },
    ['Fonda'] = {
        1,
        "Rocade des dieux. [{QUEUE_NUM}/{QUEUE_MAX}]:"
    }
}
