
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/simonsteele/pn/releases/download/v2.4.2/pn2421440_multilang.exe'
$url64      = 'https://github.com/simonsteele/pn/releases/download/v2.4.2/pn2421440_multilang.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url
  url64bit      = $url64

  softwareName  = 'programmers-notepad*'

  checksum      = ''
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs   = '/silent'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
