param($Name, $Output)

dotnet new razorclasslib -n $Name -o (Join-Path $Output $Name)
Get-ChildItem (Join-Path $Output $Name) | where { $_.Extension -ne ".csproj" } | Remove-Item -Recurse -Force
dotnet sln add (Join-Path $Output $Name)

. $PSScriptRoot/New-FolderStructure.ps1 -Output (Join-Path $Output $Name)