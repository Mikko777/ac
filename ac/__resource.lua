description "M1 Private ANTICHEAT"

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

client_scripts {
	'config/Config.lua',
	'client/Client.lua'
}
server_scripts {
	'config/Config.lua',
	'server/Server.lua',
	'webhook.lua'
}