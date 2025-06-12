# Neovim 개인 설정 (Personal Neovim Setup)

이 디렉토리는 [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)을 기반으로 하는 개인 Neovim 설정을 관리하기 위한 것입니다.
kickstart.nvim을 클론하여 이 저장소에 포함시키고, 개인적인 필요에 맞게 설정을 추가하거나 수정하여 사용합니다.
실제 Neovim 설정 파일 (`init.lua` 등)은 Neovim의 표준 설정 경로 (예: `~/.config/nvim` 또는 `%LOCALAPPDATA%\nvim`)에 위치하게 되며, 이 README는 해당 설정을 구축하고 관리하기 위한 가이드 및 kickstart.nvim 관련 주요 사항을 기록하는 역할을 합니다.

# neovim

[neovim](https://neovim.io) is hyperextensible Vim-based text editor.

## Features

### Extensible

- API is first-class: discoverable, versioned, documented.
- MessagePack structured communication enables extensions in any language.
- Remote plugins run as co-processes, safely and asynchronously.
- GUIs, IDEs, web browsers can --embed Neovim as an editor or script host.
- Lua plugins are easy to create just like Vimscript plugins. Your config can live in init.lua!
- AST-producing parsing engine enables faster, more accurate syntax highlighting, code navigation, refactoring, text objects, and motions.

### Usable

- Strong defaults including a unique, minimalist colorscheme.
- Builtin LSP client for semantic code inspection and refactoring (go-to definition, "find references", format, …).
- Client-server architecture allows you to detach the UI and keep the editor session running (like tmux). Attach multiple UIs to any Nvim session.
- No "Press ENTER" messages.
- Works the same everywhere: one build-type, one command.
- Modern terminal features such as cursor styling, focus events, bracketed paste.
- Builtin :terminal set the standard for "TTY as a basic component".

### Drop-in Vim

- Fully compatible with Vim's editing model and Vimscript v1.
- Start with :help nvim-from-vim if you already use Vim. If not, try :Tutor.

## 설치법

```powershell
scoop install neovim
```

# kickstart.nvim 기반 설정

이 Neovim 설정은 [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)을 기반으로 합니다. kickstart.nvim은 Neovim을 시작하기 위한 작고, 단일 파일로 구성된, 문서화가 잘 된 시작점입니다. 이 저장소에서는 kickstart.nvim을 가져와 개인 설정을 추가하여 사용합니다.

kickstart.nvim 원본 저장소: [https://github.com/nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

## Introduction

A starting point for Neovim that is:

* Small
* Single-file
* Completely Documented

**NOT** a Neovim distribution, but instead a starting point for your configuration.

## Installation

### Install Neovim

Kickstart.nvim targets *only* the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

kickstart.nvim을 사용하기 위해서는 몇 가지 외부 의존성 프로그램이 필요합니다. 주요 의존성은 다음과 같습니다:
- 기본 유틸리티: `git`, `make`, `unzip`, C 컴파일러 (`gcc`)
- 검색 도구: [ripgrep](https://github.com/BurntSushi/ripgrep#installation), [fd-find](https://github.com/sharkdp/fd#installation)
- 클립보드 도구: 운영체제에 따라 `xclip`, `xsel`, `win32yank` 등
- [Nerd Font](https://www.nerdfonts.com/): 선택 사항이지만, 다양한 아이콘을 표시하기 위해 권장됩니다.
- 기타 프로그래밍 언어별 도구 (예: Typescript를 위한 `npm`, Golang을 위한 `go` 등)

자세한 최신 의존성 목록 및 OS별 설치 방법은 공식 [kickstart.nvim 문서의 설치 가이드](https://github.com/nvim-lua/kickstart.nvim#install-external-dependencies)를 참조하십시오. 이 README에서는 기본적인 복제 및 설정 적용 방법을 안내합니다.

### Install Kickstart

> [!NOTE]
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

#### Recommended Step

[Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo
so that you have your own copy that you can modify, then install by cloning the
fork to your machine using one of the commands below, depending on your OS.

> [!NOTE]
> Your fork's URL will be something like this:
> `https://github.com/<your_github_username>/kickstart.nvim.git`

You likely want to remove `lazy-lock.json` from your fork's `.gitignore` file
too - it's ignored in the kickstart repo to make maintenance easier, but it's
[recommended to track it in version control](https://lazy.folke.io/usage/lockfile).

#### Clone kickstart.nvim

> [!NOTE]
> If following the recommended step above (i.e., forking the repo), replace
> `nvim-lua` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
the current plugin status. Hit `q` to close the window.

#### Read The Friendly Documentation

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim. That also includes
examples of adding popularly requested plugins.

> [!NOTE]
> For more information about a particular plugin check its repository's documentation.


### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* What should I do if I already have a pre-existing Neovim configuration?
  * You should back it up and then delete all associated files.
  * This includes your existing init.lua and the Neovim files in `~/.local`
    which can be deleted with `rm -rf ~/.local/share/nvim/`
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://lazy.folke.io/usage#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference
    configuration that someone can easily use to `git clone` as a basis for their own.
    As you progress in learning Neovim and Lua, you might consider splitting `init.lua`
    into smaller parts. A fork of kickstart that does this while maintaining the
    same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)

### Install Recipes

OS별 특정 의존성 설치 방법은 공식 [kickstart.nvim 문서](https://github.com/nvim-lua/kickstart.nvim#install-recipes)에 자세히 설명되어 있습니다. 이 문서에서는 해당 내용을 중복하여 다루지 않으므로, 필요한 경우 원본 문서를 참조하십시오.

모든 외부 의존성이 준비되면 아래의 "Install Kickstart" 단계를 진행하여 설정을 복제합니다.
