ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('dream-miner:mine')
AddEventHandler('dream-miner:mine', function(Pickaxe, Level)
    local xPlayer = ESX.GetPlayerFromId(source)

    while true do
        random = math.random(1,100)
        if random >= 70 and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.copper then
            xPlayer.addInventoryItem('dream-copper', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 70 and random >= 50) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.iron then
            xPlayer.addInventoryItem('dream-iron', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 50 and random >= 40) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.molibden then
            xPlayer.addInventoryItem('dream-molibden', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 40 and random >= 30) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.zinc then
            xPlayer.addInventoryItem('dream-zinc', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 30 and random >= 20) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.lead then
            xPlayer.addInventoryItem('dream-lead', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 20 and random >= 10) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.silver then
            xPlayer.addInventoryItem('dream-silver', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 10 and random >= 5) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.tin then
            xPlayer.addInventoryItem('dream-tin', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        elseif (random < 5 and random >= 1) and Config.MinePlaces[Config.Pickaxe[Pickaxe].name].Drop.diamonds then
            xPlayer.addInventoryItem('dream-diamonds', math.random(Config.Levels[Level].dropmin, Config.Levels[Level].dropmax))
            break
        end
    end
end)

ESX.RegisterServerCallback('dream-miner:upgrade', function(source, cb, pickaxe)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getMoney() >= Config.Pickaxe[pickaxe+1].price then
        xPlayer.removeMoney(Config.Pickaxe[pickaxe+1].price)
            MySQL.Async.fetchAll('SELECT * FROM dream_jobs WHERE identifier = @identifier AND job = @job',
            {
                ['@identifier'] = xPlayer.identifier,
                ['@job'] = 'miner',
            },
            function(result)
                if result[1] then
                    MySQL.Async.execute('UPDATE dream_jobs SET pickaxe = @pickaxe WHERE identifier = @identifier AND job = @job', {
                        ['@identifier'] = xPlayer.identifier,
                        ['@pickaxe']   = pickaxe+1,
                        ['@job'] = 'miner',
                    })    
                end
            end)
		cb(true)
    elseif xPlayer.getAccount('bank').money >= Config.Pickaxe[pickaxe+1].price then
        xPlayer.removeAccountMoney('bank', Config.Pickaxe[pickaxe+1].price)
            MySQL.Async.fetchAll('SELECT * FROM dream_jobs WHERE identifier = @identifier AND job = @job',
            {
                ['@identifier'] = xPlayer.identifier,
                ['@job'] = 'miner',
            },
            function(result)
                if result[1] then
                    MySQL.Async.execute('UPDATE dream_jobs SET pickaxe = @pickaxe WHERE identifier = @identifier AND job = @job', {
                        ['@identifier'] = xPlayer.identifier,
                        ['@pickaxe']   = pickaxe+1,
                        ['@job'] = 'miner',
                    })    
                end
            end)
        cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('dream-miner:payout', function(source, cb, exp)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local copper = xPlayer.getInventoryItem('dream-copper').count
	local iron = xPlayer.getInventoryItem('dream-iron').count
    local molibden = xPlayer.getInventoryItem('dream-molibden').count
	local zinc = xPlayer.getInventoryItem('dream-zinc').count
    local lead = xPlayer.getInventoryItem('dream-lead').count
	local silver = xPlayer.getInventoryItem('dream-silver').count
    local tin = xPlayer.getInventoryItem('dream-tin').count
	local diamonds = xPlayer.getInventoryItem('dream-diamonds').count

    if copper == 0 and iron == 0 and molibden == 0 and zinc == 0 and lead == 0 and silver == 0 and tin == 0 and diamonds == 0 then
        cb(false)
    end
    local Payout = 0 
    Payout = Config.Payout.copper * copper
    Payout = Payout + Config.Payout.iron * iron
    Payout = Payout + Config.Payout.molibden * molibden
    Payout = Payout + Config.Payout.zinc * zinc
    Payout = Payout + Config.Payout.lead * lead
    Payout = Payout + Config.Payout.silver * silver
    Payout = Payout + Config.Payout.tin * tin
    Payout = Payout + Config.Payout.tin * diamonds



    if copper > 0 then 
        xPlayer.removeInventoryItem('dream-copper', copper)
    end
    if iron > 0 then
        xPlayer.removeInventoryItem('dream-iron', iron)
    end
    if molibden > 0 then
        xPlayer.removeInventoryItem('dream-molibden', molibden)
    end
    if zinc > 0 then
        xPlayer.removeInventoryItem('dream-zinc', zinc)
    end
    if lead > 0 then
        xPlayer.removeInventoryItem('dream-lead', lead)
    end
    if silver > 0 then
        xPlayer.removeInventoryItem('dream-silver', silver)
    end
    if tin > 0 then
        xPlayer.removeInventoryItem('dream-tin', tin)
    end
    if diamonds > 0 then
        xPlayer.removeInventoryItem('dream-diamonds', diamonds)
    end

    xPlayer.addMoney(Payout)

    local Experience = 0
    if copper + iron + molibden + zinc + lead + silver + tin + diamonds > 5 then
        Experience = math.random(Config.ExpDrop.min,Config.ExpDrop.max) * (copper + iron + molibden + zinc + lead + silver + tin + diamonds)
        MySQL.Async.fetchAll('SELECT * FROM dream_jobs WHERE identifier = @identifier AND job = @job',
        {
            ['@identifier'] = xPlayer.identifier,
            ['@job'] = 'miner',
        },
        function(result)
            if result[1] then
                MySQL.Async.execute('UPDATE dream_jobs SET experience = @experience WHERE identifier = @identifier AND job = @job', {
                    ['@identifier'] = xPlayer.identifier,
                    ['@experience']   = exp+Experience,
                    ['@job'] = 'miner',
                })    
            end
        end)
    end

    cb(Payout, copper + iron + molibden + zinc + lead + silver + tin + diamonds, Experience)

end)

ESX.RegisterServerCallback('dream-miner:getdatabase', function(source, cb, xPlayer)
    MySQL.Async.fetchAll('SELECT * FROM dream_jobs WHERE identifier = @identifier AND job = @job',
    {
        ['@identifier'] = xPlayer.identifier,
        ['@job'] = 'miner',
    },
    function(result)
        if not result[1] then
            MySQL.Async.insert('INSERT INTO dream_jobs (identifier,experience,pickaxe,job) VALUES (@identifier,@experience,@pickaxe,@job)',
            {
                ['@identifier'] = xPlayer.identifier,
                ['@experience'] = 0,
                ['@pickaxe'] = 1,
                ['@job'] = 'miner',
            })
        elseif result[1] then
            cb(tonumber(result[1].experience),tonumber(result[1].pickaxe))   
        end                 
    end)
end)


