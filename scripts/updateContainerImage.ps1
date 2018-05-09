$path = "$Env:BUILD_ARTIFACTSTAGINGDIRECTORY" + "\applicationpackage\ASPNETSampleAppPkg\ServiceManifest.xml"

[xml]$XmlDocument = Get-Content -Path $path

$CurrentContainerName = $XmlDocument.ServiceManifest.CodePackage.EntryPoint.ContainerHost.ImageName

(Get-Content $path).replace($CurrentContainerName, $Env:SFImageName.ToLower()) | Set-Content $path

Get-Content $path
