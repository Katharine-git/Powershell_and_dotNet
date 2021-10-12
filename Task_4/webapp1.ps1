Import-Module  WebAdministration


$filepath ="C:\Users\Administrator\Documents\DotNetApp\Project_1\WebApplication1\bin\app.publish"
$websiteurl= "webapp1.com"
$websitename= "dotnetframeworkAssessment"

New-WebAppPool -Name $websitename -Force

New-Website -Name $websitename -Port 8090 -IPAddress * -HostHeader $websiteurl -PhysicalPath $filepath -ApplicationPool $websitename -Force



New-WebBinding -Name "$websitename" -IPAddress "*" -Port 8090 -Protocol http
