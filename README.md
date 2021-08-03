# Installing oh-my-posh

- Run script

```
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name Terminal-Icons -Repository PSGallery
```

# Modify the PowerShell profile

- Cấu hình Powershell file: `notepad $profile`
- Dán đoán mã sau vào

```
Import-Module Terminal-Icons
Import-Module oh-my-posh
Set-PoshPrompt -Theme agnoster
```

# Install fonts with support for the glyphs

1. [NerdFonts](https://www.nerdfonts.com/)

   - **Ex**: [FiraCode NerdFont](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)

2. [Cascadia Code](https://github.com/microsoft/cascadia-code)
3. Mở Windows Terminal or Windows Terminal Preview và vào settings(`ctrl+,`)
4. Open JSON file
5. **List command line**

```
list": [
      {
        "backgroundImage": "D:\\Documents\\PowerShell\\background\\a.jpg",
        "backgroundImageOpacity": 0.40000000000000002,
        "colorScheme": "CodingPhase",
        "commandline": "pwsh.exe -NoLogo",
        "experimental.retroTerminalEffect": false,
        "hidden": false,
        "icon": "D:\\Documents\\PowerShell\\icon\\2.png",
        "name": "PowerShell",
        "startingDirectory": "C:\\Users\\Root\\Desktop",
        "suppressApplicationTitle": false,
        "tabTitle": "Terminal"
      },
    ]
```

6. **Setting**

```
"copyFormatting": "none",
  "copyOnSelect": true,
  "defaultProfile": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
  "focusFollowMouse": true,
  "initialCols": 90,
  "initialRows": 20,
  "profiles": {
    "defaults": {
      "cursorHeight": 16,
      "cursorShape": "vintage",
      "fontFace": "FiraCode Nerd Font Mono Retina",
      "fontSize": 18
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
      "name": "CodingPhase",
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

8. **Configuration agnoster theme**

- Mở terminal và cd đến thư mục lưu trữ module `oh my posh`
  - Trên thiết bị của tôi: `D:\Documents\PowerShell\Modules\oh-my-posh\3.150.2\themes`
- Tiếp theo gõ vào lệnh: `notepad .\agnoster.omp.json`
- Dán đoạn mã này vào:

```
{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "blocks": [
    {
      "type": "prompt",
      "alignment": "left",
      "segments": [
        {
          "type": "text",
          "style": "plain",
          "properties": {
            "prefix": "🦄",
            "text": ""
          }
        },
        {
          "type": "executiontime",
          "style": "powerline",
          "powerline_symbol": "\uE0B0",
          "foreground": "#ffffff",
          "background": "#83769c",

          "properties": {
            "always_enabled": true,
            "prefix": " \uF017 "
          }
        },
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
            "style": "agnoster_short"
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
          "foreground": "#f7630c",
          "properties": {
            "prefix": "\uFC0C",
            "text": ""
          }
        }
      ]
    }
  ],
  "final_space": true,
  "console_title": true,
  "console_title_style": "template",
  "console_title_template": "{{ .Shell }} in {{ .Folder }}"
}

```

9. **Successful**

![Imgage](https://github.com/nmhung2022/CustomizeWindowsTerminal/blob/main/a.png?raw=true)
