#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.11.2/prey-windows-1.11.2-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.11.2/prey-windows-1.11.2-x64.msi'
  checksum               = 'e380257d0abd2532e32c62458c664f552cef5883585018e5a205aad4e4d9d5c5'
  checksum64             = '57c4986c4a46cc2a987a20f268116f9eb191d2203bebb5fc417fdba8156aa6c1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
