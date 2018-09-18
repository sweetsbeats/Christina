
require("data")

responder = {
	responseCount = 0	
}
	
function responder.getResponseCount()
	responseCount = 0
	for i, v in ipairs(responses) do
		responseCount = responseCount + 1
	end
end
	
function responder.checkMessage(client, message)
	for i, v in ipairs(keywords) do
		if string.lower(message.content):find( string.lower(v) ) and message.author ~= client.user  then
			print("Found a keyword in string")
			message.channel:send( responses[ math.random(responseCount) ] )
			break
		end
	end	
end