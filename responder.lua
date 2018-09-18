require("data")

responseCount = 0

responses = {
	checkMessage,
	iLoveYou
}
	
--runs all functions in the module, functions are defined in responses
function responderRun(client, message) 	
	for i, f in pairs(responses) do
		f(client, message)
	end
end
	
	
	--must get run as an initialization
function getResponseCount()
	for i, v in ipairs(data.responses) do
		responseCount = responseCount + 1
	end
end
	
function responses.checkMessage(client, message)
	for i, v in ipairs(data.keywords) do
		if string.lower(message.content):find( string.lower(v) ) and message.author ~= client.user  then
			message.channel:send( data.responses[ math.random(responseCount) ] )
			break
		end
	end	
end

-- Responds with "dokupe.jpg" and an @
function responses.iLoveYou(client, message)
	message.mentionedUsers:forEach( function(mentionedUser)	
		if client.user == mentionedUser then
			if string.lower(message.cleanContent):find("i love you") then
				message:reply {
					content = message.author.mentionString,
					file = "images/dokupe.jpg",
				}
			end
		end
	end)

end


