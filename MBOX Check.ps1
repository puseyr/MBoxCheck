$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://exchange.server.net/PowerShell/ -Authentication Kerberos -Credential $UserCredential
Import-PSSession $Session

[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')

$title = 'User E-Mail'
$msg   = 'Enter user E-Mail:'

$email = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)

get-mailbox $email | FL defaultPublicFolderMailbox