local discordia = require('discordia')
local client = discordia.Client()

require("data")
require("dice")
require("responder")

--count number of responses added in data.lua
getResponseCount()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
	
	diceRoll(message)
	responderRun(client, message)

end)

client:run(data.botToken)


