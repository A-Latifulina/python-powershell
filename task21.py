import nmap
nmScan = nmap.PortScanner()

#UDP scan = lines 6-31 

#UDP scan is executed
nmScan.scan('127.0.0.1', '22-443','-sU')

#Prints open UDP ports
print('Open Ports: ',nmScan['127.0.0.1']['udp'].keys())

#Prints all hosts
print('All hosts: ',nmScan.all_hosts())

#Prints host name
print('Host Name: ',nmScan['127.0.0.1'].hostname())

#Prints host state as up or down
print('Host State: ',nmScan['127.0.0.1'].state())

#Prints protocol used
print('Protocol: ',nmScan['127.0.0.1'].all_protocols())

#Prints scan method and ports/services
print('Scan Info: ',nmScan.scaninfo())

#Print input for the command prompt
print('Command Line: ',nmScan.command_line())

#Format output as csv
print('Output Format: ',nmScan.csv())

#####

#TCP scan = lines 35-59

#TCP scan is executed
nmScan.scan('127.0.0.1', '22-443','-sS')

#Prints open UDP ports
print('Open Ports: ',nmScan['127.0.0.1']['tcp'].keys())

#Prints all hosts
print('All hosts: ',nmScan.all_hosts())

#Prints host name
print('Host Name: ',nmScan['127.0.0.1'].hostname())

#Prints host state as up or down
print('Host State: ',nmScan['127.0.0.1'].state())

#Prints protocol used
print('Protocol: ',nmScan['127.0.0.1'].all_protocols())

#Prints scan method and ports/services
print('Scan Info: ',nmScan.scaninfo())

#Format output as csv
print('Output Format: ',nmScan.csv())

