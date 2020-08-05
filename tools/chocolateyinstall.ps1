$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Logitech G HUB'

  checksum      = '9C6315224B9ED28FF5DAC85EA2E5A120066F1611ED9ED46A4C4BFBA036B1A389'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'


  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs