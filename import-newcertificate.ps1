Function import-newcertificate{
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]$location,
        [string]$store,
        [string]$certlocation
    )
    Import-Certificate -FilePath $certlocation -CertStoreLocation Cert:\$location\$store\
}