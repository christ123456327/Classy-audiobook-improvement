@echo off
setlocal
rem Run from this file's own folder so the Gradle wrapper is found from any working directory
pushd "%~dp0"
call gradlew.bat assembleY2Debug testY2DebugUnitTest
set "RESULT=%errorlevel%"
if not "%RESULT%"=="0" (
  echo.
  echo Build or unit tests failed. See the Gradle output above.
  popd
  exit /b 1
)
echo.
echo Y2 debug APK:
echo app\build\outputs\apk\y2\debug\app-y2-debug.apk
popd
endlocal
