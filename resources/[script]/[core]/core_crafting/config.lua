Config = {

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Workbench',

UseLimitSystem = false, -- Enable if your esx uses limit system

CraftingStopWithDistance = true, -- Crafting will stop when not near workbench

ExperiancePerCraft = 10, -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = false, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {

-- ['misc'] = {
-- 	Label = 'MISC',
-- 	Image = 'fishingrod',
-- 	Jobs = {}
-- },
['weapons'] = {
	Label = 'ARMES',
	Image = 'WEAPON_APPISTOL',
	Jobs = {}
},
-- ['medical'] = {
-- 	Label = 'MEDICAL',
-- 	Image = 'bandage',
-- 	Jobs = {}
-- }


},

PermanentItems = { -- Items that dont get removed when crafting
	['wrench'] = true
},

Recipes = { -- Enter Item name and then the speed value! The higher the value the more torque

-- ['bandage'] = {
-- 	Level = 0, -- From what level this item will be craftable
-- 	Category = 'medical', -- The category item will be put in
-- 	isGun = false, -- Specify if this is a gun so it will be added to the loadout
-- 	Jobs = {'ambulance'}, -- What jobs can craft this item, leaving {} allows any job
-- 	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
-- 	Amount = 2, -- The amount that will be crafted
-- 	SuccessRate = 100, -- 100% you will recieve the item
-- 	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
-- 	Time = 10, -- Time in seconds it takes to craft this item
-- 	Ingredients = { -- Ingredients needed to craft this item
-- 		['clothe'] = 2, -- item name and count, adding items that dont exist in database will crash the script
-- 		['wood'] = 1
-- 	}
-- },

['WEAPON_COMBATPISTOL'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 5, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
	['copper'] = 3, -- item name and count, adding items that dont exist in database will crash the script
	['wood'] = 5,
	['iron'] = 10,
	['culasse_pistolet'] = 1,
	['canon_9'] = 1,
	['percuteur'] = 1
	}
},

['WEAPON_HEAVYPISTOL'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 80, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 9, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 10,
		['iron'] = 20,
		['culasse_pistolet'] = 1,
		['canon_45'] = 1,
		['percuteur'] = 1
	}
},

['weapon_pistol50'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 150, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 20, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 10,
		['iron'] = 50,
		['culasse_pistolet'] = 1,
		['canon_50ae'] = 1,
		['percuteur'] = 1
	}
},
['weapon_smg'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 200, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 40, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 20,
		['iron'] = 30,
		['culasse_smg'] = 1,
		['canon_9'] = 1,
		['percuteur'] = 1,
		['garde_main'] = 1,
	}
},

['weapon_minismg'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 60, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 35, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 50,
		['iron'] = 30,
		['culasse_smg'] = 1,
		['canon_9'] = 1,
		['percuteur'] = 1,
	}
},



['weapon_compactrifle'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 200, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 50, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 50,
		['iron'] = 50,
		['culasse_fusil'] = 1,
		['canon_762'] = 1,
		['percuteur'] = 1,
		['garde_main'] = 1,
	}
},


['weapon_bullpuprifle'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 300, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 50, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 30,
		['iron'] = 100,
		['culasse_bullpup'] = 1,
		['canon_556'] = 1,
		['percuteur'] = 1,
		['garde_main'] = 1,
	}
},


['weapon_sniperrifle'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 600, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 200, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 200,
		['iron'] = 250,
		['culasse_fusil'] = 1,
		['canon_308'] = 1,
		['percuteur'] = 1,
		['garde_main'] = 2,
	}
},





['weapon_mg'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'weapons', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 500, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 40, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 60,
		['iron'] = 200,
		['culasse_mg'] = 1,
		['canon_762'] = 1,
		['percuteur'] = 1,
		['garde_main'] = 2,
	}
},





--
-- ['fishingrod'] = {
-- 	Level = 0, -- From what level this item will be craftable
-- 	Category = 'misc', -- The category item will be put in
-- 	isGun = false, -- Specify if this is a gun so it will be added to the loadout
-- 	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
-- 	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
-- 	Amount = 3, -- The amount that will be crafted
-- 	SuccessRate = 90, -- 90% That the craft will succeed! If it does not you will lose your ingredients
-- 	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
-- 	Time = 20, -- Time in seconds it takes to craft this item
-- 	Ingredients = { -- Ingredients needed to craft this item
-- 		['wood'] = 3 -- item name and count, adding items that dont exist in database will crash the script
--
-- 	}
-- }

},

Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access

		{coords = vector3(1397.79,3635.48,35.87), jobs = {}, blip = false, recipes = {}, radius = 3.0 }

},


Text = {

    ['not_enough_ingredients'] = 'You dont have enough ingredients',
    ['you_cant_hold_item'] = 'You cant hold the item',
    ['item_crafted'] = 'Item crafted!',
    ['wrong_job'] = 'You cant open this workbench',
    ['workbench_hologram'] = '[~b~E~w~] Workbench',
    ['wrong_usage'] = 'Wrong usage of command',
    ['inv_limit_exceed'] = 'Inventory limit exceeded! Clean up before you lose more',
    ['crafting_failed'] = 'You failed to craft the item!'

}

}



function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        exports['mythic_notify']:SendAlert('inform', msg)

end
