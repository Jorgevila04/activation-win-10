:a
@echo off


mode con: cols=120 lines=62
color F
echo.
echo                                            
echo.
echo [93mRT Serial Checker 
echo.
echo.

echo [93mDisk
echo [93m========================[95m
wmic diskdrive get serialnumber
echo [93mMotherboard
echo [93m========================[95m
wmic baseboard get serialnumber
echo [93mSMBios
echo [93m========================[95m
wmic path win32_computersystemproduct get uuid
echo [93mRAM
echo [93m========================[95m
wmic memorychip get serialnumber
echo [93mBios
echo [93m========================[95m
wmic csproduct get uuid
echo [93mCPU
echo [93m========================[95m
wmic cpu get processorid
echo [93mMac 
echo [93m========================[95m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo [93mGPU 
echo [93m========================[95m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
pause

goto a