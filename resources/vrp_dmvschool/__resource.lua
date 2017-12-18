ui_page 'html/ui.html'
--ui_page 'html/ui_danish.html'

dependency 'vrp'
files {
	'html/ui.html',
	'html/ui_danish.html',
	'html/logo.png',
	'html/dmv.png',
	'html/cursor.png',
	'html/styles.css',
	'html/questions.js',
	'html/questions_danish.js',
	'html/scripts.js',
	'html/debounce.min.js'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua'
	--'server_danish.lua'
}

client_script {
	'client.lua',
	--'client_danish.lua',
	'GUI.lua'
}