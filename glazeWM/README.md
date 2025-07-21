# 창 관리자 설정

- [GlazeWM](https://github.com/glzr-io/glazewm): Windows용 타일링 창 관리자입니다.
- [GlazeWM 설정 파일](./config.yaml): GlazeWM의 기본 설정 파일입니다.
- `private-build-plans.toml`: 이 파일은 GlazeWM의 사용자 지정 빌드 또는 플러그인 관리와 관련이 있을 수 있습니다.

## 설치법

```powershell
scoop install glazewm
```

## 실행법

`glazewm` 아이콘을 선택하여 실행합니다.

# 상단 바 설정

- [Zebar](https://github.com/glzr-io/zebar): GlazeWM용 상태 표시줄입니다.

Zebar를 설정하려면:

1. [vanilla-clear](./vanilla-clear) 위젯을 Zebar 디렉토리로 복사합니다.

```
cp ./vanilla-clear/ ~/.glzr/zebar/
```

2. 그런 다음 Zebar 시스템 트레이에서 다른 위젯을 비활성화합니다.

`vanilla-clear` 위젯은 상태 표시줄에 깨끗하고 미니멀한 모양을 제공합니다.

### 이전 Zebar 설정

Zebar는 [v2.2.1](https://github.com/glzr-io/zebar/releases/tag/v2.2.1)에서 `.yaml` 설정을 제거했지만, 원한다면 계속 사용할 수 있습니다: [이전 Zebar 설정](./zebar-config.yaml)