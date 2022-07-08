import-module au

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
			"(?i)(^\s*FileType\s*=\s*)('.*')"   = "`$1'$(if ($Latest.URL32 -match '\.msi$') { 'msi' } else { 'exe' })'"
			"(?i)(^\s*SilentArgs\s*=\s*)('.*')"   = "`$1'$(if ($Latest.URL32 -match '\.msi$') { '/qn /norestart' } else { '/S' })'"
        }
    }
}

function global:au_GetLatest {
	$versions = [ordered]@{}

	(curl -UseBasicParsing "https://api.github.com/repos/chris2511/xca/releases?client_id=$env:GITHUB_CLIENT_ID&client_secret=$env:GITHUB_CLIENT_SECRET" | ConvertFrom-Json) | ? { #filter out nuspec-noncompatible versions. Filter is applied here, and not in foreach because it is needed immediately in next sort
		try {
			[version]($_.tag_name -replace '^RELEASE\.','')
		}
		catch {
		}
	} | % { # sort can't be used there because
        # Order      $versions         releases
        # -----      ---------         --------
        # Descending in order          [x] older release overwrite newer
        # Asscending [x] reverse order newer release overwrite older
		$version = [version]($_.tag_name -replace '^RELEASE\.','')
		$version = $version.major, $version.minor -join '.'
		if (!$versions[$version]) {
		
		$url = ($_.assets | where {$_.name -match '\.(msi|exe)$'}).browser_download_url

		if ($url) { $versions[$version] = @{ # append to external $versions variable since powershell does not reduce well, because in powershell it is possible for hashtable to have items with same names
			# foreach create hashtables like
			# Name                           Value                                                                                                 
			# ----                           -----                                                                                                 
			# 0.25                           {URL32, Version}                                                                                      
			# 0.25                           {URL32, Version}                                                                                      
			# 0.24                           {URL32, Version}                                                                                      
			# 0.23                           {URL32, Version}                                                                                      
			# 0.22                           {URL32, Version}                                                                                      
			# 0.22                           {URL32, Version}                                                                                      
			# 0.22                           {URL32, Version}                                                                                      
			# 0.21                           {URL32, Version}
			# with nested values
			# Name                           Value                                                                                                 
			# ----                           -----                                                                                                 
			# URL32                          0.25.1                                                                                                
			# Version                        https://github.com/LongSoft/UEFITool/releases/download/0.25.1/UEFITool_0.25.1_win32.zip               
			# URL32                          0.25.1                                                                                                
			# Version                        https://github.com/LongSoft/UEFITool/releases/download/0.25.1/UEFITool_0.25.1_win32.zip
			URL32 = $url
			Version = $_.tag_name -replace '^RELEASE\.',''
		} } }
	}

	@{Streams = $versions}
}

update
