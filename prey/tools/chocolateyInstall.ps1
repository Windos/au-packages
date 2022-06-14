#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.10.5/prey-windows-1.10.5-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.10.5/prey-windows-1.10.5-x64.msi'
  checksum               = 'bc5d05b331769cc93d4128085d33abab5161d48c727ec5b9ad127129e4493047'
  checksum64             = 'dce6b7cc5c652fabe45a4bf0ffb1d109d2f9187c275f2cc04612ac27b8805494'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
