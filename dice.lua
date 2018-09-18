require("data")

function diceRoll(message) 
	if string.find(message.content, "!d") then 
		local a = string.sub(message.content, -2)
		local result = math.random(tonumber(a))
		message.channel:send(tostring(result))
		print(string.format("User '%s' rolled %d sided die in channel '%s'", message.author.username, tonumber(a), message.guild.name))			
	end
end