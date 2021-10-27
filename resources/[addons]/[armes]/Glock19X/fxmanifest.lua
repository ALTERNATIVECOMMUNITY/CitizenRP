fx_version 'cerulean'
games {'gta5'}
description 'Add-on weapon generated using vWeaponsToolkit'

files{
	'**/weaponcomponents.meta',
	'**/weaponarchetypes.meta',
	'**/weaponanimations.meta',
	'**/weaponanimations2.meta',	
	'**/pedpersonality.meta',
	'**/pedpersonality2.meta',	
	'**/weapons.meta',
	'**/weapons2.meta',	
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' '**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/weaponanimations.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/weaponanimations2.meta'
data_file 'PED_PERSONALITY_FILE' '**/pedpersonality.meta'
data_file 'PED_PERSONALITY_FILE' '**/pedpersonality2.meta'
data_file 'WEAPONINFO_FILE' '**/weapons.meta'
data_file 'WEAPONINFO_FILE' '**/weapons2.meta'

client_script 'cl_weaponNames.lua'
