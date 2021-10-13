-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
Config = {}
Translation = {}

Translation = {
    ['de'] = {
        ['DJ_interact'] = 'Drücke ~g~E~s~, um auf das DJ Pult zuzugreifen',
        ['title_does_not_exist'] = '~r~Dieser Titel existiert nicht!',
    },

    ['en'] = {
        ['DJ_interact'] = 'Appuyez sur ~g~E~s~, pour accéder au bureau du DJ',
        ['title_does_not_exist'] = ' Ce titre n\'existe pas !',
    }
}

Config.Locale = 'en'

Config.useESX = true -- can not be disabled without changing the callbacks
Config.enableCommand = false

Config.enableMarker = true -- purple marker at the DJ stations

Config.DJPositions = {
    {
        name = 'eglise',
        pos = vector3(-769.771484375,-17.374774932861,44.9680023193366),
        requiredJob = nil,
        range = 50.0,
        volume = 0.1 --[[ do not touch the volume! --]]
    }

    {name = 'bahama', pos = vector3(372.73880004883,-934.80206298828,25.327251434326), requiredJob = 'cyber', range = 25.0}
}
