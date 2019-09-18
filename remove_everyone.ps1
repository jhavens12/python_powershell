foreach($line in [System.IO.File]::ReadLines("C:\bin\Backups\dirs.txt"))
{

	echo $line
	Get-NTFSAccess -Path $line
	PAUSE
	Remove-NTFSAccess -AccessRights FullControl -Account Everyone -Path $line -AccessType Deny -AppliesTo ThisFolderSubfoldersAndFiles
	Remove-NTFSAccess -AccessRights FullControl -Account Everyone -Path $line -AccessType Allow -AppliesTo ThisFolderSubfoldersAndFiles -PassThru

	PAUSE
	Clear-Host
}

PAUSE
