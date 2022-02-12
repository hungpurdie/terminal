$userName = $env:UserName
$pathConfig = Get-Location
function configTheme() {
        $pathTheme = "C:\Users\$($userName)\.oh-my-posh"
        Copy-Item "$($pathConfig)\config\night-owl.omp.json" -Destination "$($pathTheme)\themes"
        Write-Host "Config theme in terminal succesfully"
}
configTheme

function configTerminal() {

    $pathDestination = "C:\Users\$($userName)\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
    Copy-Item "$($pathConfig)\config\settings.json" -Destination $($pathDestination)
    Write-Host "Config setting terminal succesfully"
}
configTerminal

function configPowerShell() {
    $pathProfilePWShell = "D:\Documents\PowerShell"
    Copy-Item "$($pathConfig)\Microsoft.PowerShell_profile.ps1" -Destination $($pathProfilePWShell)
    Write-Host "Config Profile PowerShell in terminal sccesfully"
}
configPowerShell