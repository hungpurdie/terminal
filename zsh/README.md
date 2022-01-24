# config zsh & zimfw

1. .zimrc

   `zmodule spaceship-prompt/spaceship-prompt --name spaceship`

2. .zshrc

```
#
#Node Vesion Manager
#
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#
#Alias
#
alias cls='clear'
webmtomp4() {
  output=$(echo $1 | sed "s/webm/mp4/g")
  ffmpeg -i $1 -preset ultrafast $output -hide_banner
}
```

# Extension GNOME

1. `Clipboard Indicator by Tudmotu`
2. `Dash to Dock by michele_g`
3. `Net speed Simplified by prateeksu`
4. `User Themes by fmuellner`

# Themes & Icon

1. Icon

   - `Tela blue dark`

2. Theme

   - `Orchis-green-dark`

3. Shell

   - `Orchis-green-dark`

# App

1. ULancher
2. Cheese
