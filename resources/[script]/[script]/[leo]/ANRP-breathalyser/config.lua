Config = {}

Config.Locale = 'en'

Config.BlowTime = 5000 --keep it default for good experience

Config.ESXLegacy = false

-- https://docs.fivem.net/docs/game-references/controls/
-- Default is ENTER key
Config.BlowKey = {
    AcceptKey = 191,
    AcceptCode = '~INPUT_FRONTEND_RDOWN~',
    CancelKey = 177,
    CancelCode = '~INPUT_CELLPHONE_CANCEL~'
}

Config.InteractSound = true

Config.Jobs = {
    restrict = true,
    jobs = {'ambulance' ,  'police'}
}
