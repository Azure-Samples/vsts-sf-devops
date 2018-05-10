$path = "$Env:BUILD_ARTIFACTSTAGINGDIRECTORY" + "\GePApplication\content\_PublishedWebsites\WebApplication1\Web.config"

[xml]$XmlDocument = Get-Content -Path $path

$obj = $XmlDocument.configuration.appSettings.add | where {$_.Key -eq 'BuildNumber'}

$obj.value = $Env:BUILD_BUILDID

Set-Content $path
