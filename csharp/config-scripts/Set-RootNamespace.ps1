param($Namespace)

if($null -ne $ScafWorkspace)
{
    if($null -ne $ScafWorkspace.csharp)
    {
        $ScafWorkspace.csharp.RootNamespace = $Namespace;
        scaf workspace configure data add "csharp" ($ScafWorkspace.csharp | ConvertTo-Json);
        Write-Host "Configured csharp settings with root namespace: $Namespace";
    }
    else
    {
        Write-Host "No csharp configuration found. Please run 'scaf csharp init' to setup default csharp settings";
    }
}
else
{
    Write-Host "No workspace found. Please create a workspace with 'scaf init workspace'";
}