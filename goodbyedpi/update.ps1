import-module au

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
	    "(?i)(^\s*SpecificFolder\s*=\s*`"goodbyedpi-)(.*)(\/x86\$subfolder`")" = "`$1`"$($Latest.Version)`"`$3"
        }
    }
}

function global:au_GetLatest {
    $release = curl -UseBasicParsing "https://api.github.com/repos/ValdikSS/GoodbyeDPI/releases/latest?client_id=$env:GITHUB_CLIENT_ID&client_secret=$env:GITHUB_CLIENT_SECRET" | ConvertFrom-Json
	
	@{
        URL32   = $release.assets.browser_download_url
        Version = $release.tag_name
    }
}

update
