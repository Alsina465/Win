@echo off
echo off
cls
set /p User=Nombre de Usuario?
set /p Piso= Piso?
net user  %User% %User% /add
echo el usuario = %User% fue creado con exito
pause