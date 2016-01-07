# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop'; # stop on all errors

$packageArgs = @{
  packageName   = 'roaming-ext-vs2015'
  vsixUrl       = 'https://visualstudiogallery.msdn.microsoft.com/7b421a95-c32c-4433-a2be-a41b276013ab/file/172117/2/RoamingExtensionManager.vsix'
  vsVersion     = 14
  checksum      = '8c94418122d70d30d4cba05ca87d1a21b5be7a69'
  checksumType  = 'sha1'
}

## Install Visual Studio Package
Install-ChocolateyVsixPackage @packageArgs
