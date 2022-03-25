Function Delete-AllExpiredcertificates{
    [CmdletBinding()]
    param (
        [Parameter()]
        [TypeName]
        $ParameterName
    )
    get-expiredcerts -store Cert:\LocalMachine\My -days $days | Remove-Item