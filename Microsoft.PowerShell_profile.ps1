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

# --------- Git, Github ---------
Function gst { git status }

Function gbr { git branch $args }

Function gco { git checkout $args }

Function gcb { git checkout -b $args }
Remove-Item Alias:gcb -Force

Function gsw { git switch $args }

Function gll { git log --oneline}

Function gllg { git log --oneline --graph }

Function ga { git add $args }

Function gaa { git add . }

Function gcm { git commit -m $args }
Remove-Item Alias:gcm -Force

Function gca { git commit --amend -m $args }

Function gph { git push $args }

Function gpho { git push origin $args }

Function gpl { git pull $args }

Function gplo { git pull origin $args }

Function gmg { git merge $args }

Function gft { git fetch }

Function gcl { git clone $args }

Function gstash { git stash }

Function gitstashpop { git pop }

Function grs { git reset }

Function grao { git remote add origin $args}

# --------- yarn ---------
Function ycr { yarn create react-app $args}
Function ycrt { yarn create react-app $args --template typescript}
Function ys { yarn start }
Function yd { yarn run dev }
Function yb { yarn run build }
Function yt { yarn run test }
Function ya {
  $pattern = "yarn add"
  foreach ($package in $args) {
   $pattern += ' ' + $package
  }
  Invoke-Expression $pattern
}
Function yag {
  $pattern = "yarn add -g"
  foreach ($package in $args) {
   $pattern += ' ' + $package
  }
  Invoke-Expression $pattern
}
Function yad {
  $pattern = "yarn add --dev"
  foreach ($package in $args) {
   $pattern += ' ' + $package
  }
  Invoke-Expression $pattern
}
Function yr{
  $pattern = "yarn remove"
  foreach ($package in $args) {
   $pattern += ' ' + $package
  }
  Invoke-Expression $pattern
}
# --------- npm ---------
Function ni { npm install $args }
Remove-Item Alias:ni -Force
Function nig { npm install -g $args }
Function nid  { npm install $args }
Function nug { npm uninstall -g $args }
Function nu { npm uninstall $args }
Function ns { npm start }
Function nt { npm run test }
Function nb { npm run build }
Function nd { npm run dev }