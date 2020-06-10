$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/A/E/7/AE743F1F-632B-4809-87A9-AA1BB3458E31/DXSDK_Jun10.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'Microsoft*DirectX*SDK*June 2010*'

  checksum      = '9F818A977C32B254AF5D649A4CEC269ED8762F8A49AE67A9F01101A7237AE61A'
  checksumType  = 'sha256'

  silentArgs   = '/U'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs