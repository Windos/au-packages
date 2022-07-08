$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://github.com/chris2511/xca/releases/download/RELEASE.2.4.0/xca-2.4.0.msi'
  checksum               = '3479fe69feed931ce4e8a9945c6cc30b0f1a947980a2288fdbdd7faf1d78ec59'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
