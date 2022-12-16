
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/dapr/cli/releases/download/v1.9.1/dapr_windows_amd64.zip'
$checksum64    = '3fa211179ae0924fefdf969abb83731abdbd463f4c5ef6abf9fb81802efdcefe'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url64 $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
