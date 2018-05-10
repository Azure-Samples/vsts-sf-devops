git branch -r | findstr /v "\->" |  ForEach-Object {$br=$_.TrimStart(); git branch --track $br.TrimStart("origin/") $br}
$repoName = "$env:BUILD_REPOSITORY_NAME".split('/')[1]
$repoUri = "$env:SYSTEM_TEAMFOUNDATIONCOLLECTIONURI".Substring(8)+ "_git/$repoName"
git remote add vsts "https://$env:SYSTEM_ACCESSTOKEN@$repoUri"
git branch -r | findstr /v "\->" |  ForEach-Object { $br=$_.TrimStart("  origin/"); git push -u vsts $br }
