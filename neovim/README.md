# Neovim 개인 설정 (Personal Neovim Setup)

이 디렉토리는 [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)을 기반으로 하는 개인 Neovim 설정을 관리하기 위한 것입니다.
kickstart.nvim을 클론하여 이 저장소에 포함시키고, 개인적인 필요에 맞게 설정을 추가하거나 수정하여 사용합니다.
실제 Neovim 설정 파일 (`init.lua` 등)은 Neovim의 표준 설정 경로 (예: `~/.config/nvim` 또는 `%LOCALAPPDATA%\nvim`)에 위치하게 되며, 이 README는 해당 설정을 구축하고 관리하기 위한 가이드 및 kickstart.nvim 관련 주요 사항을 기록하는 역할을 합니다.

## Scoop을 사용한 필수 구성 요소 설치

Scoop을 사용하여 Neovim, Git, ripgrep, wget, fd, unzip, gzip 및 gcc, make를 설치할 수 있습니다. gcc와 make는 'versions' 버킷에 포함되어 있습니다.

```powershell
scoop install neovim git ripgrep wget fd unzip gzip
scoop install gcc make
```


## kickstart.nvim 설치

kickstart.nvim은 Neovim 설정을 위한 시작점입니다. 다음 명령어를 사용하여 kickstart.nvim GitHub 저장소를 복제하여 설치할 수 있습니다.

```powershell

git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

### 설치 후

Neovim을 시작하려면 터미널에서 `nvim`을 입력하세요. Lazy가 필요한 플러그인을 자동으로 설치합니다. `:Lazy` 명령어로 플러그인 상태를 확인할 수 있으며, `:q`를 눌러 창을 닫을 수 있습니다.
