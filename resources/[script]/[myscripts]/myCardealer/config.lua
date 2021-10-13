Cfg = {}
Translation = {}

Cfg.Locale = 'en'

Cfg.DeliveryTime = {h = 18, m = 00} -- When should ordered vehicles arrive at the cardealer

Cfg.Society_Name = 'society_cardealer'
Cfg.society = 'cardealer' -- = Job MySQLName
Cfg.Society = 'cardealer'
Cfg.NotificationPicture = 'CHAR_CARSITE2'
Cfg.CompanyName = 'Import de vehicule'
Cfg.GaragePed = 's_m_y_xmech_01'

Cfg.NumberPlate = 'LUXURY'

-- Purchased Vehicle Number plate settings:
-- looks like: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Cfg.PlateLetters  = 3
Cfg.PlateNumbers  = 3
Cfg.PlateUseSpace = true

-- Luxury Cars Dealer Coords for Uncle Justs Car Dealer
--[[
Cfg.Coords = {

    cam = {
        pos = { x = -788.49, y = -227.87, z = 39.08},
        point = {x = -783.58, y = -223.5, z = 37.32},
    },
    cam2 = {
        pos = { x = -798.49, y = -228.87, z = 39.08},
        point = {x = -794.44, y = -231.46, z = 37.08},
    },
    cam3 = {
        pos = { x = -794.49, y = -234.87, z = 39.08},
        point = {x = -791.41, y = -237.7, z = 37.08},
    },
    cam4 = {
        pos = { x = -791.49, y = -239.87, z = 39.08},
        point = {x = -788.41, y = -242.7, z = 37.08},
    },


    Clothe = {
      {x = -804.79, y = -213.25, z = 37.08}
    },

    Boss = {
      {x = -788.96, y = -216.46, z = 37.08}
    },

    Garage = {
      {x = -767.76, y = -230.14, z = 37.08, rot = 121.02, spawn = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}}
    },

    DeSpawn = {
      {x = -768.27, y = -232.08, z = 37.08}
    },

    OnOffDuty = {
      {x = -800.69, y = -210.22, z = 37.08}
    },

    Ring = {
      {x = -795.9, y = -219.51, z = 37.08}
    },

    Computer = {
        {x = -793.87, y = -219.68, z = 37.08, spawn = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}}
    },

    Showrooms = {
        {
            spawn = {x = -783.58, y = -223.5, z = 37.32, rot = 139.81},
            menu = {x = -786.25, y = -229.35, z = 37.08},
            ChangeColor = false,
            spawn2 = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}
        },
        {
            spawn = {x = -788.41, y = -242.7, z = 37.08, rot = 78.96},
            menu = {x = -789.57, y = -244.25, z = 37.08},
            ChangeColor = true,
            spawn2 = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}
        },
        {
            spawn = {x = -791.41, y = -237.7, z = 37.08, rot = 78.96},
            menu = {x = -792.57, y = -239.67, z = 37.08},
            ChangeColor = false,
            spawn2 = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}
        },
        {
            spawn = {x = -794.44, y = -231.46, z = 37.08, rot = 78.96},
            menu = {x = -795.1, y = -234.76, z = 37.08},
            ChangeColor = false,
            spawn2 = {x = -773.2, y = -234.42, z = 37.08, rot = 205.50}
        },
    }
}
]]


Cfg.Coords = {

    cam = {
        pos = {x = -72.66, y = 73.53, z = 71.64},
        point = {x = -75.48, y = 74.8, z = 71.69, rot = 210.0},
    },
    cam2 = {
        pos = { x = -62.66, y = 66.46, z = 71.9},
        point = {x = -66.36, y = 72.87, z = 71.36, rot = 183.89},
    },
    cam3 = {
        pos = { x = -62.38, y = 71.21, z = 71.78},
        point = {x = -59.79, y = 71.98, z = 71.42, rot = 109.34},
    },
    cam4 = {
        pos = { x = -66.35, y = 67.89, z = 71.83},
        point = {x = -72.17, y = 69.27, z = 71.37, rot = 71.37},
    },


    Clothe = {
      {x = -50.83, y = 76.76, z = 71.94}
    },

    Boss = {
      {x = -53.94, y = 73.89, z = 71.89}
    },

    Garage = {
      {x = -58.22, y = 80.07, z = 71.71, rot = 164.71, spawn = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}}
    },

    DeSpawn = {
      {x = -60.92, y = 79.24, z = 71.66}
    },

    Ring = {
      {x = -55.72, y = 67.68, z = 71.95}
    },

    Computer = {
      {x = -53.74, y = 67.65, z = 71.96, spawn = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}}
    },

    Showrooms = {
        {
            spawn = {x = -75.48, y = 74.8, z = 71.69, rot = 210.0},
            menu = {x = -72.66, y = 73.53, z = 71.64},
            ChangeColor = false,
            spawn2 = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}
        },
        {
            spawn = {x = -66.36, y = 72.87, z = 71.36, rot = 183.89},
            menu = {x = -63.76, y = 74.21, z = 71.67},
            ChangeColor = true,
            spawn2 = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}
        },
        {
            spawn = {x = -59.79, y = 71.98, z = 71.42, rot = 109.34},
            menu = {x = -56.46, y = 70.63, z = 71.89},
            ChangeColor = false,
            spawn2 = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}
        },
        {
            spawn = {x = -72.17, y = 69.27, z = 71.37, rot = 71.37},
            menu = {x = -69.71, y = 66.53, z = 71.83},
            ChangeColor = false,
            spawn2 = {x = -69.55, y = 83.23, z = 71.2, rot = 64.9}
        },
    }
}

Cfg.Marker = {
    id          = 27,
    colour      = {r = 0, g = 0, b = 128, a = 125},
    isRotating  = false,
    radius      = 1.0,
}

Cfg.Grades = {
    {number = 0, label = 'Trainee'},
    {number = 1, label = 'Seller'},
    {number = 2, label = 'Business Seller'},
    {number = 3, label = 'Boss'},
}

Cfg.MapBlip = {
    {
        Pos     	= {x = -53.94, y = 73.89, z = 71.89},
        Sprite  	= 523,
        Display	    = 4,
        Scale  	    = 1.2,
        Colour  	= 66,
        Name        = 'Luxury Cardealer',
        OnlyHasJob  = false
    },
}

Cfg.Clothes = {
    {
        name = 'Boss',
        grade = 3,
        Male = {
          Mask = {id = 121, id2 = 0},
          Arms = {id = 30, id2 = 0},
          Leg = {id = 25, id2 = 0},
          bag = {id = 0, id2 = 0},
          Shoes = {id = 21, id2 = 0},
          Accessory = {id = 11, id2 = 2},
          Tshirt = {id = 13, id2 = 2},
          Kevlar = {id = 0, id2 = 0},
          Badge = {id = 0, id2 = 0},
          Torso = {id = 60, id2 = 2},
          Watch = {id = 1, id2 = 0},
          Hat = {id = -1, id2 = 0},
          Glass = {id = -1, id2 = 0},
          Ear = {id = -1, id2 = 0}
        },
        Female = {
            Mask = {id = 121, id2 = 0},
            Arms = {id = 20, id2 = 0},
            Leg = {id = 47, id2 = 0},
            bag = {id = 0, id2 = 0},
            Shoes = {id = 29, id2 = 0},
            Accessory = {id = 23, id2 = 0},
            Tshirt = {id = 38, id2 = 2},
            Kevlar = {id = 0, id2 = 0},
            Badge = {id = 0, id2 = 0},
            Torso = {id = 53, id2 = 2},
            Watch = {id = 1, id2 = 0},
            Hat = {id = -1, id2 = 0},
            Glass = {id = -1, id2 = 3},
            Ear = {id = -1, id2 = 2}
        }
    },
    {
        name = 'Trainee',
        grade = 0,
        Male = {
          Mask = {id = 121, id2 = 0},
          Arms = {id = 20, id2 = 0},
          Leg = {id = 25, id2 = 0},
          bag = {id = 0, id2 = 0},
          Shoes = {id = 21, id2 = 0},
          Accessory = {id = 22, id2 = 0},
          Tshirt = {id = 33, id2 = 0},
          Kevlar = {id = 0, id2 = 0},
          Badge = {id = 0, id2 = 0},
          Torso = {id = 31, id2 = 0},
          Watch = {id = 1, id2 = 0},
          Hat = {id = -1, id2 = 0},
          Glass = {id = -1, id2 = 0},
          Ear = {id = -1, id2 = 0}
        },
        Female = {
          Mask = {id = 121, id2 = 0},
          Arms = {id = 20, id2 = 0},
          Leg = {id = 47, id2 = 0},
          bag = {id = 0, id2 = 0},
          Shoes = {id = 29, id2 = 0},
          Accessory = {id = 23, id2 = 0},
          Tshirt = {id = 38, id2 = 2},
          Kevlar = {id = 0, id2 = 0},
          Badge = {id = 0, id2 = 0},
          Torso = {id = 53, id2 = 0},
          Watch = {id = 1, id2 = 0},
          Hat = {id = -1, id2 = 0},
          Glass = {id = -1, id2 = 3},
          Ear = {id = -1, id2 = 2}
        }
    },
    {
        name = 'Business Seller',
        grade = 2,
        Male = {
            Mask = {id = 121, id2 = 0},
            Arms = {id = 20, id2 = 0},
            Leg = {id = 25, id2 = 0},
            bag = {id = 0, id2 = 0},
            Shoes = {id = 21, id2 = 0},
            Accessory = {id = 22, id2 = 0},
            Tshirt = {id = 33, id2 = 0},
            Kevlar = {id = 0, id2 = 0},
            Badge = {id = 0, id2 = 0},
            Torso = {id = 31, id2 = 0},
            Watch = {id = 1, id2 = 0},
            Hat = {id = -1, id2 = 0},
            Glass = {id = -1, id2 = 0},
            Ear = {id = -1, id2 = 0}
          },
        Female = {
            Mask = {id = 121, id2 = 0},
            Arms = {id = 20, id2 = 0},
            Leg = {id = 47, id2 = 0},
            bag = {id = 0, id2 = 0},
            Shoes = {id = 29, id2 = 0},
            Accessory = {id = 23, id2 = 0},
            Tshirt = {id = 38, id2 = 2},
            Kevlar = {id = 0, id2 = 0},
            Badge = {id = 0, id2 = 0},
            Torso = {id = 53, id2 = 1},
            Watch = {id = 1, id2 = 0},
            Hat = {id = -1, id2 = 0},
            Glass = {id = -1, id2 = 3},
            Ear = {id = -1, id2 = 2}
        }
    },
    {
        name = 'Seller',
        grade = 1,
        Male = {
            Mask = {id = 121, id2 = 0},
            Arms = {id = 20, id2 = 0},
            Leg = {id = 25, id2 = 0},
            bag = {id = 0, id2 = 0},
            Shoes = {id = 21, id2 = 0},
            Accessory = {id = 22, id2 = 0},
            Tshirt = {id = 33, id2 = 0},
            Kevlar = {id = 0, id2 = 0},
            Badge = {id = 0, id2 = 0},
            Torso = {id = 31, id2 = 0},
            Watch = {id = 1, id2 = 0},
            Hat = {id = -1, id2 = 0},
            Glass = {id = -1, id2 = 0},
            Ear = {id = -1, id2 = 0}
          },
        Female = {
            Mask = {id = 121, id2 = 0},
            Arms = {id = 20, id2 = 0},
            Leg = {id = 47, id2 = 0},
            bag = {id = 0, id2 = 0},
            Shoes = {id = 29, id2 = 0},
            Accessory = {id = 23, id2 = 0},
            Tshirt = {id = 38, id2 = 2},
            Kevlar = {id = 0, id2 = 0},
            Badge = {id = 0, id2 = 0},
            Torso = {id = 53, id2 = 3},
            Watch = {id = 1, id2 = 0},
            Hat = {id = -1, id2 = 0},
            Glass = {id = -1, id2 = 3},
            Ear = {id = -1, id2 = 2}
        }
    },
}

Translation = {
    ['en'] = {
        ['ring_infobar'] = 'Appuyez sur ~b~E~s~ pour notifier un cardealer',
        ['showroom_infobar'] = 'Appuyez sur ~b~E~w~, pour accéder au ~o~Showroom ~w~!',
        ['boss_infobar'] = 'Appuyez sur ~b~E~w~, pour accéder au ~o~Boss Menü~w~!',
        ['wardrobe_infobar'] = 'Appuyez sur ~b~E~w~, pour accéder à la garde-robe ~o~w~!',
        ['garage_infobar'] = 'Appuyez sur ~b~E~w~, pour accéder au ~o~garage ~w~!',
        ['computer_infobar'] = 'Appuyez sur ~b~E~w~, pour accéder au ~o~ordinateur ~w~!',
        ['delete_vehicle'] = 'Appuyez sur ~ b ~ E ~ w ~, pour ~ o ~ stocker le véhicule ~w ~!',
        ['wardrobe'] = 'Armoire',
        ['private_clothes'] = 'Vêtements privés',
        ['bossmenu'] = 'Menu Patron',
        ['finance_management'] = 'Gestion financière',
        ['staff'] = 'Gestion du personnel',
        ['society_money'] = 'Argent de la société',
        ['withdraw_money'] = 'Retirer de l\'argent',
        ['deposit_money'] = 'Déposer de l\'argent',
        ['withdraw_desc'] = 'Voulez-vous retirer de l\'argent?',
        ['deposit_desc'] = 'Voulez-vous déposer de l\'argent?',
        ['how_much'] = 'Combien?',
        ['company_money'] = 'Argent de la société',
        ['unknown_amount'] = 'Montant demandé!',
        ['deposit_msg'] = 'Vous avez déposé',
        ['deposit_msg2'] = ' $ ',
        ['withdraw_msg'] = 'Vous avez retiré ',
        ['withdraw_msg2'] = ' $  de votre société',
        ['hire'] = 'Embaucher quelqu\'un',
        ['staff_management'] = 'Gestion du personnel',
        ['job_rank'] = 'Rang d\'emploi:',
        ['fire'] = 'Renvoyer',
        ['fire_msg'] = 'Voulez-vous virer ',
        ['fire_msg2'] = '?',
        ['promote'] = 'Promouvoir',
        ['promote_msg'] = 'Voulez-vous promouvoir ',
        ['promote_msg2'] = ' au rang de ',
        ['promote_msg3'] = ' ?',
        ['showroom'] = 'Showroom',
        ['change_color'] = '~b~Changer de couleur',
        ['primary_color'] = 'Couleur primaire',
        ['primary_color_msg'] = 'Définir comme couleur primaire',
        ['secondary_color'] = 'Couleur secondaire',
        ['secondary_color_msg'] = 'Définir comme couleur secondaire',
        ['pearl'] = 'Nacré',
        ['pearl_msg'] = 'Ensemble nacré',
        ['show_manufacturer'] = 'Fabricant:',
        ['show_price'] = 'Prix:',
        ['show_model'] = 'Modèle:',
        ['show_park_item'] = 'Exposition au Showroom',
        ['show_performance'] = 'Performance:',
        ['show_maxSpeed'] = 'Max. vitesse:',
        ['show_speedup'] = 'Accélération 0-100:',
        ['show_modifications'] = 'Quantité de modifications:',
        ['show_fuelcapacity'] = 'Capacité de carburant:',
        ['show_suffix_performance'] = ' PS',
        ['show_suffix_maxSpeed'] = ' kp/h',
        ['show_suffix_speedup'] = ' secondes',
        ['show_suffix_modifications'] = ' partie',
        ['show_suffix_fuelcapacity'] = ' l',
        ['test_drive'] = '~b~La sortir pour essais',
        ['amount_cardealer'] = 'Stocké ici:',
        ['amount_storage'] = 'Stocké à l\'entrepot:',
        ['set_to_showroom'] = 'Exposition au Showroom',
        ['amount_cars'] = ' Voitures disponibles',
        ['computer'] = 'Ordinateur',
        ['sell_vehicle'] = 'Vendre un véhicule',
        ['show_1'] = 'Showroom 1',
        ['show_2'] = 'Showroom 2',
        ['show_3'] = 'Showroom 3',
        ['show_4'] = 'Showroom 4',
        ['show_abort'] = '~r~Interrompre',
        ['yes'] = 'Oui',
        ['no'] = 'Non',
        ['car_sell'] = ' (Appuyez pour vendre)',
        ['bill_purchase_of'] = 'Achat d\'un ',
        ['dialog_price'] = 'Prix',
        ['no_customers'] = '~r~Il n\'y a pas de client à côté de vous!',
        ['vehicles_list'] = 'Véhicule',
        ['car_deliver'] = 'Apportez cette voiture au concessionnaire: ',
        ['car_craft'] = 'Fabriquer ce véhicule: ',
        ['amount'] = 'Montant',
        ['ordered'] = 'Commander: ',
        ['reserved'] = 'Réservé: ',
        ['orders'] = 'Commandes',
        ['total_production_time'] = 'Temps de production restant:',
        ['current_production_time'] = 'Véhicules commandés:',
        ['refresh_time'] = 'Rafraîchir',
        ['hours'] = ' heure',
        ['hired'] = '~g~Embauché~w~!',
        ['you_were_hired'] = 'Tu as été embauché!',
        ['you_hired'] = 'Vous engagé ',
        ['you_hired2'] = ' !',
        ['already_hired'] = '~r~Déjà embauché!~w~',
        ['is_already_hired'] = ' est déjà ~r~embauché~w~!',
        ['fired'] = 'Renvoyé',
        ['you_are_fired'] = 'Tu as été viré !',
        ['you_fired'] = 'Vous avez viré.',
        ['you_fired2'] = '~r~ ~w~!',
        ['error'] = 'Erreur !',
        ['player_not_online'] = 'Ce ~b~player ~w~ n\'est pas en ville!',
        ['promoted'] = '~g~ Promu ~w~!',
        ['you_were_promoted'] = 'Vous avez été ~b~ promu ~s~ à ~b~',
        ['you_were_promoted2'] = '~g~ ~w~!',
        ['you_promoted'] = 'Vous ~ b ~ promu ~ b~',
        ['you_promoted2'] = '~ w~ à ~b~',
        ['you_promoted3'] = '~g~~w~!',
        ['ring_ring'] = '~b~Il y a un ~w~ client qui attend ~b~ chez le concessionnaire!',
        ['vehicle_purchased'] = '~g~Véhicule acheté~w~!',
        ['you_purchased'] = 'Vous avez un ',
        ['you_purchased2'] = ', avec la plaque d\'immatriculation ',
        ['you_purchased3'] = ' ~g~',
        ['vehicle_sold'] = '~g~Véhicule vendu~w~!',
        ['you_sold'] = 'Vous avez vendu un ',
        ['you_sold2'] = ' ~g~',
        ['vehicle_ordered'] = '~g~Véhicule commandé~w~!',
        ['you_ordered'] = 'Vous avez commandé ',
        ['you_ordered2'] = ' ~s~. Au total, vous avez ~g~ commandé ',
        ['you_ordered3'] = 'x ~s~!',
        ['you_applied'] = 'Vous ~g~ réservé ',
        ['you_applied2'] = ' ~s~. Au total vous ~g~ réservé ',
        ['you_applied3'] = 'x ~s~!',
        ['not_enough_money'] = 'Il n\'y a pas assez d\'argent sur votre portefeuille de société!',
        ['vehicle_delivered'] = 'Véhicules ~g ~ livrés avec succès~s~!',
        ['not_enough_vehicles_in_storage'] = 'Il n\'y a pas assez de véhicules dans le grand entrepôt',
        ['presented_prefix'] = '~y~Afficher: ~s~',
        ['insert_new_value'] = 'Insérer une nouvelle valeur',
        ['click_to_change'] = '~b~cliquez pour modifier la valeur',
        ['not_enough_money_player'] = '~r~Pas assez d\'argent!',
        ['required_order_time'] = 'Temps de fabrication requis:',
    },
    ['de'] = {
        ['ring_infobar'] = 'Drücke ~b~E~s~ um einen Verkäufer zu rufen',
        ['showroom_infobar'] = 'Drücke ~b~E~w~, um den ~o~Showroom~w~ zu öffnen!',
        ['boss_infobar'] = 'Drücke ~b~E~w~, um das ~o~Boss Menü~w~ zu öffnen!',
        ['wardrobe_infobar'] = 'Drücke ~b~E~w~, um die ~o~Umkleide~w~ zu öffnen!',
        ['garage_infobar'] = 'Drücke ~b~E~w~, um die ~o~Garage~w~ zu öffnen!',
        ['computer_infobar'] = 'Drücke ~b~E~w~, um den ~o~Computer~w~ zu öffnen!',
        ['delete_vehicle'] = 'Drücke ~b~E~w~, um das ~o~einzuparken~w~!',
        ['wardrobe'] = 'Umkleide',
        ['private_clothes'] = 'Privatkleidung',
        ['bossmenu'] = 'Boss Menü',
        ['finance_management'] = 'Finanzverwaltung',
        ['staff'] = 'Personal',
        ['society_money'] = 'Firmenkonto',
        ['withdraw_money'] = 'Firmengeld abheben',
        ['deposit_money'] = 'Firmengeld einzahlen',
        ['withdraw_desc'] = 'Willst du ~g~Geld~w~ vom Firmenkonto abheben?',
        ['deposit_desc'] = 'Willst du ~g~Geld~w~ auf das Firmenkonto einzaheln?',
        ['how_much'] = 'Wie viel?',
        ['company_money'] = 'Firmenkonto',
        ['unknown_amount'] = '~r~Ungültiger Betrag!',
        ['deposit_msg'] = 'Du hast ~g~',
        ['deposit_msg2'] = ' $~w~ auf das Firmenkonto eingezahlt',
        ['withdraw_msg'] = 'Du hast ~g~',
        ['withdraw_msg2'] = ' $~w~ vom Firmenkonto abgehoben',
        ['hire'] = 'Mitarbeiter einstellen',
        ['staff_management'] = 'Mitarbeiterverwaltung',
        ['job_rank'] = 'Rang:',
        ['fire'] = '~r~Feuern',
        ['fire_msg'] = 'Willst du ~b~',
        ['fire_msg2'] = '~w~ ~r~feuern~w~?',
        ['promote'] = 'Befördern',
        ['promote_msg'] = 'Willst du ~b~',
        ['promote_msg2'] = '~w~ zum ~b~',
        ['promote_msg3'] = ' ~g~befördern~w~?',
        ['showroom'] = 'Showroom',
        ['change_color'] = '~b~Farbe ändern',
        ['primary_color'] = 'Primärfarbe',
        ['primary_color_msg'] = 'Als Primärfarbe setzen',
        ['secondary_color'] = 'Sekundärfarbe',
        ['secondary_color_msg'] = 'Als Sekundärfarbe setzen',
        ['pearl'] = 'Pearl-Effekt',
        ['pearl_msg'] = 'Als Pearl-Effekt setzen',
        ['show_manufacturer'] = 'Hersteller:',
        ['show_price'] = 'Preis:',
        ['show_model'] = 'Model:',
        ['show_park_item'] = 'Fahrzeug ausstellen',
        ['show_performance'] = 'Pferdestärke:',
        ['show_maxSpeed'] = 'Höchst Geschwindigkeit:',
        ['show_speedup'] = 'Beschleunigung 0-100:',
        ['show_modifications'] = 'Mögliche Modifikationen:',
        ['show_fuelcapacity'] = 'Tankkapazität:',
        ['show_suffix_performance'] = ' PS',
        ['show_suffix_maxSpeed'] = ' km/h',
        ['show_suffix_speedup'] = ' Sekunden',
        ['show_suffix_modifications'] = ' Teile',
        ['show_suffix_fuelcapacity'] = ' Liter',
        ['test_drive'] = '~b~Fahrzeug zur Probefahrt bereitstellen',
        ['amount_cardealer'] = 'Bestand im Autohaus:',
        ['amount_storage'] = 'Bestand im Lager:',
        ['set_to_showroom'] = 'Fahrzeug ausstellen',
        ['amount_cars'] = ' Exemplare',
        ['computer'] = 'Computer',
        ['sell_vehicle'] = 'Fahrzeug verkaufen',
        ['show_1'] = 'Stellplatz 1',
        ['show_2'] = 'Stellplatz 2',
        ['show_3'] = 'Stellplatz 3',
        ['show_4'] = 'Stellplatz 4',
        ['show_abort'] = 'Abbrechen',
        ['yes'] = 'Ja',
        ['no'] = 'Nein',
        ['car_sell'] = ' verkaufen',
        ['bill_purchase_of'] = 'Kauf von einem ',
        ['dialog_price'] = 'Preis',
        ['no_customers'] = '~r~Keine Kunden!',
        ['vehicles_list'] = 'Fahrzeugliste',
        ['car_deliver'] = 'Fahrzeug liefern lassen für: ',
        ['car_craft'] = 'Fahrzeug herstellen lassen für: ',
        ['amount'] = 'Menge',
        ['ordered'] = 'Bestellt: ',
        ['reserved'] = 'Beantragt: ',
        ['orders'] = 'Bestellungen',
        ['total_production_time'] = 'Verbleibende Produktionszeit:',
        ['current_production_time'] = 'Offene Aufträge:',
        ['refresh_time'] = 'Zeit aktualisieren',
        ['hours'] = ' Stunden',
        ['hired'] = '~g~Eingestellt~w~!',
        ['you_were_hired'] = 'Du wurdest ~g~eingestellt!~w~',
        ['you_hired'] = 'Du hast ~b~',
        ['you_hired2'] = ' ~g~eingestellt~w~!',
        ['already_hired'] = '~r~Schon Angestellt!~w~',
        ['is_already_hired'] = ' ist schon bei dir ~r~angestellt~w~!',
        ['fired'] = '~r~Gefeuert~w~!',
        ['you_are_fired'] = 'Du wurdest ~r~gefeuert~w~!',
        ['you_fired'] = 'Du hast ~b~',
        ['you_fired2'] = ' ~r~gefeuert~w~!',
        ['error'] = '~r~Error~w~!',
        ['player_not_online'] = 'Der ~b~Spieler~w~ ist nicht online!',
        ['promoted'] = '~g~Befördert~w~!',
        ['you_were_promoted'] = 'Du wurdest zum ~b~',
        ['you_were_promoted2'] = ' ~g~befördert~w~!',
        ['you_promoted'] = 'Du hast ~b~',
        ['you_promoted2'] = '~w~ zum ~b~',
        ['you_promoted3'] = ' ~g~befördert~w~!',
        ['ring_ring'] = '~b~Ein Kunde wartet im Autohaus!',
        ['vehicle_purchased'] = '~g~Fahrzeug gekauft~w~!',
        ['you_purchased'] = 'Du hast ein ',
        ['you_purchased2'] = ', mit dem Nummernschild ',
        ['you_purchased3'] = ' ~g~gekauft',
        ['vehicle_sold'] = '~g~Fahrzeug verkauft~w~!',
        ['you_sold'] = 'Du hast ein ',
        ['you_sold2'] = ' ~g~verkauft',
        ['vehicle_ordered'] = '~g~Fahrzeug bestellt~w~!',
        ['you_ordered'] = 'Du hast ',
        ['you_ordered2'] = ' ~g~bestelt~s~. Insgesamt hast du ',
        ['you_ordered3'] = 'x ~g~bestellt~s~!',
        ['you_applied'] = 'Du hast ',
        ['you_applied2'] = ' ~g~beantragt~s~. Insgesamt hast du ',
        ['you_applied3'] = 'x ~g~beantragt~s~!',
        ['not_enough_money'] = 'Es ist ~r~zu wenig Geld~s~ auf dem Firmenkonto, um die Fahrzeuge zu bezahlen!',
        ['vehicle_delivered'] = 'Fahrzeuge ~g~erfolgreich geliefert~s~!',
        ['not_enough_vehicles_in_storage'] = 'Es sind nicht so viele Fahrzeuge im Hauptlager',
        ['presented_prefix'] = '~y~Ausgestellt: ~s~',
        ['insert_new_value'] = 'Gebe einen neuen Wert ein',
        ['click_to_change'] = '~b~Klicke, um die Werte zu aktualisieren',
        ['not_enough_money_player'] = '~r~Nicht genügend Geld!',
        ['required_order_time'] = 'Benötigte Zeit zur Herstellung:',
    },
}

Cfg.Colors = {
	['black'] = 'black',
	['graphite'] = 'graphite',
	['black_metallic'] = 'black Metallic',
	['caststeel'] = 'cast Steel',
	['black_anth'] = 'black Anthracite',
	['matteblack'] = 'matte Black',
	['darknight'] = 'dark Night',
	['deepblack'] = 'deep Black',
	['oil'] = 'oil',
	['carbon'] = 'carbon',
	-- White
	['white'] = 'white',
	['vanilla'] = 'vanilla',
	['creme'] = 'creme',
	['polarwhite'] = 'polar White',
	['beige'] = 'beige',
	['mattewhite'] = 'matte White',
	['snow'] = 'snow',
	['cotton'] = 'cotton',
	['alabaster'] = 'alabaster',
	['purewhite'] = 'pure White',
	-- Grey
	['grey'] = 'grey',
	['silver'] = 'silver',
	['metallicgrey'] = 'metallic Grey',
	['laminatedsteel'] = 'laminated Steel',
	['darkgray'] = 'dark Grey',
	['rockygray'] = 'rocky Grey',
	['graynight'] = 'gray Night',
	['aluminum'] = 'aluminum',
	['graymat'] = 'matte Grey',
	['lightgrey'] = 'light Grey',
	['asphaltgray'] = 'asphalt Grey',
	['grayconcrete'] = 'concrete Grey',
	['darksilver'] = 'dark Silver',
	['magnesite'] = 'magnesite',
	['nickel'] = 'nickel',
	['zinc'] = 'zinc',
	['dolomite'] = 'dolomite',
	['bluesilver'] = 'blue Silver',
	['titanium'] = 'titanium',
	['steelblue'] = 'steel Blue',
	['champagne'] = 'champagne',
	['grayhunter'] = 'grey Hunter',
	-- Red
	['red'] = 'red',
	['torino_red'] = 'torino Red',
	['poppy'] = 'poppy',
	['copper_red'] = 'copper Red',
	['cardinal'] = 'cardinal Red',
	['brick'] = 'brick Red',
	['garnet'] = 'Garnet',
	['cabernet'] = 'cabernet Red',
	['candy'] = 'candy Red',
	['matte_red'] = 'matte Red',
	['dark_red'] = 'dark Red',
	['red_pulp'] = 'red Pulp',
	['bril_red'] = 'brilliant Red',
	['pale_red'] = 'pale Red',
	['wine_red'] = 'wine Red',
	['volcano'] = 'Volcano',
	-- Pink
	['pink'] = 'pink',
	['electricpink'] = 'electric Pink',
	['brightpink'] = 'bright Pink',
	['salmon'] = 'salmon',
	['sugarplum'] = 'sugar Plum',
	-- Blue
	['blue'] = 'blue',
	['topaz'] = 'topaz',
	['light_blue'] = 'light Blue',
	['galaxy_blue'] = 'galaxy Blue',
	['dark_blue'] = 'dark Blue',
	['azure'] = 'azure',
	['navy_blue'] = 'navy Blue',
	['lapis'] = 'lapis Lazuli',
	['blue_diamond'] = 'blue Diamond',
	['surfer'] = 'surfer',
	['pastel_blue'] = 'pastel Blue',
	['celeste_blue'] = 'celeste Blue',
	['rally_blue'] = 'rally Blue',
	['blue_paradise'] = 'blue Paradise',
	['blue_night'] = 'blue Night',
	['cyan_blue'] = 'cyan Blue',
	['cobalt'] = 'cobalt',
	['electric_blue'] = 'electric Blue',
	['horizon_blue'] = 'horizon Blue',
	['metallic_blue'] = 'metallic Blue',
	['aquamarine'] = 'aquamarine',
	['blue_agathe'] = 'blue Agathe',
	['zirconium'] = 'zirconium',
	['spinel'] = 'spinel',
	['tourmaline'] = 'tourmaline',
	['paradise'] = 'paradise',
	['bubble_gum'] = 'bubble Gum',
	['midnight_blue'] = 'midnight Blue',
	['forbidden_blue'] = 'forbidden Blue',
	['glacier_blue'] = 'glacier Blue',
	-- Yellow
	['yellow'] = 'yellow',
	['wheat'] = 'wheat',
	['raceyellow'] = 'race Yellow',
	['paleyellow'] = 'pale Yellow',
	['lightyellow'] = 'light Yellow',
	-- Green
	['green'] = 'green',
	['met_dark_green'] = 'metallic Dark Green',
	['rally_green'] = 'Rally Green',
	['pine_green'] = 'pine Green',
	['olive_green'] = 'olive Green',
	['light_green'] = 'Light Green',
	['lime_green'] = 'lime green',
	['forest_green'] = 'forest Green',
	['lawn_green'] = 'lawn Green',
	['imperial_green'] = 'imperial Green',
	['green_bottle'] = 'breen Bottle',
	['citrus_green'] = 'citrus Green',
	['green_anis'] = 'green Anis',
	['khaki'] = 'Khaki',
	['army_green'] = 'army Green',
	['dark_green'] = 'dark Green',
	['hunter_green'] = 'hunter Green',
	['matte_foilage_green'] = 'matte Foilage Green',
	-- Orange
	['orange'] = 'orange',
	['tangerine'] = 'Tangerine',
	['matteorange'] = 'Matte Orange',
	['lightorange'] = 'Light Orange',
	['peach'] = 'Peach',
	['pumpkin'] = 'Pumpkin',
	['orangelambo'] = 'Orange Lambo',
	-- Brown
	['brown'] = 'brown',
	['copper'] = 'Copper',
	['lightbrown'] = 'Light Brown',
	['darkbrown'] = 'Dark Brown',
	['bronze'] = 'Bronze',
	['brownmetallic'] = 'Brown Metallic',
	['espresso'] = 'Espresso',
	['chocolate'] = 'Chocolate',
	['terracotta'] = 'Terracotta',
	['marble'] = 'Marble',
	['sand'] = 'Sand',
	['sepia'] = 'Sepia',
	['bison'] = 'Bison',
	['palm'] = 'Palm',
	['caramel'] = 'Caramel',
	['rust'] = 'Rust',
	['chestnut'] = 'Chestnut',
	['hazelnut'] = 'Hazelnut',
	['shell'] = 'Shell',
	['mahogany'] = 'Mahogany',
	['cauldron'] = 'Cauldron',
	['blond'] = 'Blond',
	['gravel'] = 'Gravel',
	['darkearth'] = 'Dark Earth',
	['desert'] = 'Desert',
	-- Purple
	['purple'] = 'purple',
	['indigo'] = 'Indigo',
	['deeppurple'] = 'Deep Purple',
	['darkviolet'] = 'Dark Violet',
	['amethyst'] = 'Amethyst',
	['mysticalviolet'] = 'Mystic Violet',
	['purplemetallic'] = 'Purple Metallic',
	['matteviolet'] = 'Matte Violet',
	['mattedeeppurple'] = 'Matte Deep Purple',
	-- Chrome
	['chrome'] = 'chrome',
	['brushedchrome'] = 'brushed Chrome',
	['blackchrome'] = 'black Chrome',
	['brushedaluminum'] = 'brushed Aluminum',
	-- Metal
	['gold'] = 'gold',
	['puregold'] = 'pure Gold',
	['brushedgold'] = 'brushed Gold',
	['lightgold'] = 'light Gold',
}
