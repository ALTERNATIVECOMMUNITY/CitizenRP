RegisterNetEvent('inventory:openredbossInventory')
AddEventHandler('inventory:openredbossInventory', function ()

    OpenInventory({
    type = 'redboss',
    title = 'Coffre RedLine',
    id = 'redboss',
    weight = 100,
    save = true
 })

end)


RegisterNetEvent('inventory:openredline')
AddEventHandler('inventory:openredline', function ()

    OpenInventory({
    type = 'redline',
    title = 'RedLine Performance',
    id = 'redline',
    weight = 500,
    save = true
 })

end)



RegisterNetEvent('inventory:openeglisebossInventory')
AddEventHandler('inventory:openeglisebossInventory', function ()

    OpenInventory({
    type = 'bossEglise',
    title = 'Casier du pretre',
    id = 'bossEglise',
    weight = 100,
    save = true
 })

end)

RegisterNetEvent('inventory:openeglise')
AddEventHandler('inventory:openeglise', function ()

    OpenInventory({
    type = 'eglise',
    title = 'Eglise',
    id = 'eglise',
    weight = 100,
    save = true
 })

end)


RegisterNetEvent('inventory:opensuspectlspd')
AddEventHandler('inventory:opensuspectlspd', function ()

    OpenInventory({
    type = 'gav',
    title = 'Casier des GAV',
    id = 'gav',
    weight = 500,
    save = true
 })

end)

RegisterNetEvent('inventory:openpreuvelspd')
AddEventHandler('inventory:openpreuvelspd', function ()

    OpenInventory({
    type = 'preuve',
    title = 'Salle des preuves',
    id = 'preuve',
    weight = 5000,
    save = true
 })

end)


RegisterNetEvent('inventory:opengym')
AddEventHandler('inventory:opengym', function ()

    OpenInventory({
    type = 'lafitness',
    title = 'LA FITNESS',
    id = 'lafitness',
    weight = 100,
    save = true
 })

end)


RegisterNetEvent('inventory:opengymbossInventory')
AddEventHandler('inventory:opengymbossInventory', function ()

    OpenInventory({
    type = 'bossgym',
    title = 'Patron LAFITNESS',
    id = 'bossgym',
    weight = 100,
    save = true
 })

end)



RegisterNetEvent('inventory:opengymbossInventory')
AddEventHandler('inventory:opengymbossInventory', function ()

    OpenInventory({
    type = 'bossgym',
    title = 'Patron LAFITNESS',
    id = 'bossgym',
    weight = 100,
    save = true
 })

end)
