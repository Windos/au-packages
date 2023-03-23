$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileFullPath           = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\TeamViewerQS.exe"
  url                    = 'https://download.teamviewer.com/download/TeamViewerQS.exe'
  checksum               = '2917f4154367fe6c649d3aba3e799eb95f17e207611049feca200c334c7d2094'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
