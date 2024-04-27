@echo off
echo off
cls
echo version 1.0

set /p User=Nombre de Usuario?: 
set /p Piso= Piso?: 
net user  %User% %User% /add
echo Usuario:  %user% ha sido creado con exito

set HH=cen-%piso%-%user%

echo Host Actual
#reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName
#reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName
#reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v  /NV HostName
reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v Hostname

echo Se creara el Hostname
echo %HH%


reg add HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /v "NV Hostname" /t REG_SZ /d %HH% /f
#echo Se agrego el Host a Nv Hostname
reg add HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /v "Hostname"    /t REG_SZ /d %HH% /f
#echo Se agrego el Host a  Hostname

pause
shutdown -r -t 3 -f -c "Presione una tecla para reiniciar"
