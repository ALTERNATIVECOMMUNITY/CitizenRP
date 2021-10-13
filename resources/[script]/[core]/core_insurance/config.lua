Config = {

UsingCoreCredits = false, -- You will be able to pay with credits for the vehicle claim (https://core.tebex.io/package/4523886)
CanClaimExisting = false, -- If set to true you can claim a vehicle if it already exists in the world (EXPERMENTAL) (WONT APPLY IS VEHICLE IS BROKEN) (WORKS FOR ALL VANILLA AND FOR SOME IMPORTS)
CanInsureNotStored = true, -- This will only work if you have 'stored' in your owned_vehicle structure. If disabled this will not allow insuring of non stored vehicles meaning if you lose your vehicle you wont get it back
SpawnLocked = true, -- Spawns vehicle with locked doors

BlipCenterSprite = 649,
BlipCenterColor = 3,
BlipCenterText = 'Assurance Véhicule',

NotifyOfInsurancePayment = true, -- Give you notification when you pay for car insurance
InsurancePaymentInterval = 3600, -- Interval in seconds when you pay insurance during gameplay

--Plans you can choose for your vehicle
-- oneTimePrice = Price that will be paid as a signup fee
-- intervalPrice = Price that will be paid every inverval cycle
-- franchise = Price that has be paid to submit a claim
-- cooldown = How long before you can submit a claim again on the same vehicle
-- claimTime = Amount of time to get your vehicle
-- claimCreditsPrice = If paid with credits this will eliminate claimTime and will give you vehicle instantly
InsurancePlans = {

['premium'] = { label = 'PREMIUM', intervalPrice = 2500, oneTimePrice = 8000, franchise = 150, cooldown = 1800, claimTime = 60, claimCreditsPrice = 200},
['advanced'] = { label = 'AVANCER', intervalPrice = 600, oneTimePrice = 3000, franchise = 200, cooldown = 3600, claimTime = 20, claimCreditsPrice = 300},
['basic'] = {label = 'JUNIOR', intervalPrice = 200, oneTimePrice = 500, franchise = 300, cooldown = 7200, claimTime = 20, claimCreditsPrice = 500}

},

InsuranceDesk = vector3(461.80996704102,-567.11804199219,28.556539535),

Lots = {

[1] = {coords = vector3(467.10687255859,-568.25799560547,28.07485008239), heading = 174.1740, occupied = false},
[2] = {coords = vector3(472.15213012695,-568.88726806641,28.09005737304), heading = 175.2270, occupied = false}



},



Text = {

    ['desk_hologram'] = '[~b~E~w~] Assurance',
    ['occupied'] = 'Tous les lots sont occupés!',
    ['claimed'] = 'Véhicule réclamé! Waypoint défini sur le lot',
    ['plan_changed'] = 'Plan modifié!',
    ['not_enough_money'] = 'Vous n\'en avez pas assez dans votre banque!',
    ['credits_updated'] = 'Crédits mis à jour! La réclamation a été exécutée instantanément!',
    ['not_enough_credits'] = 'Vous n\'avez pas assez de crédits!',
    ['inverval_payment'] = 'Vous avez payé votre assurance automobile!',
    ['inverval_payment_error'] = 'Vous ne pouviez pas vous permettre une assurance automobile! Il a été supprimé!'



}

}



function SendTextMessage(msg)

        --SetNotificationTextEntry('STRING')
        --AddTextComponentString(msg)
        --DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        exports['okokNotify']:Alert("Assurance", msg, 5000, 'info')
      --  exports['mythic_notify']:SendAlert('inform', msg)

end
