$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\TeamViewerQS.exe"
  url                    = 'https://download.teamviewer.com/download/TeamViewerQS.exe'
  checksum               = '432d8b34169f8ab771a2ad227e5f6fb5bed340a5ecafc0ef4517c339b9f69131'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
