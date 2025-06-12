# Window Manager Setup

- [GlazeWM](https://github.com/glzr-io/glazewm): A tiling window manager for Windows.
- [GlazeWM Config File](./config.yaml): The main configuration file for GlazeWM.
- `private-build-plans.toml`: This file might be related to custom builds or plugin management for GlazeWM.

## 설치법

```powershell
scoop install glazewm
```

## 실행법

실행은 `glazewm` 아이콘을 선택해서 실행.

# TopBar Setup

- [Zebar](https://github.com/glzr-io/zebar): A status bar for GlazeWM.

To configure Zebar:

1. Copy [vanilla-clear](./vanilla-clear) widget to Zebar directory

```
cp ./vanilla-clear/ ~/.glzr/zebar/
```

2. Than disable other widgets in Zebar system tray.

The `vanilla-clear` widget provides a clean and minimalist look for your status bar.

### Old Zebar config

Zebar removed `.yaml` config in [v2.2.1](https://github.com/glzr-io/zebar/releases/tag/v2.2.1), but if you want, you can still use it: [Old Zebar Config](./zebar-config.yaml)