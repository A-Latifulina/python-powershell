#Returns which services are currently running
Get-Service|Where-Object{$_.Status -eq "Running"}