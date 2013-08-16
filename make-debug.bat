SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\Rohan-DEBUG mkdir %newDir%\Rohan-DEBUG
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\Rohan-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\Rohan-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\Rohan-DEBUG\assets\minecraft
pause
