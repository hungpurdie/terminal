$userName = $env:UserName
$pathConfig = "D:\Documents\PowerShell\Config"
function configTheme() {
        $pathTheme = "D:\Documents\PowerShell\Modules\oh-my-posh"
        $versions = Get-ChildItem -Path $pathTheme
        foreach($item in $versions) {
            Copy-Item "$($pathConfig)\night-owl.omp.json" -Destination "$($item)\themes"         
        }
        Write-Host "Config theme in terminal succesfully"
}

configTheme

function configTerminal() {
    
    $pathDestination = "C:\Users\$($userName)\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
    Copy-Item "$($pathConfig)\settings.json" -Destination $($pathDestination)
    Write-Host "Config setting terminal succesfully"
}

configTerminal
