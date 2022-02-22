#self signing 
$selfcert = New-SelfSignedCertificate -CertStoreLocation Cert:\LocalMachine\My -DnsName "AdelyaCertCYB"

#8DC7EA685B4A984356B39F629557A3AFF7D46AD9  CN=AdelyaCert

$rootstore = [System.Security.Cryptography.X509Certificates.X509Store]::new("Root", "LocalMachine")
$rootstore.Open("ReadWrite")
$rootstore.Add($selfcert)
$rootstore.Close()

$publishstore = [System.Security.Cryptography.X509Certificates.X509Store]::new("TrustedPublisher", "LocalMachine")
$publishstore.Open("ReadWrite")
$publishstore.Add($selfcert)
$publishstore.Close()

$codecertificate = Get-ChildItem Cert:\LocalMachine\My |Where-Object{$_.Subject -eq "CN=AdelyaCertCYB"}

$codecertificate

Set-AuthenticodeSignature -FilePath .\task11.ps1 -Certificate $codecertificate -TimestampServer http://timestamp.digicert.com


