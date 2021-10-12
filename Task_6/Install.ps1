$list= @("IIS-WebServerRole", "IIS-WebServer", "IIS-CommonHttpFeatures", "IIS-ManagementConsole"," IIS-HttpErrors", "IIS-HttpRedirect","IIS-StaticContent" ,"IIS-DefaultDocument"," IIS-HttpCompressionStatic" ,"IIS-DirectoryBrowsing","NetFx4Extended-ASPNET45"
"IIS-ApplicationDevelopment", "NetFx4Extended-ASPNET45", "IIS-NetFxExtensibility45", "IIS-HealthAndDiagnostics", "IIS-HttpLogging", "IIS-LoggingLibraries", "IIS-RequestMonitor", "IIS-HttpTracing", "IIS-Security", "IIS-RequestFiltering", "IIS-Performance", "IIS-WebServerManagementTools",
"IIS-IIS6ManagementCompatibility", "IIS-Metabase", "IIS-ManagementConsole", "IIS-BasicAuthentication", "IIS-WindowsAuthentication", "IIS-WebSockets", "IIS-ApplicationInit", "IIS-ISAPIExtensions", "IIS-ISAPIFilter")


foreach($item in $list)
{
write-host $item
Enable-WindowsOptionalFeature -Online -FeatureName $item
}