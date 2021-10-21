--[[ PLANT GROWTH STAGES
Each plant starts out at stage 1 and starting consumes
one Config.Items.Seed immediately, and the first timer starts running.
Interacting with the plant at this time destroys it.
When the time is up, it progresses to the next stage, which is
a mode='tend' stage. Interaction at this stage consumes one
Config.Items.Tend, or is free if the Tend Object is not specified.
Interaction is possible at any time. Failure to interact before the
time runs out causes the plant to die.
This continuses for all grow/tend cycles until a mode='yield' cycle
is arrived at. Interacting with the plant at this time will yield
between Config.Yield[1] and Config.Yield[2] of Config.Items.Product
and between Config.YieldSeed[1] and Config.YieldSeed[2] seeds.
By default this means between 5 and 10 weed_pooch, and between 0
and 1 weed_seed
--]]

local Colors = {
    Growing = {0, 255, 128, 128},
    Tend = {255, 255, 128, 128},
    Harvest = {255, 128, 128, 128},
}

Growth = {
    { -- 1
        label = 'growth_seedling',
        model = `bkr_prop_weed_01_small_01c`,
        offset = vector3(0,0,-0.6),
        time = 20,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Growing,
        },
    },
    { -- 2
        label = 'growth_tend',
        model = `bkr_prop_weed_01_small_01b`,
        offset = vector3(0,0,-0.6),
        interact = true,
        time = 240,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Tend,
        },
    },
    { -- 3
        label = 'growth_growing',
        model = `bkr_prop_weed_01_small_01a`,
        offset = vector3(0,0,-0.6),
        time = 20,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Growing,
        },
    },
    { -- 4
        label = 'growth_tend',
        model = `bkr_prop_weed_med_01a`,
        offset = vector3(0,0,-3.1),
        interact = true,
        time = 240,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Tend,
        },
    },
    { -- 5
        label = 'growth_growing',
        model = `bkr_prop_weed_med_01b`,
        offset = vector3(0,0,-3.1),
        time = 20,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Growing,
        },
    },
    { -- 6
        label = 'growth_yield',
        model = `bkr_prop_weed_lrg_01a`,
        offset = vector3(0,0,-3.1),
        interact = true,
        yield = true,
        time = 480,
        marker = {
            offset = vector3(0,0,0),
            color = Colors.Harvest,
        },
    },
}