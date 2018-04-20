$path = "$Env:SYSTEM_DEFAULTWORKINGDIRECTORY" + "\src\TesteBuild\testBuildSF\ApplicationPackageRoot\SampleWebAppPkg\ServiceManifest.xml"

$CurrentContainerName = $XmlDocument.ServiceManifest.CodePackage.EntryPoint.ContainerHost.ImageName

(Get-Content $path).replace($CurrentContainerName, $Env:SFImageName) | Set-Content $path

Get-Content $path
