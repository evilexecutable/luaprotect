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

print("|           |-----|\n\|           |     |\n\|           |-----|\n\|           |\n\|           |")
print(" ------")
print("Welcome to LuaProtect!")

local function start()
print("\n\n\========Choose your poison.=======")
print(" a): Clear Browsers (Cache, profiles, etc) WARNING: You'll lose bookmarks. \n\ b): Remove cache only\n\ c): Write 0's to C drives free space.")
choice = io.read()
end

start()

if choice == "b" then
	print("Detecting Browsers...")
	local responseie = os.execute("cd C:\\Program Files\\Internet Explorer\\")	--Check for internet explorer.
		if responseie == 0 then
			print("Internet Explorer found... \n\Deleting cache files...")
			os.execute("del %temp%\\*") --Execute del command.
			print("Done!")
		else
			print("IE not found, are you sure you're running on Windows?")
		end
	

	local responsechrome = os.execute("cd C:\\Program Files\\Google\\Chrome\\Application\\") --Check for Google Chrome.
		if responsechrome == 0 then
			print("Chrome found... Deleting cache files...")
			os.execute("del %localappdata%\\Google\\Chrome\\User Data\\Default\\Cache\\*")	--Execute del command.
			print("Done!")
		else
			print("Chrome not found, skipping...")
		end
	
end
