echo "Run on cftest" 
echo "==>>> sc stop vless80 && sc enable apache2 && sc start apache2"

T:
cd T:\TDrive\A0C8\sync\src\CloudflareSpeedTest\RunThis\

rem test with ip.txt
CloudflareST.exe -n 2048 -t 19 -tl 200 -sl 5 -url https://cftest.para.pub/nb/parapub.bin

rem Test IP range
rem CloudflareST.exe -ip 192.203.230.0/24 -n 1000 -t 20 -tl 200 -sl 5 -url https://cftest.para.pub/nb/parapub.bin

echo "Finished, need run on cftest"
echo "==>>> sc stop apache2 && sc disable apache2 && sc start vless80"
echo "And edit hosts"
echo "==>>> code C:\Windows\System32\drivers\etc\hosts"

pause
