
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url           = 'https://github.com/dapr/cli/releases/download/v1.8.1/dapr_windows_amd64.zip'
$checksum64    = '1de00aae222adcbeee878b37ed2451de5f6470b4e94fdf04bcbb94a554c17bec'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $toolsDir -checksum64 $checksum64 -checksumType64 $checksumType64
