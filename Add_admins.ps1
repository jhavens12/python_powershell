foreach($line in [System.IO.File]::ReadLines("C:\bin\Backups\dirs.txt"))
{

	echo $line
	Get-NTFSAccess -Path $line
	PAUSE
	Add-NTFSAccess -Path $line -Account 'BUILTIN\Administrators', 'NT AUTHORITY\SYSTEM' -AccessRights FullControl -PassThru



	PAUSE
	Clear-Host
}

PAUSE
