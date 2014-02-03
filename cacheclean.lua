print("Detecting Browsers...")
	local detectie = os.execute("cd C:\\Program Files\\Internet Explorer\\")	--Check for internet explorer.
		if detectie == 0 then
			print("Internet Explorer found... \n\Deleting cache files...")
			deleteie = os.execute("del %temp%\\*") --Execute del command.
		else
			print("IE not found, are you sure you're running on Windows?")
		end
	

	local responsechrome = os.execute("cd C:\\Program Files\\Google\\Chrome\\Application\\") --Check for Google Chrome.
		if responsechrome == 0 then
			print("Chrome found... Deleting cache files...")
			os.execute("del %localappdata%\\Google\\Chrome\\UserDa~1\\Default\\Cache\\")
		else
			print("Chrome not found, skipping...")
		end
	
	local responsechromium = os.execute("cd %localappdata%\\Chromium\\")
		if responsechromium == 0 then
			print("Chromium-based browser found... Deleting cache files...")
			os.execute("del %localappdata%\\Chromium\\UserDa~1\\Default\\Cache\\")
		else
			print("Chromium not found, skipping...")
		end
	
	print("Browsers cleaned.")
	dofile("main.lua")