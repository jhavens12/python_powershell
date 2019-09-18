While ($True) {

$User = Read-Host -Prompt 'What is the username?'
Write-Host "Student: first 3 of first name, last name + 123"
Write-Host "Teacher: first initial, last name + 123"
$Password = Read-Host -Prompt 'What is the new password?'

#Get-ADUser -Identity $User -Properties * | Select-String -Pattern "GivenName"

Set-ADAccountPassword -Identity $User -Reset -NewPassword (ConvertTo-SecureString -AsPlainText $Password -Force)

Write-Host ""
Write-Host "Finished!"
Write-Host ""
}


#Write-Host "Press enter to exit"
#$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

####
# Write-Host "User: '$User' "
# Write-Host "Password:  '$Password'"
# NEWDEFAULTPW = first_name[:3].lower() + last_name.lower() + "123"
