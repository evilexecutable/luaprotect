---------------------------------------------------------------------------------
--    Copyright (C) {2014}  {evilexecutable}
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
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
	
	--The below is just a dirtyhack for detecting if directory exists. Maybe another method would be better.
	print("Detecting Browsers...")
	local detectie = os.execute("cd C:\\Program Files\\Internet Explorer\\")	--Check for internet explorer.
		if detectie == 0 then
			print("Internet Explorer found... \n\Deleting browser files...")
			deleteie = os.execute("del %temp%\\*") --Execute del command.
		else
			print("IE not found, are you sure you're running on Windows?")
		end
	

	local responsechrome = os.execute("cd C:\\Program Files\\Google\\Chrome\\Application\\") --Check for Google Chrome.
		if responsechrome == 0 then
			print("Chrome found... Deleting browser files...")
			os.execute("del /F /S /Q /A %localappdata%\\Google\\Chrome\\UserDa~1\\Default\\")
		else
			print("Chrome not found, skipping...")
		end
	
	local responsechromium = os.execute("cd %localappdata%\\Chromium\\") --Check for chromium.
		if responsechromium == 0 then
			print("Chromium-based browser found... Deleting browser files...")
			os.execute("del /F /S /Q /A %localappdata%\\Chromium\\UserDa~1\\Default\\*")
		else
			print("Chromium not found, skipping...")
		end
		
	local responsefirefox = os.execute("cd C:\\Program Files (x86)\\Mozilla Firefox\\")
		if responsefirefox == 0 then
			print("FireFox found... Deleting browser files...")
			os.execute("del /F /S /Q /A %localappdata%\\Mozilla\\")
			os.execute("del /F /S /Q /A %appdata%\\Mozilla\\")
		else
			print("Firefox not found, skipping...")
		end
	
	print("Browsers cleaned.")
	dofile("main.lua")