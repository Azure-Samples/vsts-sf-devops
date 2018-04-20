$path = "$Env:SYSTEM_DEFAULTWORKINGDIRECTORY" + "\src\TesteBuild\testBuildSF\ApplicationPackageRoot\SampleWebAppPkg\ServiceManifest.xml"

(Get-Content $path).replace('MyContainer', $Env:SFImageName) | Set-Content $path

Get-Content $path
