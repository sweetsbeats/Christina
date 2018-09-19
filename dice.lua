require("data")

function diceRoll(message) 
	if  message.content:find("!") == 1 and string.find(message.content, "!d")  then 
		local a = string.sub(message.content, 3)
		print(a)
		local num = tonumber(a)
		print(num)
		if num ~= nil then
			local result = math.random(num)
			message.channel:send(tostring(result))
			print(string.format("User '%s' rolled %d sided die in channel '%s'", message.author.username, tonumber(a), message.guild.name))			
		end
	end
end