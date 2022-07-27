#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.10.9/prey-windows-1.10.9-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.10.9/prey-windows-1.10.9-x64.msi'
  checksum               = '5e7d22d9a0ea3e8fb1ab84801686f287b4cf7bf7a4a923fca139054afc06068f'
  checksum64             = '50669b0cdd372f1035af775fb676a345132a0646ba82162ac4fda21633990bcc'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
