print("Flushing DNS cache and restarting DHCP...")
os.execute("ipconfig /flushdns")
os.execute("ipconfig /release")
os.execute("ipconfig /renew")
print("Done!")

dofile("main.lua")