
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/dapr/cli/releases/download/v1.9.5/dapr_windows_amd64.zip'
$checksum64    = '2b4c3f544741bdf7474a43fee0131909e42705f8df5654e20270def23a9fb3f5'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url64 $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
