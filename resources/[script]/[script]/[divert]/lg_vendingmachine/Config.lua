config = {
    key_open = 'E',
    -- If you use weight system on your server, enable this variable
    use_weight_system = true,
}

-- Here you add the products that will be sold on each machine
-- The MAXIMUM products that can be added is 15
-- Add the product as follows: {name = "NameProduct", label = "LabelProduct", price = SomeNumber}
-- name  -> Name index of item
-- label -> Name that the player sees of the item
-- weight -> Weight of the item, if you use limit system, ignore this
-- price -> Amount charged for the product
types_machine = {
    -- If you want all machines to have the same products, put the products here
    all_machines = {
        -- {name = "chips2", label = "Chips2", weight = 0, price = 50.0},
        -- {name = "chips", label = "Chips", weight = 0, price = 50.0},
        -- {name = "cigarets", label = "Cigarets", weight = 0, price = 50.0},
        -- {name = "energy", label = "Energy", weight = 0, price = 50.0},
        -- {name = "orange", label = "Orange", weight = 0, price = 50.0},
        -- {name = "pepsi", label = "Pepsi", weight = 0, price = 50.0},
        -- {name = "refrigerante", label = "Refrigerante", weight = 0, price = 50.0},
        -- {name = "snack", label = "Snack", weight = 0, price = 50.0},
        -- {name = "snack2", label = "Snack2", weight = 0, price = 50.0},
        -- {name = "snack3", label = "Snack3", weight = 0, price = 50.0},
        -- {name = "snack4", label = "Snack4", weight = 0, price = 50.0},
        -- {name = "suco", label = "Suco", weight = 0, price = 50.0},
    },

    -- Drink machine (coffee)
    prop_vend_coffe_01 = {
        {name = "coffe", label = "Caffé", weight = 1, price = 50.0}
    },

    -- drink machine
    prop_vend_fridge01 = {

    },

    -- food machine
    prop_vend_snak_01 = {
{name = "chaser", label = "Barre chocolat", weight = 0, price = 50.0}
    },

    -- food machine
    prop_vend_snak_01_tu = {
      {name = "redw", label = "Cigarettes", weight = 2, price = 50.0}
    },

    -- drink machine (soda)
    prop_vend_soda_01 = {
        {name = "sprunk", label = "Sprunk", weight = 2, price = 50.0}

    },

    -- drink machine (soda)
    prop_vend_soda_02 = {
    {name = "soda", label = "COla", weight = 2, price = 50.0}
    },

    -- drink machine (water)
    prop_vend_water_01 = {

    },

}

-- Here you add the name of the machine prop
props_machine = {
    "prop_vend_coffe_01",
    "prop_vend_fridge01",
    "prop_vend_snak_01",
    "prop_vend_snak_01_tu",
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01",
}

-- Here you translate the graphical interface
translate = {
    TR_SELECT_PRODUCT = "SÉLECTIONNEZ VOTRE PRODUIT",
    TR_PRODUCT = "PRODUIT",
    TR_SIMBOL_MONEY = "$",
    TR_CONFIRM_PAYMENT = "Confirmer le paiement",
    TR_RESET_SELECTION = "Réinitialiser la sélection",
    TR_EXIT = "Sortir",
    TR_CONFIRMING = "CONFIRMER LE PAIEMENT...",
    TR_WAIT = "WAIT",
    TR_NOTIFY = "Pour utiliser la machine, appuyez sur",
    TR_NOT_WEIGHT = "Votre inventaire est trop plein.",
    TR_NOT_MONEY = "Vous n&#39;avez pas d&#39;argent.",
}
