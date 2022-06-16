#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.10.6/prey-windows-1.10.6-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.10.6/prey-windows-1.10.6-x64.msi'
  checksum               = 'ef12348317c23f1e5adad5ce811de30c3f3eaeb154bfe73987ae796cd89dd237'
  checksum64             = 'b2c7372d4e7ec98a9dd5c7c68299dea92066fd7574532c903181043d74b0ccc7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
