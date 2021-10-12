Import-Module  WebAdministration


$filepath ="C:\Users\Administrator\Documents\DotNetApp\Project_1\TellMeAJoke\bin\Debug\netcoreapp3.1\publish"
$websiteurl= "coreJokeApp.com"
$websitename= "dotnetcore"

New-WebAppPool -Name $websitename -Force

New-Website -Name $websitename -Port 8090 -IPAddress * -HostHeader $websiteurl -PhysicalPath $filepath -ApplicationPool $websitename -Force



New-WebBinding -Name "$websitename" -IPAddress "*" -Port 8090 -Protocol http
