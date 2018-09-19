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
	if message.content == '!help' then
		message.author:getPrivateChannel():send(helpMsg)
	end
	
	diceRoll(message)
	responderRun(client, message)

end)

client:run(data.botToken)

helpMsg = ' list of commands! \n\
						!d{x}:   Rolls an x sided die \n\
						@kurisu I love you:  Show your love for Christina \n' 
