Config = {

Text = {

	['someone_is_waiting'] = 'Someone used deskbell',
	['press_to_call'] = '[~g~E~w~] Press to use deskbell',
	['please_wait'] = 'Staff informed please wait ~g~'

},

Desks = { --Setup deskbells for each job

  {coords = vector3(-564.00787353516,-126.93988800049,38.418464660645), job = 'police'},
  -- {coords = vector3(115.88848114014,6630.3090820313,33.18488693237 - 0.9), job = 'mechanic'},
  -- {coords = vector3(-239.18188476563,6219.2143554688,33.0147743225 - 0.9), job = 'cardealer'}

}


}

-- Only change if you know what are you doing!
function SendNotice(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--USING MYTHIC EXAMPLE
		exports['mythic_notify']:SendAlert('inform', msg)

end
