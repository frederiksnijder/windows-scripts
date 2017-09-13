@echo off
REM ============= change directory to arguments directory =======================================
chdir %~dp1


REM ============= set variables =======================================
SET exec=D:\portable_programs\ImageMagick-6.9.0-5\convert.exe
SET res=700
SET i=0



REM ============= echo variables =======================================
echo "Resolution x: %res%pixels"
echo "Folder to convert: %~dp1"
echo.



REM ============= give user option to cancel batch =======================================
echo "Correct? Use CTRL+C to cancel"
pause > nul



REM ============= loop over directory =======================================
mkdir lowres
for %%I in (*) do %exec% %%I -resize %res% lowres/%%~nI%%~xI & set /a i+=1
echo.
echo "%i% file(s) processed"
echo "Hit a key to quit"
pause > nul