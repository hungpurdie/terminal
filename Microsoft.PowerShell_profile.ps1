Import-Module "Oh-My-Posh" -DisableNameChecking -NoClobber
Set-PoshPrompt -Theme night-owl
Clear-Host

#open notepad
Set-Alias -Name np -Value C:\Windows\notepad.exe -Force -Option AllScope

# new file
Function touch {
  foreach ($fileName in $args) { 
  $pattern = "New-Item " + $fileName + " -ItemType File"
  Invoke-Expression $pattern
  }
}

# ffmepg
Function webmtomp4 {
   Param([string]$InputFileName)
   $outFileMp4 = $InputFileName.Replace(".webm", ".mp4")
   ffmpeg -i "$InputFileName" -preset ultrafast "$outFileMp4" -hide_banner
}