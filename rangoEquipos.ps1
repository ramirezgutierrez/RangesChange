#Get all ips configured.
$ips = Get-NetIPAddress -AddressFamily IPv4
#ip for change
$ip_2 = "123.254.113.200"
#If there are any ip equals a ip_1,this one is removed.
for($i=0; $i -lt $ips.Length; $i++){
    $ipc = $ips.GetValue($i)
    $ip = $ipc.IPAddress
    if($ip.Equals($ip_2))
     {
     #echo Exist
      Remove-NetIPAddress -IPAddress  -Confirm:$false
  
     }else{
      #echo "Don't exist"
     }
    
}
Remove-NetRoute -Confirm:$false
#Now set the new ip adress (ip_1) *change InterfaceIndex and PrefixLength if is necesary.
New-NetIPAddress -InterfaceIndex 18 -IPAddress $ip_2 -PrefixLength 24 -Confirm:$false
#Compile this script with PS2EXE.