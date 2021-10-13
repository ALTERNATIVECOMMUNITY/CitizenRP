Config = {}
Translation = {}

Config.Locale = 'en'

Config.CanEverybodyGiveBills = true
Config.PayBillsTime = {h = 21, m = 00}

Config.enableKeyUsage = false
Config.Key = 168 -- FiveM Key to open the Billing menu

Config.useDiscordWebhooks = false
Config.Webhooks = {
    ['society_police'] = GetConvar("webhook_police_invoice", "Failed to load webhook error!"),
    ['society_example'] = GetConvar("webhook_example", "Failed to load webhook error!"),
} -- You need to set the Convar in the server.cfg: Just add something like this to the server.cfg:
-- set webhook_example "https://discordapp.com/api/webhooks/........" <- your webhook link

Config.useNewESX = true
Config.useAccountMoney = true
Config.Account = 'bank'

Translation = {

    ['de'] = {
        ['bills'] = 'Rechnungen',
        ['give_bill'] = 'Rechnung ausstellen',
        ['give_bill_desc'] = 'Stelle eine Rechnung aus',
        ['reason'] = 'Grund:',
        ['insert_reason'] = 'Gebe einen Grund ein',
        ['amount'] = 'Betrag:',
        ['insert_amount'] = 'Betrag eingeben',
        ['submit_bill'] = '~g~Rechnung ausstellen',
        ['taxbills'] = 'Rechnungen in Teilzahlung',
        ['taxbills_desc'] = '~r~Offener Betrag ~s~/ ~o~Gesamt',
        ['private'] = 'Privat',

        ['dialog_title'] = 'Rechnung erhalten',
        ['dialog_accept'] = '~g~Rechnung annehmen',
        ['dialog_reject'] = '~r~Rechnung ablehnen',

        ['bill_paid'] = '~g~Die Rechnung i.H.v. ~w~',
        ['bill_paid2'] = '$ ~g~wurde bezahlt.',
        ['society_bill_paid'] = '~g~Eine von dir ausgestellte Rechnung i.H.v. ~w~',
        ['society_bill_paid2'] = '$ ~g~wurde bezahlt.',

        ['not_enough_money'] = '~r~Du hast nicht genügend Geld!',
        ['bill_given'] = '~g~Anfrage für die Rechnung weitergegeben.',
        ['bill_accepted'] = '~g~Deine Rechnung wurde akzeptiert.',
        ['target_bill_accepted'] = '~g~Du hast die Rechnung akzeptiert.',
        ['bill_rejected'] = '~r~Deine Rechnung wurde abgelehnt.',
        ['target_bill_rejected'] = '~r~Du hast die Rechnung abgelehnt.',

        ['discord_new_invoice'] = 'Neue Rechnung',
        ['discord_msg'] = ' hat ',
        ['discord_msg2'] = ' eine Rechnung i.H.v. ',
        ['discord_msg3'] = '$ für ',
        ['discord_msg4'] = ' ausgestellt.',

        ['paid_taxbill'] = 'Ein Teil deiner Rechnungen wurde ~g~bezahlt~s~ : ~g~$',

        ['invoice_title'] = 'Rechnung',
        ['invoice_pricetitle'] = 'Betrag:',
        ['invoice_reasontitle'] = 'Grund:',
        ['invoice_sign'] = 'Nachname, Vorname',
        ['invoice_accepttitle'] = 'Unterschreiben',

		['is_society_bill'] = 'Jobrechnung?',
        ['no_society'] = '~r~Es gibt kein Geschäftskonto von deinem Job!',
    },

    ['en'] = {
        ['bills'] = 'Factures',
        ['give_bill'] = 'Émettre une facture',
        ['give_bill_desc'] = 'Émettre une facture à quelqu&#39;un',
        ['reason'] = 'Raison:',
        ['insert_reason'] = 'Entrez une raison',
        ['amount'] = 'Montant:',
        ['insert_amount'] = 'Entrez un montant',
        ['submit_bill'] = '~g~Confirmer',
        ['taxbills'] = 'Factures de paiement partiel',
        ['taxbills_desc'] = '~r~Montant restant ~s~/ ~o~Total',
        ['private'] = 'Privé',

        ['dialog_title'] = 'Facture reçue',
        ['dialog_accept'] = '~g~J&#39;accepte',
        ['dialog_reject'] = '~r~Rejeter',

        ['bill_paid'] = '~g~Le projet de loi de ~w~',
        ['bill_paid2'] = '$ ~g~a été payé.',
        ['society_bill_paid'] = '~g~Une de vos factures de ~w~',
        ['society_bill_paid2'] = '$ ~g~a été payé.',

        ['not_enough_money'] = '~r~Vous n&#39;avez pas assez d&#39;argent !',
        ['bill_given'] = '~g~Demande envoyée pour la facture.',
        ['bill_accepted'] = '~g~Votre facture a été acceptée.',
        ['target_bill_accepted'] = '~g~Vous avez accepté la facture.',
        ['bill_rejected'] = '~r~Votre facture a été rejetée.',
        ['target_bill_rejected'] = '~r~Vous avez rejeté la facture.',

        ['discord_new_invoice'] = 'Nouvelle facture',
        ['discord_msg'] = ' a donné',
        ['discord_msg2'] = ' une facture d&#39;un montant de',
        ['discord_msg3'] = '$ pour',
        ['discord_msg4'] = '.',

        ['paid_taxbill'] = 'Une partie de vos factures restantes a été ~g~payée~s~ : ~g~$',

        ['invoice_title'] = 'Facture d&#39;achat',
        ['invoice_pricetitle'] = 'Prix:',
        ['invoice_reasontitle'] = 'Raison:',
        ['invoice_sign'] = 'nom Prénom',
        ['invoice_accepttitle'] = 'Signez ici',

        ['is_society_bill'] = 'Facture en tant que société  ?',
        ['no_society'] = '~r~Vous n&#39;avez pas de société !',
    }
}
