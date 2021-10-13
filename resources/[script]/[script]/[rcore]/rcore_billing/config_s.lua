SConfig = {}
--Discord logging
SConfig.DiscordSending = true
SConfig.DiscordSendingLimit = 2000 --If invoice is lower than this its not sending discord notification, set 0 to send all
SConfig.DiscordWebhook = 'https://discord.com/api/webhooks/892733866278801418/wFuU7kWysAbctH5gIlzCA7Xlyu-dCAvARSDwmsQYLSdbrbpOvst4JW0-wRvLaOzqyqBl'
SConfig.DiscordColors = {
    ['Green'] = 56108,
    ['Grey'] = 8421504,
    ['Red'] = 16711680,
    ['Orange'] = 16744192,
    ['Blue'] = 2061822,
    ['Purple'] = 11750815
}

SConfig.JobSending = true
SConfig.JobWebhooks = {
    ['police'] = 'https://discord.com/api/webhooks/892733866278801418/wFuU7kWysAbctH5gIlzCA7Xlyu-dCAvARSDwmsQYLSdbrbpOvst4JW0-wRvLaOzqyqBl',
    ['ambulance'] = '',
}

--Spam protection
SConfig.SpamDetect = 1500 --If player create two invoice in one second its
SConfig.DeleteSpammedInvoices = true
SConfig.SendSpamNotification = true
