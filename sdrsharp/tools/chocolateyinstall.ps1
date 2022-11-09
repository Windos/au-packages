$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://airspy.com/downloads/sdrsharp-x86.zip'
  url64bit               = 'https://airspy.com/downloads/sdrsharp-x64.zip'
  UnzipLocation          = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksum               = '475e5564b1d91c095e80cd84ab85718e88c9aea370add435c5203545d1b0d49a'
  checksum64             = '7d4c6a91d34839fa13af2d432ae7296864a53172c86c0e5c84464268b65a7c69'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
