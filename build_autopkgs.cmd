rem install Gecode x86
rem xcopy /S  "c:\Program Files (x86)\Gecode" Gecode_x86
rem uninstall Gecode x86
rem install Gecode x64
rem xcopy /S  "c:\Program Files\Gecode" Gecode_x64
rem uninstall Gecode x64
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode.autopkg
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode-vc100.autopkg
