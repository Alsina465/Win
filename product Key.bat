@ECHO OFF
ECHO OFF
CLS
echo Product Key Regedit
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v BackupProductKeyDefault
reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v BackupProductKeyDefault >C:\CodigoKey.txt



echo Product Key UEFI-BIOS
wmic path softwarelicensingservice get OA3xOriginalProductKey
wmic path softwarelicensingservice get OA3xOriginalProductKey  >>C:\CodigoKey.txt


echo "Los resultados de guardaron en C:\CodigoKey.txt"
echo "Usar CTRL+C  y CTRL+V"


pause
