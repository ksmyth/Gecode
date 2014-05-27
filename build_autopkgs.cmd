start /wait msiexec /i %userprofile%\downloads\Gecode-3.7.3-x86-2010.msi /qn ALLUSERS=1
xcopy /S/I  "c:\Program Files (x86)\Gecode" Gecode_x86
start /wait msiexec /x %userprofile%\downloads\Gecode-3.7.3-x86-2010.msi /qn
start /wait msiexec /i %userprofile%\downloads\Gecode-3.7.3-x64-2010.msi /qn ALLUSERS=1
xcopy /S/I  "c:\Program Files\Gecode" Gecode_x64
start /wait msiexec /x %userprofile%\downloads\Gecode-3.7.3-x64-2010.msi /qn
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode.autopkg
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\gecode-vc100.autopkg
