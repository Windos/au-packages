#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.11.3/prey-windows-1.11.3-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.11.3/prey-windows-1.11.3-x64.msi'
  checksum               = 'e932b76a604a57b081c2385e6a122915d27afc486f286489dff32e6dd57df744'
  checksum64             = '4470cc202279c03069dc05ef40cc3f307f55a4155df7cfea554fab39bc798dc0'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
