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

function start()
print("\n\n\========Choose your poison=======")
print(" a): Clear Installed Browsers (Cache, profiles) WARNING: You'll lose bookmarks.  b): Remove cache only\n\ c): Write 0's to C drives free space.")
print(" (Please all applications are closed) ")
choice = io.read():lower()
end

start()

if choice == "a" then
	dofile("browserclean.lua")
end

if choice == "b" then
	dofile("cacheclean.lua")
end

if choice == "c" then
	print("Enter drive letter you wish to wipe:")
	local drivechoice = io.read():upper()
	print("Cipher is now wiping the free space on the drive. This will take a while.")
	os.execute("cipher /w:" .. (drivechoice))
end

--start()