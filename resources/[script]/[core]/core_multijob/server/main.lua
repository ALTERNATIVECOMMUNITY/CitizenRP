ESX = nil
local JobInfo = {}
local names = {}

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

MySQL.ready(
    function()
        MySQL.Async.fetchAll(
            "SELECT * FROM jobs WHERE 1",
            {},
            function(name)
                for _, v in ipairs(name) do
                    JobInfo[v.name] = {}
                    JobInfo[v.name].job_label = v.label
                    JobInfo[v.name].grades = {}

                    MySQL.Async.fetchAll(
                        "SELECT * FROM job_grades WHERE job_name = @job",
                        {["@job"] = v.name},
                        function(gradeInfo)
                            for __, g in ipairs(gradeInfo) do
                                JobInfo[v.name].grades[g.grade] = g
                            end
                        end
                    )
                end
            end
        )

        MySQL.Async.fetchAll(
            "SELECT identifier,firstname,lastname FROM users WHERE 1",
            {},
            function(info)
                for _, v in ipairs(info) do
                    names[v.identifier] = v.firstname .. " " .. v.lastname
                end
            end
        )
    end
)

function AddJob(identifier, job, grade, rem)
     MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE identifier = @identifier",
            {
                ["@identifier"] = identifier
            },
            function(jobs)

                local count = 0

                for _,v in ipairs(jobs) do
                    count = count + 1
                end

                if count < Config.MaxJobs then

    MySQL.Sync.execute(
        "INSERT INTO `user_jobs`(`identifier`, `job`, `grade`, `removeable`) VALUES (@identifier, @job, @grade, @removeable)",
        {["@identifier"] = identifier, ["@job"] = job, ["@grade"] = grade, ["@removeable"] = rem}
    )               
                 
                  local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
                    if xPlayer then
                    TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["job_added"])
                end

                else
                    local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
                    if xPlayer then
                    TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["max_jobs"])
                end
                end

        end)
end

function RemoveJob(identifier, job, grade)
    MySQL.Sync.execute(
        "DELETE FROM `user_jobs` WHERE identifier = @identifier AND job = @job AND grade = @grade",
        {["@identifier"] = identifier, ["@job"] = job, ["@grade"] = grade}
    )
end

RegisterCommand(
    "removejob",
    function(source, args, rawCommand)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)

            if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" then
                if args[1] ~= nil then
                    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
                    if xTarget ~= nil then
                        if args[2] ~= nil and args[3] ~= nil then
                            RemoveJob(xTarget.identifier, args[2], args[3], true)
                        else
                            TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                        end
                    else
                        TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                    end
                else
                    TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                end
            else
                TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
            end
        end
    end,
    false
)

RegisterCommand(
    "addjob",
    function(source, args, rawCommand)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)

            if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "superadmin" then
                if args[1] ~= nil then
                    local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
                    if xTarget ~= nil then
                        if args[2] ~= nil and args[3] ~= nil then
                            AddJob(xTarget.identifier, args[2], args[3], true)
                        else
                            TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                        end
                    else
                        TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                    end
                else
                    TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
                end
            else
                TriggerClientEvent("core_multijob:sendMessage", source, Config.Text["wrong_usage"])
            end
        end
    end,
    false
)

ESX.RegisterServerCallback(
    "core_multijob:getBossMenuData",
    function(source, cb, job)
        local xPlayer = ESX.GetPlayerFromId(source)

        local gradeInfo = {}
        for k, v in pairs(JobInfo[job].grades) do
            table.insert(gradeInfo, {grade = k, grade_label = v.label})
        end

        local employees = {}

        MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE job = @job",
            {
                ["@job"] = job
            },
            function(info)
                for _, v in ipairs(info) do
                    table.insert(
                        employees,
                        {
                            identifier = v.identifier,
                            fullname = names[v.identifier] or "",
                            grade = v.grade,
                            grade_label = JobInfo[job].grades[v.grade].label
                        }
                    )
                end
 TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
                        if true then
                            cb(gradeInfo, employees, account.money, xPlayer.getJob().grade_name)
                        else
                            cb(gradeInfo, employees, "-", xPlayer.getJob().grade_name)
                        end
                    end
                )
            end
        )
    end
)

ESX.RegisterServerCallback(
    "core_multijob:getJobs",
    function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)

        MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE identifier = @identifier",
            {
                ["@identifier"] = xPlayer.identifier
            },
            function(jobs)
                local user_jobs = {}
                local online = {}

                local xPlayers = ESX.GetPlayers()

                for i = 1, #xPlayers, 1 do
                    local targetPlayer = ESX.GetPlayerFromId(xPlayers[i])
                    local targetJob = targetPlayer.getJob()
                    if online[targetJob.name] ~= nil then
                        online[targetJob.name] = online[targetJob.name] + 1
                    else
                        online[targetJob.name] = 1
                    end
                end

                for _, v in ipairs(jobs) do
                    local on = online[v.job]
                    if on == nil then
                        on = 0
                    end

                    table.insert(
                        user_jobs,
                        {
                            name = v.job,
                            grade = v.grade,
                            label = JobInfo[v.job].job_label,
                            grade_label = JobInfo[v.job].grades[v.grade].label,
                            salary = JobInfo[v.job].grades[v.grade].salary,
                            online = on,
                            removable = v.removeable
                        }
                    )
                end

                for _, v in ipairs(Config.DefaultJobs) do
                    local on = online[v.job]
                    if on == nil then
                        on = 0
                    end

                    if JobInfo[v.job] ~= nil then
                        table.insert(
                            user_jobs,
                            {
                                name = v.job,
                                grade = v.grade,
                                label = JobInfo[v.job].job_label,
                                grade_label = JobInfo[v.job].grades[v.grade].label,
                                salary = JobInfo[v.job].grades[v.grade].salary,
                                online = on,
                                removable = false
                            }
                        )
                    else
                        print(
                            "[Core Multiple Jobs] You dont have a job named " ..
                                v.job .. " as stated in the config... Ignoring it"
                        )
                    end
                end

                cb(user_jobs)
            end
        )
    end
)

RegisterServerEvent("core_multijob:addJob")
AddEventHandler(
    "core_multijob:addJob",
    function(job)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        AddJob(xPlayer.identifier, job, 0, true)

    end
)

RegisterServerEvent("core_multijob:hire")
AddEventHandler(
    "core_multijob:hire",
    function(id, job)
        local src = source

        local xPlayer = ESX.GetPlayerFromId(id)

        if xPlayer then
            TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["hired"])
            TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_success"])
            AddJob(xPlayer.identifier, job, 0, 1)
        else
            TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_unsuccessful"])
        end
    end
)

RegisterServerEvent("core_multijob:fire")
AddEventHandler(
    "core_multijob:fire",
    function(identifier, job)
        local src = source
        local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

        MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE identifier = @identifier",
            {
                ["@identifier"] = identifier
            },
            function(jobs)
                for _, v in ipairs(jobs) do
                    if v.job == job then
                        RemoveJob(identifier, job, v.grade)
                    end
                end
            end
        )

        if xPlayer then
            if xPlayer.getJob().name == job then
                xPlayer.setJob("unemployed", 0)

                TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["fired"])
                TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_success"])
            else
                TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["fired_other"])
            end
        else
            MySQL.Async.execute(
                "UPDATE users SET `job`=@job, `job_grade`=@rank WHERE `identifier` = @identifier",
                {["@job"] = "unemployed", ["@grade"] = "0", ["@identifier"] = identifier},
                function()
                end
            )
        end
    end
)

RegisterServerEvent("core_multijob:deposit")
AddEventHandler(
    "core_multijob:deposit",
    function(job, amount)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        if xPlayer.getAccount("bank").money >= tonumber(amount) then

           TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
    account.addMoney( tonumber(amount))
end)
            xPlayer.removeAccountMoney("bank", tonumber(amount))
            TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_success"])
        else
            TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["insufficent_balance"])
        end
    end
)

RegisterServerEvent("core_multijob:givebonus")
AddEventHandler(
    "core_multijob:givebonus",
    function(identifier, amount, job)
        local src = source
        local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

        if xPlayer then

                xPlayer.addAccountMoney('bank', tonumber(amount))
                TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["bonus_given"])
                TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["bonus_recieved"] .. amount)
        else


                 MySQL.Async.execute(
               "UPDATE users SET `bank`=`bank` + @amount WHERE `identifier` = @identifier",
                {["@amount"] = tonumber(amount), ["@identifier"] = identifier},
                function()
                     TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["bonus_given"])
                end
            )

            --USER ACCOUNTS
            -- MySQL.Async.execute(
            --   "UPDATE user_accounts SET `money`=`money` + @amount WHERE `identifier` = @identifier AND `name` = 'bank'",
             --   {["@amount"] = tonumber(amount), ["@identifier"] = identifier},
            --    function()
             --        TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["bonus_given"])
             --   end
            --)
        end

        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
    account.removeMoney( tonumber(amount))
end)
       
    end
)



RegisterServerEvent("core_multijob:withdraw")
AddEventHandler(
    "core_multijob:withdraw",
    function(job, amount)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

       TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
   

                if true then
                    local balance = account.money

                    if tonumber(balance) >= tonumber(amount) then

                        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' .. job, function(account)
    account.removeMoney( tonumber(amount))
end)

                    
                                xPlayer.addAccountMoney("bank", tonumber(amount))
                           
                        TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_success"])
                    else
                        TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["insufficent_balance"])
                    end
                else
                    TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_unsuccessful"])
                end
            end
        )
    end
)

RegisterServerEvent("core_multijob:setRank")
AddEventHandler(
    "core_multijob:setRank",
    function(identifier, job, rank)
        local src = source
        local xPlayer = ESX.GetPlayerFromIdentifier(identifier)

        MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE identifier = @identifier",
            {
                ["@identifier"] = identifier
            },
            function(jobs)
                for _, v in ipairs(jobs) do
                    if v.job == job then
                        RemoveJob(identifier, job, v.grade)
                    end
                end

                AddJob(identifier, job, rank, 1)
            end
        )

        if xPlayer then
            if xPlayer.getJob().name == job then
                xPlayer.setJob(job, rank)
                TriggerClientEvent("core_multijob:sendMessage", src, Config.Text["action_success"])
                TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["promoted"])
            else
                TriggerClientEvent("core_multijob:sendMessage", xPlayer.source, Config.Text["promoted_other"])
            end
        else
            MySQL.Async.execute(
                "UPDATE users SET `job`=@job, `job_grade`=@rank WHERE `identifier` = @identifier",
                {["@job"] = job, ["@grade"] = rank, ["@identifier"] = identifier},
                function()
                end
            )
        end
    end
)

RegisterServerEvent("core_multijob:changeJob")
AddEventHandler(
    "core_multijob:changeJob",
    function(job, grade)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        xPlayer.setJob(job, grade)
    end
)

RegisterServerEvent("core_multijob:checkForJob")
AddEventHandler(
    "core_multijob:checkForJob",
    function()
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        MySQL.Async.fetchAll(
            "SELECT * FROM user_jobs WHERE identifier = @identifier",
            {
                ["@identifier"] = xPlayer.identifier
            },
            function(jobs)
                local add = true
                local amount = 0

                local job = xPlayer.getJob()

                for _, v in ipairs(jobs) do
                    if job.name == v.job then
                        add = false
                    end
                    amount = amount + 1
                end

                for _, v in ipairs(Config.DefaultJobs) do
                    if job.name == v.job then
                        add = false
                    end
                end

                if add and amount < Config.MaxJobs and job.name ~= "offduty" then
                    AddJob(xPlayer.identifier, job.name, job.grade, true)
                end
            end
        )
    end
)

RegisterServerEvent("core_multijob:removeJob")
AddEventHandler(
    "core_multijob:removeJob",
    function(job, grade)
        local src = source
        local xPlayer = ESX.GetPlayerFromId(src)

        RemoveJob(xPlayer.identifier, job, grade)
    end
)
