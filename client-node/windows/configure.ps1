$wc = New-Object Net.WebClient

$wc.DownloadString('https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1') > .\ConfigureRemotingForAnsible.ps1

.\ConfigureRemotingForAnsible.ps1 -ForceNewSSLCert true
