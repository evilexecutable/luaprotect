local detectie = os.execute("cd C:\\Program Files\\Internet Explorer\\")	--Check for internet explorer.
		if detectie == 0 then
			print ("Would you like to clear Internet Explorer? Y/N")
			local iechoice = io.read():lower()
			
			if iechoice == "y" then
			deleteie = os.execute("del %temp%\\*") --Execute del command.
		else
		end