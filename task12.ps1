#Creates txt file of services currently running
Get-Service|Where-Object{$_.Status -eq "Running"} >.\regularServices.txt

#Assigns running services file to variable
$regularServices=Get-Content .\regularServices.txt

#Creates txt file of hypothetical blacklist of services that begin with "Asus"
Get-Service "Asus*" >.\blacklistAsus.txt

#Assigns blacklist to variable
$blacklistAsus=Get-Content .\blacklistAsus.txt

#Compare regular services and blacklist
Compare-Object $regularServices $blacklistAsus -IncludeEqual