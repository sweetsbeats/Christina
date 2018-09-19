
function findTacoBell(message)
	if  message.content:find("!") == 1 and string.find(message.cleanContent:lower(), "!tacobell")  then 
		message.channel:send( message.author.mentionString .. " https://www.google.com/maps/place/Taco+Bell/ \n Get me a crunchwrap supreme and a dokupe")
	end
end
