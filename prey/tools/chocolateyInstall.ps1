#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.11.0/prey-windows-1.11.0-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.11.0/prey-windows-1.11.0-x64.msi'
  checksum               = '3d0036a180fb5577dbf5f348955f518c7f05a6b8bcebfafe17a4eed9e2f89c09'
  checksum64             = 'cc8896e9914bbd79f5b8f2c4fbe199acbde896e55766148bc5c6fbf35ca55ab7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
