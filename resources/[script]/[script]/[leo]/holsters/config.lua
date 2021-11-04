config = {
    ["weapon"] = {
        "WEAPON_PISTOL",
        "WEAPON_COMBATPISTOL",
        "WEAPON_SNSPISTOL",
        "WEAPON_PISTOL_MK2",
        "WEAPON_GLOCK",
        "WEAPON_HEAVYPISTOL",
        "WEAPON_DOUBLEACTION"
    },
    ["peds"] = {
        ["mp_m_freemode_01"] = { -- Male multiplayer ped
            ["components"] = {
                [7] = { -- Component ID, "Neck" or "Teeth" category
                    [1] = 3,
                    [6] = 5,
                    [8] = 2,
                    [10] = 9,
                    [42] = 43,
                    [110] = 111,
                    [119] = 120
                },
                [8] = {
                    [16] = 18
                }
            }
        },
        ["mp_f_freemode_01"] = { -- Female multiplayer ped
            ["components"] = {
                [7] = { -- Component ID, "Neck" or "Teeth" category
                    [1] = 3,
                    [8] = 2
                },
                [8] = {
                    [9] = 10
                }
            }
        },
        ["s_m_y_hwaycop_01"] = {
            ["enabled"] = true, -- true/false. Optional field, the ped will default as enabled
            ["components"] = {
                [9] = {
                    [1] = 0
                }
            }
        },
        ["s_m_y_cop_01"] = {
            ["components"] = {
                [9] = {
                    [1] = 0
                }
            }
        },
        ["s_m_y_sheriff_01"] = {
            ["components"] = {
                [9] = {
                    [1] = 0
                }
            }
        }
    }
}
