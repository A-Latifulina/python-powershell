
#install OpenSSH
powershell.exe -ExecutionPolicy Bypass -File install-sshd.ps1

# Start the sshd service
Start-Service sshd
Start-Service ssh-agent

get-service sshd
get-service ssh-agent

Get-NetFirewallRule -Name *ssh*
New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Inbound -Action Allow -DisplayName SSH
New-NetFirewallRule -Protocol TCP -LocalPort 22 -Direction Outbound -Action Allow -DisplayName SSH

stop-service sshd
stop-service ssh-agent



