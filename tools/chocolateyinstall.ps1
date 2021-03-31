$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/A/E/7/AE743F1F-632B-4809-87A9-AA1BB3458E31/DXSDK_Jun10.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'Microsoft*DirectX*SDK*June 2010*'

  checksum      = '705271DC83BFEE54D9B94E028426E288D5F070784B7446D164F48ECFBB2A02CB'
  checksumType  = 'sha256'

  silentArgs   = '/U'
  validExitCodes= @(0, 1023)
}

Install-ChocolateyPackage @packageArgs
