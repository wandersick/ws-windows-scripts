:: Change folder path below to a desired folder where this script will apply the change

set folderPath=d:\home\staff

:: For each sub-folder, i.e. user:

for /f "usebackq tokens=* delims=" %%i in (`dir /a /b "%folderPath%\*"`) do (
	takeown /A /R /F "%folderPath%\%%i" /D y
	cacls "%folderPath%\%%i" /E /T /G %%i:F
)

:: Sample execution:

:: - takeown /A /R /F "d:\home\staff\chris" /D y
:: - cacls "E:\home\staff\chris" /E /T /G chris:F

pause
