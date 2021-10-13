--------------------TRAFFIC ADVISOR SETTINGS---------------------
ta_masterswitch = true
--	Determines if traffic_advisor plugin can be activated.
ta_combokey = false
--  Key that needs to be pressed in combination with registered key mapping. Set to false to disable. (default: disabled (false))

--[[ Documentation / Wiki: https://github.com/TrevorBarns/luxart-vehicle-control/wiki/Traffic-Advisor ]]

TA_ASSIGNMENTS = {
  ['DEFAULT'] = { },

  ['valorfpis'] = { 	lightbar = 1,
			left = { on = { add = 6, remove = 5, repair = true }, off = { add = {}, remove = { 5, 6 } } },
			right = { on = { add = 5, remove = 6, repair = true }, off = { add = {}, remove = { 6, 5 } } },
			middle = { on = { add = { 5, 6 }, remove = {}, repair = true }, off = { add = {}, remove = { 5, 6 } } },
		},
    ['valorfpiu'] = { 	lightbar = 1,
        left = { on = { add = 6, remove = 5, repair = true }, off = { add = {}, remove = { 5, 6 } } },
        right = { on = { add = 5, remove = 6, repair = true }, off = { add = {}, remove = { 6, 5 } } },
        middle = { on = { add = { 5, 6 }, remove = {}, repair = true }, off = { add = {}, remove = { 5, 6 } } },
      },

}
