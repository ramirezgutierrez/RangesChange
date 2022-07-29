#Get all ips configured.
$ips = Get-NetIPAddress
#ip for change
$ip_1 = "76.25.3.200"
#gateway of ip.
$gateway = "75.25.3.254"
#If there are any ip equals a ip_1,this one is removed.
for($i=0; $i -lt $ips.Length; $i++){
    $ipc = $ips.GetValue($i)
    $ip = $ipc.IPAddress
    if($ip.Equals($ip_1))
     {
     
     Remove-NetIPAddress -Confirm:$false
     
    }else{
    
    }
    
}
Remove-NetRoute -Confirm:$false
#Now set the new ip adress (ip_1) *change InterfaceIndex and PrefixLength if is necesary.
New-NetIPAddress -InterfaceIndex 18 -IPAddress $ip_1 -PrefixLength 24 -DefaultGateway $gateway -Confirm:$false 
#Compile this script with PS2EXE.
