ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function (source)
    if Config.UseLicense then
        TriggerEvent('esx_license:getLicenses', source, function (licenses)
            TriggerClientEvent('daily_cartestdrive:loadLicenses', source, licenses)
        end)
    end
end)

ESX.RegisterServerCallback('daily_cartestdrive:checkMoney', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local accountMoney = xPlayer.getAccount(Config.MoneyType).money

    if accountMoney < Config.TestPrice then
        TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'error', text = "You need".. Config.TestPrice .. "$ to test drive", style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })

        cb(false)
    else
        xPlayer.removeAccountMoney('money', Config.TestPrice)
        Wait(500)

        cb(true)
	end
end)
