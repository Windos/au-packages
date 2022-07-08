$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'msi'
  SilentArgs             = '/qn /norestart'
  url                    = 'https://github.com/chris2511/xca/releases/download/RELEASE.2.3.0/xca-2.3.0.msi'
  checksum               = 'a3d2295af4720455f20c366bd5c2c5a50625abab97b0209618e8a1e3c3c71168'
  checksumType           = 'sha256'
}
Install-ChocolateyPackage @packageArgs
