
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/dapr/cli/releases/download/v1.8.0/dapr_windows_amd64.zip'
$checksum64    = '9c6c9737f60d3e607f26e93008cf217ae285b36dc1bb3d3b9ef1258c3f7679cd'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
