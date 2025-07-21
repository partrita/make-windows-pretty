# 내 윈도우 설정

## 내 터미널 설정

- [Wezterm](https://wezfurlong.org/wezterm/index.html)
- [Wezterm 설정 파일](.wezterm.lua)

> 글꼴은 [여기](https://typeof.net/Iosevka/customizer)에서 사용자 지정 Iosevka를 설치한 것입니다. 빌드 계획은 [여기](./private-build-plans.toml)에 있습니다.

## 창 관리자 설정

- [GlazeWM](https://github.com/glzr-io/glazewm)
- [GlazeWM 설정 파일](./config.yaml)

## 상단 바 설정

- [Zebar](https://github.com/glzr-io/zebar)

Zebar를 설정하려면:

1. [vanilla-clear](./vanilla-clear) 위젯을 Zebar 디렉토리로 복사합니다.

```
cp ./vanilla-clear/ ~/.glzr/zebar/
```

2. 그런 다음 Zebar 시스템 트레이에서 다른 위젯을 비활성화합니다.

### 이전 Zebar 설정

Zebar는 [v2.2.1](https://github.com/glzr-io/zebar/releases/tag/v2.2.1)에서 `.yaml` 설정을 제거했지만, 원한다면 계속 사용할 수 있습니다: [이전 Zebar 설정](./zebar-config.yaml)

## 검색

- [Powertoys Run](https://learn.microsoft.com/ko-kr/windows/powertoys/run)

## 반투명 작업 표시줄

- [TranslucentTB](https://apps.microsoft.com/detail/9pf4kz2vn4w9?hl=ko-kr&gl=KR)

## Scoop

[scoop](https://scoop.sh)은 Windows용 명령줄 설치 프로그램입니다.

### 설치 방법

PowerShell 터미널(버전 5.1 이상)을 열고 PS C:\> 프롬프트에서 다음을 실행합니다:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### 필요한 버킷 추가

Scoop은 응용 프로그램을 "버킷"으로 구성합니다. 많은 일반적인 도구는 기본 "main" 버킷에 있지만 gcc 및 make와 같은 일부 개발자 도구는 종종 버전과 같은 다른 버킷에 있습니다. 일반적인 개발 버킷을 추가하는 것이 좋습니다.

```powershell
scoop bucket add versions
scoop bucket add extras
scoop bucket add main
```

### 사용 방법

```powershell
scoop update
scoop search [패키지 이름]
scoop install [패키지 이름]
scoop uninstall [패키지 이름]
```

## Kanata

[kanata](https://github.com/jtroo/kanata)는 Linux, macOS 및 Windows용 크로스 플랫폼 소프트웨어 키보드 리매퍼입니다. 기능 요약:

- 고급 키 동작 사용자 지정(예: 탭 홀드, 매크로, 유니코드)

이 디렉토리에는 실행 파일과 설정 파일을 포함한 개인 Kanata 설정이 포함되어 있습니다.

### 주요 파일

- `kanata.exe`: Windows용 Kanata 실행 파일입니다.
- `kanata.kbd`: 개인 Kanata 키 바인딩 설정 파일입니다. 이 파일은 사용자 지정 레이어, 매크로 및 키 동작을 정의합니다.

### 사용 방법

이 설정을 사용하려면 이 디렉토리에서 `kanata.exe --config kanata.kbd`를 실행하거나 `kanata.exe`가 PATH에 있는지 확인하고 지정된 설정 파일로 실행하십시오.

Kanata 및 해당 설정에 대한 자세한 내용은 [공식 Kanata 설명서](https://github.com/jtroo/kanata/blob/main/docs/README.md)를 참조하십시오.

## Mactype

[mactype](https://mactype.net)은 중국 개발자 FlyingSnow가 만든 글꼴 렌더링 프로그램으로, Microsoft Windows에서 기본적으로 사용되는 ClearType을 대체합니다.

- [github 저장소](https://github.com/snowie2000/MacType)

이 디렉토리에는 사용자 지정 MacType 프로필(.ini 파일)이 포함되어 있습니다.

### ini 폴더 내용

`ini` 하위 디렉토리에는 다음 프로필이 포함되어 있습니다:
- `pretendard.ini`
- `spoqa_han.ini`

이 파일은 특정 글꼴에 맞게 조정된 MacType 프로필입니다.

### 사용 방법

1. 아직 MacType을 설치하지 않았다면 [mactype.net](https://mactype.net)에서 다운로드하여 설치하십시오.
2. 이 저장소의 `ini` 폴더에 있는 원하는 .ini 파일을 MacType 설치 폴더 내의 'ini' 디렉토리에 복사합니다. (예: `C:\Program Files\MacType\ini`)
3. MacType 설정 프로그램(MacType 마법사 또는 MacType 제어판)을 실행합니다.
4. 복사한 프로필 중 하나를 선택하고 적용합니다.

## Starship

모든 셸을 위한 최소한의, 빛처럼 빠르고, 극도로 사용자 정의 가능한 프롬프트입니다!

- https://starship.rs
- 전제 조건: 터미널에 Powerline 글꼴이 설치되고 활성화되어 있어야 합니다.

### 설치 방법

```powershell
scoop install starship
```

PowerShell `$PROFILE`의 끝에 `Invoke-Expression (&starship init powershell)`을 추가합니다.


### 설정 파일 위치

```
~/.config/starship.toml
```

## Neovim

[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)을 기반으로 개인 Neovim 설정을 관리하기 위한 것입니다.
kickstart.nvim을 복제하여 이 저장소에 포함시키고 개인적인 필요에 맞게 설정을 추가하거나 수정하여 사용합니다.
실제 Neovim 설정 파일(`init.lua` 등)은 Neovim의 표준 설정 경로(예: `~/.config/nvim` 또는 `%LOCALAPPDATA%\nvim`)에 위치하며, 이 README는 해당 설정을 구축하고 관리하기 위한 가이드 및 kickstart.nvim 관련 주요 사항을 기록하는 역할을 합니다.

### Scoop으로 필수 구성 요소 설치

Scoop을 사용하여 Neovim, Git, ripgrep, wget, fd, unzip, gzip, gcc, make를 설치할 수 있습니다. gcc와 make는 'versions' 버킷에 포함되어 있습니다.

```powershell
scoop install neovim git ripgrep wget fd unzip gzip
scoop install gcc make
```

### kickstart.nvim 설치

kickstart.nvim은 Neovim 설정을 위한 시작점입니다. 다음 명령을 사용하여 kickstart.nvim GitHub 저장소를 복제하여 설치할 수 있습니다.

```powershell

git clone https://github.com/nvim-lua/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

설치 후 Neovim을 시작하려면 터미널에서 `nvim`을 입력하십시오. Lazy가 필요한 플러그인을 자동으로 설치합니다. `:Lazy` 명령으로 플러그인 상태를 확인할 수 있으며, `:q`를 눌러 창을 닫을 수 있습니다.

# 배경화면

- [링크](https://wallhaven.cc/w/76edpv)
