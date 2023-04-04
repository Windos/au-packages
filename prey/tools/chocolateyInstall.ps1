#http://help.preyproject.com/article/188-prey-unattended-install-for-computers

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'prey'
  fileType               = 'msi'
  url                    = 'https://github.com/prey/prey-node-client/releases/download/v1.11.4/prey-windows-1.11.4-x86.msi'
  url64bit               = 'https://github.com/prey/prey-node-client/releases/download/v1.11.4/prey-windows-1.11.4-x64.msi'
  checksum               = 'cfb1a741e3138cd18398bc47e206307bfe633a36a43fe67b0f5faf361b43bc2b'
  checksum64             = 'a794b577f9f4e54e2b29e560eb92083293e3be6e05e98a3be097353e203dd94b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'prey*'
}
Install-ChocolateyPackage @packageArgs
