# My Windows Config

# My Terminal Setup

- [Wezterm](https://wezfurlong.org/wezterm/index.html)
- [Wezterm Config File](.wezterm.lua)

> The font is a custom Iosevka installation from [here](https://typeof.net/Iosevka/customizer). This is my build plan [here](./private-build-plans.toml).

# Window Manager Setup

- [GlazeWM](https://github.com/glzr-io/glazewm)
- [GlazeWM Config File](./config.yaml)

# TopBar Setup

- [Zebar](https://github.com/glzr-io/zebar)

To configure Zebar:

1. Copy [vanilla-clear](./vanilla-clear) widget to Zebar directory

```
cp ./vanilla-clear/ ~/.glzr/zebar/
```

2. Than disable other widgets in Zebar system tray.

### Old Zebar config

Zebar removed `.yaml` config in [v2.2.1](https://github.com/glzr-io/zebar/releases/tag/v2.2.1), but if you want, you can still use it: [Old Zebar Config](./zebar-config.yaml)

# Searching

- [Powertoys Run](https://learn.microsoft.com/en-us/windows/powertoys/run)

# Translucent Taskbar

- [TranslucentTB](https://apps.microsoft.com/detail/9pf4kz2vn4w9?hl=en-US&gl=US)

# Scoop

[scoop](https://scoop.sh) A command-line installer for Windows

## How to Install

Open a PowerShell terminal (version 5.1 or later) and from the PS C:\> prompt, run:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### Add Necessary Buckets

Scoop organizes applications into "buckets." While many common tools are in the default "main" bucket, some developer tools like mingw (which contains gcc and make) are often in other buckets, such as versions. It's a good practice to add common development buckets.

```powershell
scoop bucket add versions
scoop bucket add extras
scoop bucket add main
```

## How to use

```powershell
scoop update
scoop search [package_name]
scoop install [package_name]
scoop uninstall [package_name]
```

# Kanata

[kanata](https://github.com/jtroo/kanata) is a cross-platform software keyboard remapper for Linux, macOS and Windows. A short summary of the features:

- multiple layers of key functionality
- advanced key behaviour customization (e.g. tap-hold, macros, unicode)

This directory contains my personal Kanata setup, including the executable and configuration file.

## Key Files

- `kanata.exe`: The Kanata executable for Windows.
- `kanata.kbd`: My personal Kanata keybinding configuration file. This file defines custom layers, macros, and key behaviors.

## How to Use

To use this setup, run `kanata.exe --config kanata.kbd` from this directory or ensure `kanata.exe` is in your PATH and run it with the specified config file.

For more detailed information on Kanata and its configuration, please refer to the [official Kanata documentation](https://github.com/jtroo/kanata/blob/main/docs/README.md).

# Mactype

[mactype](https://mactype.net) is a font rendering program created by a Chinese developer named FlyingSnow, which replaces the ClearType used by default in Microsoft Windows.

- [github repo](https://github.com/snowie2000/MacType)

This directory contains custom MacType profiles (.ini files).

## Contents of the ini folder

The `ini` subdirectory contains the following profiles:
- `pretendard.ini`
- `spoqa_han.ini`

These files are MacType profiles tailored for specific fonts.

## How to use

1. If you have not yet installed MacType, download and install it from [mactype.net](https://mactype.net).
2. Copy the desired .ini files from the `ini` folder in this repository to the 'ini' directory within your MacType installation folder. (e.g., `C:\Program Files\MacType\ini`)
3. Run the MacType configuration program (MacType Wizard or MacType Control Panel).
4. Select one of the copied profiles and apply it.

# Starship

The minimal, blazing fast, and extremely customizable prompt for any shell!

- https://starship.rs
- Prerequisites: A Powerline font installed and enabled in your terminal.

## How to Install

```powershell
scoop install starship
```

Add `Invoke-Expression (&starship init powershell)` to the end of your PowerShell `$PROFILE`.


## Config File Location

```
~/.config/starship.toml
```

# Neovim

This directory is for managing personal Neovim settings based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Clone kickstart.nvim, include it in this repository, and use it by adding or modifying settings to suit your personal needs.
The actual Neovim configuration files (`init.lua`, etc.) will be located in Neovim's standard configuration path (e.g., `~/.config/nvim` or `%LOCALAPPDATA%\nvim`), and this README serves as a guide for building and managing those settings and for recording key points related to kickstart.nvim.

## Installing Essential Components with Scoop

You can use Scoop to install Neovim, Git, ripgrep, wget, fd, unzip, gzip, and gcc, make. gcc and make are included in the 'versions' bucket.

```powershell
scoop install neovim git ripgrep wget fd unzip gzip
scoop install gcc make
```


## Installing kickstart.nvim

kickstart.nvim is the starting point for your Neovim configuration. You can install it by cloning the kickstart.nvim GitHub repository with the following command.

```powershell

git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

### After Installation

To start Neovim, type `nvim` in your terminal. Lazy will automatically install the necessary plugins. You can check the plugin status with the `:Lazy` command, and you can close the window by pressing `:q`.

# Wallpaper

- [Link](https://wallhaven.cc/w/76edpv)
