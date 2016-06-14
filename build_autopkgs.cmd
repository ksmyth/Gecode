Setlocal EnableDelayedExpansion

msiexec.exe /i Gecode-4.4.0-x86-2015.msi /qn || exit /b !ERRORLEVEL!
xcopy /S/D  "c:\Program Files (x86)\Gecode" Gecode_x86\
msiexec.exe /x Gecode-4.4.0-x86-2015.msi /qn || exit /b !ERRORLEVEL!

msiexec.exe /i Gecode-4.4.0-x64-2015.msi /qn || exit /b !ERRORLEVEL!
xcopy /S/D  "c:\Program Files\Gecode" Gecode_x64\
msiexec.exe /x Gecode-4.4.0-x64-2015.msi /qn || exit /b !ERRORLEVEL!

powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode.autopkg || exit /b !ERRORLEVEL!
rem powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode-vc100.autopkg || exit /b !ERRORLEVEL!
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode-vc140.autopkg || exit /b !ERRORLEVEL!
