Set WshShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

Sub ExecuteCommand(cmd)
    WshShell.Run cmd, 0, True
End Sub

Function GetRandom()
    Randomize
    GetRandom = Int((99999 - 10000 + 1) * Rnd + 10000)
End Function

ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography"" /v MachineGuid /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & " /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion"" /v BuildGUID /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & " /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc"" /v PropertyGuid /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc"" /v PropertyGuid /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver"" /v PropertyGuid /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation"" /v ComputerHardwareId /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f >nul 2>&1"
ExecuteCommand "REG ADD ""HKLM\Software\Microsoft\Windows NT\CurrentVersion"" /v InstallDate /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD ""HKLM\Software\Microsoft\Windows NT\CurrentVersion"" /v ProductId /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows"" ""NT\CurrentVersion /v BuildGUID /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows"" ""NT\CurrentVersion /v InstallDate /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows"" ""NT\CurrentVersion /v ProductId /t REG_SZ /d " & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows"" ""NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows"" ""NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS" & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"" ""Profiles\0001 /v GUID /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f"
ExecuteCommand "REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f"
ExecuteCommand "REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {" & GetRandom() & "} /f"
ExecuteCommand "REG ADD HKLM\Software\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\System\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\System\CurrentControlSet\Control\WMI\Security /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d " & GetRandom() & " /f"
ExecuteCommand "REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion"" ""WindowsUpdate /v SusClientId /t REG_SZ /d {" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "-" & GetRandom() & "} /f"

ExecuteCommand "certutil -URLCache * delete"
ExecuteCommand "netsh int ip reset"
ExecuteCommand "netsh int ipv4 reset"
ExecuteCommand "netsh int ipv6 reset"
ExecuteCommand "netsh interface IP delete arpcache"
ExecuteCommand "ipconfig / >nul"
ExecuteCommand "ipconfig /release >nul"
ExecuteCommand "ipconfig /renew >nul"
ExecuteCommand "ipconfig /flushdns >nul"
ExecuteCommand "netsh advfirewall reset"
ExecuteCommand "netsh winsock reset"
