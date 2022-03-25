function get-expiredcerts{
    param(
        [Parameter()]
        [string]$location,
        [string]$store,
        [int]$days
    )
    
    get-childitem Cert:\$location\$store | where-object {$_ -is [System.Security.Cryptography.X509Certificates.x509certificate2]`
         -and $_.NotAfter -lt (get-date).AddDays($days)} | Select-Object -Property FriendlyName, Thumbprint,NotAfter, PSParentPath
    }
