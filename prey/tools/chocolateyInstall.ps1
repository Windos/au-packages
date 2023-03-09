#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.11.1/prey-windows-1.11.1-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.11.1/prey-windows-1.11.1-x64.msi'
  checksum               = 'd2b2802a4d02129e7e9606c5e692512e2f02ce5ef51cce5a11ca11adf2d544e9'
  checksum64             = '25c040b880fb545c19c0aabe9bc05f54565cb6ac6ebf886b92b259d49538c850'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
