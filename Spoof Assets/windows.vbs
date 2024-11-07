Set WshShell = CreateObject("WScript.Shell")

Function RandomString(length)
    Dim chars, str, i
    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    str = ""
    For i = 1 To length
        str = str & Mid(chars, Int((Len(chars) * Rnd) + 1), 1)
    Next
    RandomString = str
End Function

Randomize
Dim csName, primaryOwnerName
csName = RandomString(5) & "-" & RandomString(5)
primaryOwnerName = RandomString(5) & "-" & RandomString(5)

Set objShell = CreateObject("WScript.Shell")

objShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName", csName, "REG_SZ"
objShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName\ComputerName", csName, "REG_SZ"
objShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Hostname", csName, "REG_SZ"
objShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\NV Hostname", csName, "REG_SZ"
objShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner", primaryOwnerName, "REG_SZ"


