Config = {}
Translation = {}

Config.Locale = 'fr'

Config.Debug = false
Config.useNativeUIReloaded = true -- if you want to disable NativeUIReloaded, you have to activate the dependency in ressource.lua!

Config.useNewESX = true -- If you use ESX v.1.2 or newer enable this
Config.useOneSyncInfinity = false

Config.useESXCountSystem = false -- when you use item weights disable this
Config.useMyClothesAPI = false

Config.useRoutingBuckets = true

Config.ChangeDoorbellPrice = 500
Config.CalculateRentPrice = 200 -- This means: Buy price / YOURVALUE = Rent price
Config.CalculateSellPrice = 2 -- This means: The player will get Buy price / YOURVALUE back when he sells a property

Config.ShowAvailableBlips = false -- shows blips for each property, which is available
Config.ShowOnlyNearestProperty = true -- Only the blip of the nearest available property is visible

Config.useBlackMoney = true
Config.BlackMoneyName = 'black_money'

Config.PayRent = {h= 20, m = 00} -- rents were paid at 20:00 -> 8 pm

Translation = {
    ['fr'] = {
        ['blip_available_prop'] = 'Propriété disponible',
        ['blip_prop_owned'] = 'Vos propriétés',
        ['blip_keyowner_unknown'] = 'Propriété d\'un ami',
        ['blip_keyowner'] = 'Propriété de ~g~',
        ['show_info'] = '~b~[E]~w~ Pour la liste des ~b~propriétés',
        ['leave_prop_infobar'] = '~b~[E]~w~ Pour en ~b~savoir plus',
        
        ['access_wardrobe'] = '~b~[E]~w~ Pour accéder à la ~b~garde-robe',
        ['prop'] = 'Propriété',
        ['manage_keys'] = 'Gestion des clés',
        ['remove_key_desc'] = 'Appuyez pour reprendre les clés',
        ['give_key'] = 'Donner clés',
        ['give_key_desc'] = 'Appuyez pour donner à ~b~',
        ['give_key_desc2'] = ' ~s~un double',
        ['wardrobe'] = 'Garde-robe',
        ['outfin_use'] = 'Mettre cette tenue',
        ['outfit_remove'] = 'Supprimer cette tenue',
        ['outfit_removed'] = 'La tenue ~y~',
        ['outfit_removed2'] = ' ~s~a été supprimée',
        ['store'] = 'Coffre',
        ['weaponary'] = 'Armurerie',
        ['ammo'] = '',
        ['insert_withdraw'] = 'Combien ?',
        ['store_item'] = 'Mettre dans le coffre',
        ['insert_deposit'] = 'Combien ?',
        ['wallet'] = 'Porte monnaie',
        ['current_credit'] = 'Vous avez actuellement ~b~',
        ['current_blackcredit'] = 'Vous avez actuellement ~b~',
        ['black_credit'] = 'Argent sale:',
        ['credit'] = 'Argent propre:',
        ['current_credit'] = 'Vous avez actuellement ~b~',
        ['money_deposit'] = 'Déposer',
        ['blackmoney_deposit'] = 'Déposer',
        ['money_withdraw'] = 'Retirer',
        ['blackmoney_withdraw'] = 'Retirer',
        ['currency'] = '$',
        ['invite'] = 'Inviter quelqu\'un',
        ['invite_player'] = 'Appuyez pour inviter ~b~',
        ['invite_player2'] = '~s~',
        ['invited_player'] = 'Vous avez invité ~g~',
        ['invited_player2'] = '~s~.',
        ['lock_only_key'] = 'fermée à clé',
        ['lock_open'] = 'ouverte à tous',
        ['doorlock'] = 'Porte',
        ['doorlock_desc'] = 'Définir qui peux entrer chez vous',
        ['doorlock_changed'] = '~g~Porte: ~w~',
        ['doorbell'] = 'Changer le nom sur la sonnette',
        ['doorbell_desc'] = 'Changer le nom sur la sonnette',
        ['leave_prop'] = '~s~',
        ['leave_prop_pre'] = 'Sortir de ',
        ['collector_propamount'] = ' propriétés',
        ['owned_prefix'] = '~y~A vous: ~s~',

        ['info_owned'] = 'Vous appartient:',
        ['info_yes'] = '~g~Oui',
        ['info_no'] = '~r~Non',
        ['info_type'] = 'Type:',
        ['info_name'] = 'Nom:',
        ['info_adress'] = 'Adresse:',
        ['unique'] = 'Unique:',
        ['enter_prop'] = 'Entrer chez vous',
        ['owner'] = 'Propriétaire: ',
        ['enter_key_prop'] = 'Entrer dans cette propriété',
        ['prop_of'] = 'Propriété de ',
        ['have_key'] = 'Vous avez les ~b~clés',
        ['open_for_everybody'] = 'La propriété est ouverte ~g~à tous~s~!',
        ['buy'] = 'Acheter: ',
        ['rent'] = 'Louer: ',
        ['rent_per_day'] = '$ / jour',
        ['cancel_rent'] = 'Arrêter la location',
        ['rented'] = 'Loué:',
        ['cancel_prop'] = '[~r~!~s~] Confirmer',
        ['sell_prop'] = 'Vendre la propriété',
        ['confirm'] = '[~r~!~s~] Confirmer',
        ['confirm_desc'] = '~o~(Vous êtes remboursé la moitié du prix de vente)',
        ['invitation_expired'] = 'Cette invitation est ~r~expirée~s~!',
       
        ['has_entered_prop'] = ' est entré dans la ~g~propriété~s~!',
        ['doorbell_title'] = 'Sonnette',
        ['invite_msg'] = 'Vous avez été invité à ~y~',
        ['invite_msg2'] = ' ~s~. ~INPUT_PICKUP~ ~g~pour accepter l\'invitation~s~.',
        ['got_key'] = 'Vous avez les ~g~clés~s~.',
        ['removed_key'] = 'Vos clés ont été ~y~reprises~s~.',
        ['got_permission'] = 'Permission accordée',
        ['remove_permission'] = 'Permission annulée',
        ['remove_key'] = 'Vous avez repris les clés de ~y~',
        ['remove_key2'] = '',
        ['give_key_msg'] = 'Vous avez fait un double des clés pour ~g~',
        ['give_key_msg2'] = '~s~.',
        ['too_heavy'] = 'Vous n\'avez pas assez de place sur vous !',
        ['not_enough_stored'] = 'Il n\'y a pas autant dans le coffre.',
        ['need_restart_addoninventory'] = '~y~Merci de relancer votre jeu après l\'achat d\'une propriété pour acceder au coffre',
        ['wrong_input'] = 'Incorrect!',
        ['prop_successfully_rented'] = '~o~[Papier de location]\n\n~o~Location: ~g~Accepté\n~o~Prix: ~g~',
        ['prop_successfully_bought'] = '~o~[Papier de vente]\n\n~o~Vente: ~g~Accepté\n~o~Prix: ~g~',
        ['bought_2'] = '$',
        ['rented_2'] = '$',
        ['prop_canceled'] = '~r~Cette propriété ne vous appartient plus !',
        ['not_enough_money'] = '~r~Pas assez d\'argent !',
        ['rent_paid'] = '~g~',
        ['rent_paid2'] = '$ ~s~de location',
        ['money_added_to_wallet'] = '$ ~g~mis dans le porte-monnaie',
        ['money_withdraw_from_safe'] = '$ ~g~retiré du porte-monnaie',
        ['not_enough_money_in_wallet'] = '~r~[Blackness] Il n\'y a pas autant dans le porte-monnaie...',
        ['doorbell_changed'] = '~g~Nom sur la sonnette changé en ~w~',
        ['doorbell_changed2'] = '~g~',
		['prop_not_available'] = '~r~[Blackness] Cette propriété n\'est plus disponible...'
    }

}