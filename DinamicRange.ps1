#Simply set to dinamic range
Set-NetIPInterface -InterfaceIndex 18 -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceIndex 18 -ResetServerAddresses
#Compile this script with PS2EXE.
