@echo off
echo Downloading scripts to windows and linux...
timeout /t 5
if not exist "C:\Users\Administrator\Desktop\scripts\reset" mkdir C:\Users\Administrator\Desktop\scripts\reset
bitsadmin /transfer download_file /download /priority normal https://the.earth.li/~sgtatham/putty/latest/w32/plink.exe C:\Users\Administrator\Desktop\scripts\reset\plink.exe
bitsadmin /transfer download_file /download /priority normal https://github.com/thesraid/REST/blob/master/do_labs_windows/PsExec.exe?raw=true C:\Users\Administrator\Desktop\scripts\reset\PsExec.exe
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab1.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab1.bat
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab2.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab2.bat
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab3.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab3.bat
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab4.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab4.bat
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab5.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab5.bat
bitsadmin /transfer download_file /download /priority normal https://raw.githubusercontent.com/thesraid/REST/master/do_labs_windows/do_Lab6.bat C:\Users\Administrator\Desktop\scripts\reset\do_Lab6.bat
C:\Users\Administrator\Desktop\scripts\reset\plink.exe root@192.168.250.13 -pw Password1! "apt update && apt install python-pip -y && pip install termcolor && pip install urllib3 --upgrade && pip install requests --upgrade && mkdir /root/scripts/resetScripts && cd /root/scripts/resetScripts && wget https://raw.githubusercontent.com/thesraid/REST/master/USMA/add_sensor.py https://raw.githubusercontent.com/thesraid/REST/master/USMA/Analyst_Labs/analyst_lab1.py https://raw.githubusercontent.com/thesraid/REST/master/USMA/Analyst_Labs/analyst_lab2.py https://raw.githubusercontent.com/thesraid/REST/master/USMA/Analyst_Labs/analyst_lab4.py https://raw.githubusercontent.com/thesraid/REST/master/USMA/Analyst_Labs/analyst_lab5_ex2.py https://raw.githubusercontent.com/thesraid/REST/master/USMA/Analyst_Labs/analyst_lab5_ex3.py && chmod 777 *.py"
echo If there are errors make sure the folder C:\Users\Administrator\Desktop\scripts\reset exists
echo Script complete
pause
