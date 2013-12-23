SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\Rohan-DEBUG-BIOMES mkdir %newDir%\Rohan-DEBUG-BIOMES
del %newdir%\Rohan-DEBUG-BIOMES\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\Rohan-DEBUG-BIOMES
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\Rohan-DEBUG-BIOMES\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\Rohan-DEBUG-BIOMES\assets\minecraft
xcopy /y/s %oldDir%\MCME-Aural-Experience\src\main\pack\*.* %newDir%\Rohan-DEBUG-BIOMES\assets\minecraft
