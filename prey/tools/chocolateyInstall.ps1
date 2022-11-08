#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.10.11/prey-windows-1.10.11-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.10.11/prey-windows-1.10.11-x64.msi'
  checksum               = '30e3310f10fd10ba04fdce0665ce03e5de2d02f458e6a9cb74b08b79aeb91af6'
  checksum64             = '4df529ba4c95828b10a3c18adfa8e4a30486aef144f6256726b29b97bfe45d6e'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
