# T1GER KEYS

### Contact
Author: T1GER#9080
Discord: https://discord.gg/FdHkq5q

### AUTH / SUPPORT
Join my discord, if not already joined - and open a ticket. Post screenshot of your order including order# and product(s).

### Dependencies:
- progressBars [https://gitlab.com/t1ger-scripts/t1ger-requirements] (otherwise, disable in Config.lua)

### Installation
1) Drag & drop the folder into your `resources` server folder.
2) Configure config.lua to match & satisfy your needs/requirements.
3) Open `t1ger_keys.sql` and run the query manually, do not import!
4) Install and ensure the necessary dependencies.
5) Add `start t1ger_keys` to your server config.

### Showcase
- https://youtu.be/FvTIlO4SBBg

### Utils
There is a utils.lua file in client folder.
Kindly read carefully on the comments etc. before editing, otherwise use my discord for support.

### Vehicle Names
Custom Add-On vehicles will return as NULL if you haven't added vehicle name for them properly.
Please see this tutorial on CFX Forums on how to add vehicle names:
https://forum.cfx.re/t/how-to-add-on-vehicles-detailed/37501
- Also make sure that gameName inside vehicles.meta for your add-on vehicle, matches the database spawn name!

### Config File
Almost everything is configurable. 
Every option should be commented with references, so you know what each option does.
Customzie this as you please.

### Give Permanent Keys (vehicle must exist in database)

** FOR THIS TO WORK, VEHICLE MUST EXIST IN DATABASE - USE WITH CAR DEALERS & VEHICLE SHOPS **

***Use this export from server sided files***
exports['t1ger_keys']:UpdateKeysToDatabase(plate, state)

- plate; plate of the vehicle in database that needs its keys state updated.
- state; set it to true/false, where true means adding keys, false means removing keys.
- example: https://ibb.co/vDx6czs

***Use this TriggerServerEvent from client sided files***
TriggerServerEvent('t1ger_keys:updateOwnedKeys', plate, state)
- plate; plate of the vehicle in database that needs its keys state updated.
- state; set it to true/false, where true means adding keys, false means removing keys.
- notes; when using client sided event to trigger, u really have to make sure the vehicle is properly inserted in DB, before calling this event.

### Give Job Vehicle Keys

exports['t1ger_keys']:GiveJobKeys(plate, name, boolean, jobs)

- plate; is the plate of the vehicle 
- name; is the vehicle display name, using GetLabelText() and GetDisplayNameFromVehicleModel()
- boolean; is true/false, where true add keys to the player, false doesnt add keys to the player
- jobs; is a table of jobs, that should have lock/unlock access to the vehicle

Example #1 (Adding job keys for player only, not jobs): 
exports['t1ger_keys']:GiveJobKeys(plate, name, true)
Image: https://gyazo.com/58e896cbb8f4f89f126d8959e9169a5a (from T1GER GARAGE)

Example #2 (Adding job keys for job people only) (player has no access if leaves the job)
exports['t1ger_keys']:GiveJobKeys(plate, name, false, {'police', 'lspd', 'ambulance'})
Image: https://gyazo.com/72bfa49c3310faa83c6a2f5525f8b50f (from T1GER GARAGE)

Example #3 (Adding job keys for player and job people)
exports['t1ger_keys']:GiveJobKeys(plate, name, true, {'police'})
Image: https://gyazo.com/6761a66d2c59b2c77292d5fe5d868104 (from T1GER GARAGE)

There is really no difference between #2 and #3, other than with #3 player can still lock/unlock if he goes off-duty
With #1 its almost a normal temporary key, just displayed with [JOB] inside the key management menu

### Give Temporary Keys

exports['t1ger_keys']:GiveTemporaryKeys(plate, name, type)

- plate; is the plate of the vehicle 
- name; is the vehicle display name, using GetLabelText() and GetDisplayNameFromVehicleModel()
- type; is the label shown in keys menu, after the plate. I use 'stolen' for keys gotten from NPCs at gunpoint aim

Example (adding keys for a vehicle): 
exports['t1ger_keys']:GiveTemporaryKeys(plate, name, true)
Image: https://gyazo.com/e33353d5fc0f85aaa347fb5e8aead497 (from T1GER KEYS)

### Vehicle Locked State
When you are creating vehicles in a script, by defaults it locked, unless you set it to unlocked, using this export:

exports['t1ger_keys']:SetVehicleLocked(vehicle, int)

- vehicle; is the vehicle entity you want to perform the action on 
- int; is the locked status, set between 0 (unlocked) or 2 (locked)
- example: https://gyazo.com/16d79927f87f441a0cacfe01725d0362

As you may see in my example, I have added it inside ESX.Game.SpawnVehicle() to make sure all resources, using this function 
will have the SetVehicleLocked export function executed and have the locked status set to 0. Otherwise, you need to manually add the export function to your scripts.

### Vehicle Search Status 
Allow a vehicle to be searched, using /search from other resources/scripts, simply add this:

exports['t1ger_keys']:SetVehicleCanSearch(vehicle, boolean)

- vehicle; is the vehicle entity you want to perform the action on 
- boolean; is either true/false, to allow /search on the vehicle set to true, else set to false

### Vehicle Hotwire Status 
Allow a vehicle to be searched, using /search from other resources/scripts, simply add this:

exports['t1ger_keys']:SetVehicleHotwire(vehicle, boolean)

- vehicle; is the vehicle entity you want to perform the action on 
- boolean; is either true/false, to require hotwire on the vehicle set to true, else set to false
