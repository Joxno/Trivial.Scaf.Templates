param($Output)

@("interfaces", "models", "services", "repositories") | % { New-Item -Path (Join-Path $Output $_) -ItemType Directory -Force }