# Installing oh-my-posh

* Run script 

```
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module posh-git -Scope CurrentUser -Force
```

# Modify the PowerShell profile

* Cấu hình Powershell file: `notepad $profile`
* Dán đoán mã sau vào
```
Import-Module Terminal-Icons
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme agnoster
```

# Install fonts with support for the glyphs
1. [NerdFonts](https://www.nerdfonts.com/)

    * **Ex**: [FiraCode NerdFont](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip)
3. [Cascadia Code](https://github.com/microsoft/cascadia-code)
4. Mở Windows Terminar or Windows Terminar Preview và vào settings(`ctrl+,`)
5. Open JSON file
6. **List command line**
```
list": [
      {
        "colorScheme": "codingphase",
        "commandline": "pwsh.exe -NoLogo",
        "guid": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
        "hidden": false,
        "icon": "D:\\Documents\\PowerShell\\icon\\1.png",
        "name": "PowerShell",
        "source": "Windows.Terminal.PowershellCore",
        "startingDirectory": "C:\\Users\\GG\\Desktop",
        "tabTitle": "Terminal"
      },
    ]
```

6. **Setting**
```
"copyFormatting": "none",
  "copyOnSelect": false,
  "defaultProfile": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
  "initialCols": 95,
  "initialRows": 20,
  "profiles": {
    "defaults": {
      "cursorHeight": 15,
      "cursorShape": "vintage",
      "fontFace": "FiraCode NF Retina",
      "fontSize": 16,
      "fontWeight": "bold"
    },
```
7. **Theme**
```
"schemes": [
    {
      "background": "#140725",
      "black": "#0C0C0C",
      "blue": "#0037DA",
      "brightBlack": "#767676",
      "brightBlue": "#3B78FF",
      "brightCyan": "#3A96DD",
      "brightGreen": "#0DF802",
      "brightPurple": "#B4009E",
      "brightRed": "#E74856",
      "brightWhite": "#CBF9F5",
      "brightYellow": "#C3CC1A",
      "cursorColor": "#0DF802",
      "cyan": "#3A96DD",
      "foreground": "#FFFFFF",
      "green": "#0DF802",
      "purple": "#881798",
      "name": "codingphase",
      "red": "#C50F1F",
      "selectionBackground": "#FFFFFF",
      "white": "#CBF9F5",
      "yellow": "#C3CC1A"
    },
    {
      "background": "#002B36",
      "black": "#23262E",
      "blue": "#0321D7",
      "brightBlack": "#BEC0C3",
      "brightBlue": "#03D6B8",
      "brightCyan": "#03D6B8",
      "brightGreen": "#8FD46D",
      "brightPurple": "#EE5D43",
      "brightRed": "#F92672",
      "brightWhite": "#C74DED",
      "brightYellow": "#FFE66D",
      "cursorColor": "#EE5D43",
      "cyan": "#03D6B8",
      "foreground": "#FFCA28",
      "green": "#8FD46D",
      "name": "Aurora",
      "purple": "#EE5D43",
      "red": "#F0266F",
      "selectionBackground": "#073642",
      "white": "#C74DED",
      "yellow": "#FFE66D"
    },
  ]
```
8. **Configuration agnoster  theme**
* Mở terminal và cd đến thư mục lưu trữ module `oh my posh`
    * Trên thiết bị của tôi: `D:\Documents\PowerShell\Modules\oh-my-posh\3.150.2\themes`
* Tiếp theo gõ vào lệnh: `notepad .\agnoster.omp.json`
* Dán đoạn mã này vào:
```
{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "blocks": [
    {
      "type": "prompt",
      "alignment": "left",
      "segments": [
        {
          "type": "path",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#100e23",
          "background": "#91ddff",
          "properties": {
            "enable_hyperlink": true,
            "home_icon": "\uF7DB",
            "folder_icon": "\uF115",
            "folder_separator_icon": " \uE0B1 ",
            "style": "agnoster"
          }
        },
        {
          "type": "git",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#193549",
          "background": "#95ffa4"
        },
        {
          "type": "exit",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#ffffff",
          "background": "#ff8080"
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "left",
      "newline": true,
      "segments": [
        {
          "type": "text",
          "style": "plain",
          "foreground": "#ffffff",
          "properties": {
            "prefix": " \uFC0C",
            "text": ""
          }
        }
      ]
    }
  ],
  "final_space": true
}

```
[]()


