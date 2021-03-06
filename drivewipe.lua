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
	
	print("Enter drive letter you wish to wipe:")
	drivechoice = io.read():upper()
	
	print("How many times do you wish to wipe?\n\The more wipes, the longer it will take but more\n\secure you will be.")
	wipecount = io.read("*number")
	
	count = 0
	print("Cipher is now wiping the free space on the drive. This will take a while.")	
	while count < wipecount do
		os.execute("cipher /w:" .. (drivechoice))
		count = count + 1
		print("Done " .. count .. " passes.")
	end
	
	drivechoice = nil
	wipcount = nil
	count = nil
	
	print("Drive wiped.")
	dofile("main.lua")