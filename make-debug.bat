SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\MCME-Rohan-DEBUG mkdir %newDir%\MCME-Rohan-DEBUG
del %newdir%\MCME-Rohan-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\MCME-Rohan-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\MCME-Rohan-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\MCME-Rohan-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-Aural-Experience\src\main\pack\*.* %newDir%\MCME-Rohan-DEBUG\assets\minecraft
