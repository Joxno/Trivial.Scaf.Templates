if($null -ne $ScafWorkspace)
{
    $DefaultConfig = Get-Content "$PSScriptRoot\default-config.json" -Raw;
    scaf workspace configure data add "csharp" $DefaultConfig;
    Write-Host "Configured workspace with default settings";
}
else
{
    Write-Host "No workspace found. Please create a workspace with 'scaf init workspace'";
}