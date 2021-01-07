
```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JLAMf'))
```

File: README.TXT for Windows 10 Debloat tool GUI / Debloater (v1.3) from www.BenchTweakGaming.com
Based on farag2 Windows 10 Sophia Script v5.2 (Nov 11, 2020): https://github.com/farag2/Windows-10-Sophia-Script

Link: https://benchtweakgaming.com/2020/10/10/windows-10-debloat-tool/
Video Walkthrough on YouTube: https://www.youtube.com/watch?v=YB6kcVnxVx4

Our other version of Windows10Debloat: http://freetimetech.com/windows-10-clean-up-debloat-tool-by-ftt/


INTRODUCTION
------------
Please read this document to understand how to use this program.

This program create a PowerShell script file that you can run to tweak/'Debloat' Windows 10 based on farag2 
Windows 10 Sophia Script.

The options are arranged in different tabs and there is a Default preset in the Options menu. You can choose 
the Default preset first and then add your own choices. You can also create your own radiobutton presets and 
share. There is also a ‘Opposite’ menu choice to select the alternate radiobutton choices. This is good to 
revert the changes into a script to run. 

UPDATE v1.3: Updated for farag2 Sophia Script v5.2 (Nov 11, 2020).

UPDATE v1.2: For more information about a option, place your mouse cursor over the radiobutton for a ToolTip.
A ToolTip is a balloon message popup that shows when you rest your mouse cursor over each radiobutton. 
ToolTip in English.

UPDATE v1.1: You can directly run the PowerShell script from the program after creating your script. Click the 
‘Run Powershell’ button after you fill in the radiobutton choices and click the ‘Output PowerShell’ button. 
The “Run PowerShell” button creates a PowerShell script called ‘Sophia.ps1’ in the same directory and 
runs it.

OR save the PowerShell script as ‘Sophia.ps1’ with the other files (see heading FILES below) and run it using 
the following commands.

Launch PowerShell (Run as administrator) and navigate to where your script is.


1. Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
2. ./Sophia.ps1

FILES
-----
There needs to be 7 files and 8 folders for this program to run properly.

►Windows10Debloat.exe :	The GUI program.
►data.txt : 		Contains the options (function names) to select from (usually only 2 options that 
			something is Enable or Disable or ‘LeaveAlone’). Notice the sections ‘<#something#>’ 
			and how a comma separate the function commands. The last command option in each 
			section does not have a comma. Add or substract from the set.
►default.txt : 		Contains Default preset. Click this preset from Option menu in program.
►tooltip.txt :		Contains ToolTips for each radiobutton option. In English.
►README.txt : 		This documentation.

The rest of the files are from farag2 github
---------------------------------------------
►Sophia-ORIGINAL.ps1 :	farag2 Original Windows PowerShell Script. Rename it back to 'Sophia.ps1' if you want original script. 
►Sophia.psd1 :		farag2 Windows PowerShell Data File
►Sophia.psm1 :		farag2 Windows PowerShell Script Module

The folders are localized language files for prompts during the PowerShell execution each with a PowerShell Data File 'Sophia.psd1'
------------------------------------------------------------------------------------
►cn-CN
►de-DE
►en-US
►fr-FR
►it-IT
►ru-RU
►tr-TR
►uk-UA
