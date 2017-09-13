
@echo off
echo Press a key to initiate the render process.
pause > nul
:: Batch render
:: Always specify the render engine flag and check the maya version
:: "C:\Program Files\Autodesk\Maya2016.5\bin\Render.exe" -r vray "D:\path\to\project\directory\scene_name.mb" -log "D:\path\to\project\directory\logfile_name.txt"
:: "C:\Program Files\Autodesk\Maya2016.5\bin\Render.exe" -r arnold "D:\path\to\project\directory\scene_name.mb" -log "D:\path\to\project\directory\logfile_name.txt"
"C:\Program Files\Autodesk\Maya2016.5\bin\Render.exe" -r redshift "D:\path\to\project\directory\scene_name.mb"
echo.
echo.
echo Batch ended.
pause > nul