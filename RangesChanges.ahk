; path where the .exe(generated with powershell) is located to change the ip address
PATH_1 := "path/to/file.exe"
PATH_2 := "path/to/file.exe"
PATH_3 := "path/to/file.exe"
; this shortcut runs the .exe with the ip address programmed in powershell
!a::
run, PATH_1
Return
!e::
run, PATH_2
Return
!d::
run, PATH_3
Return