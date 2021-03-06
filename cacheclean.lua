---------------------------------------------------------------------------------
--    Copyright (C) {2014}  {evilexecutable}
--
--  This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License along
--  with this program; if not, write to the Free Software Foundation, Inc.,
--  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
---------------------------------------------------------------------------------

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
	
	local responsefirefox = os.execute("cd %localappdata%\\Mozilla\\Firefox\\")
		if responsefirefox == 0 then
			print("Firefox found... Deleting cache files...")
			os.execute("del %localappdata%\\Mozilla\\Firefox\\UserDa~1\\
	
	print("Browsers cleaned.")
	dofile("main.lua")