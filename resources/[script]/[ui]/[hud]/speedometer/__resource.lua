resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page "ui/index.html"

files {
	"ui/index.html",
	"ui/js/main.js",
	'ui/**/*.*',
	'ui/*.*'
}

max_speed "250"
client_scripts {
	"client.lua",
}
