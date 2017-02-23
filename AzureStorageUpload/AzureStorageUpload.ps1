[CmdletBinding()]
param()

Function FileUpload($Source, $Pattern, $Dest, $DestKey) {    

    # Begin Upload
    Write-Output "Uploading $source/$pattern"
    & "$PSScriptRoot\AzCopy\AzCopy.exe" /Source:$source /Dest:$Dest /DestKey:$DestKey /Pattern:$Pattern
}

Trace-VstsEnteringInvocation $MyInvocation
Try {           
	
    # Get values defined in task.json
    $Source = Get-VstsInput -Name Source -Require
    $Pattern = Get-VstsInput -Name Pattern -Require
    $Dest = Get-VstsInput -Name Dest
    $DestKey = Get-VstsInput -Name DestKey    

    write-output "Running file Upload"
    FileUpload $Source $Pattern $Dest $DestKey
}
Catch{
    Write-Error $_.Exception.ToString()
	exit 1
}    

Finally {
    Trace-VstsLeavingInvocation $MyInvocation
}
