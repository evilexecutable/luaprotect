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
print(" a): Clear Installed Browsers (Cache, profiles) WARNING: You'll lose bookmarks.  b): Choose browser to clear. c): Remove cache only\n\ d): Write 0's to C drives free space.\n\ e): Flush DNS cache and get new ip.")
print(" (Please ensure all applications are closed) ")
choice = io.read():lower()
end

start()

if choice == "a" then
	dofile("browserclean.lua")
end

if choice == "b" then
	dofile("browserchoice.lua")
end

if choice == "c" then
	dofile("cacheclean.lua")
end

if choice == "d" then
	dofile("drivewipe.lua")
end

if choice == "e" then
	dofile("flush.lua")
end