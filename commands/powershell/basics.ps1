# set system environment variable permanently
setx {variable-name} "{variable-value}" /M

# check AD user's groups
Get-ADUser -Identity {username} | Get-ADPrincipalGroupMembership | Select-Object Name
## or 
gpresult /V

# force group policy update on a machine
## forces scripts to be reinitialized and settings like proxy, apps, configs to be re-applied
gpupdate /force
logoff
## for any clients - cache needs to be cleared

# services
## delete service
sc.exe delete {service-name}
## configure service account for service
sc.exe config {service-name} obj="{domain}\{account-name}" password="{password}"

# refresh variables in CURRENT powershell session
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")