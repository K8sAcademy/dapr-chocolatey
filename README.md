# dapr-chocolatey
Chocolatey package for the Dapr CLI

Here are the step to build the package

#### edit the doctl.nuspec file
Change the version number

#### edit the chocolateyinstall.ps1 file
Get the download link and the sha256 from the Dapr Github repo and replace them in the file.  Make sure to get the info for the Windows 64bit version.

#### create the package
choco pack

#### test locally
choco install dapr -dv -s .

#### login
choco apikey --key [yourKey] --source https://push.chocolatey.org/

#### push the package
choco push [package].nupkg --source https://push.chocolatey.org/