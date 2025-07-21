[kanata](https://github.com/jtroo/kanata)는 Linux, macOS 및 Windows용 크로스 플랫폼 소프트웨어 키보드 리매퍼입니다. 주요 기능은 다음과 같습니다.

- 여러 계층의 키 기능
- 고급 키 동작 사용자 지정 (예: 탭-홀드, 매크로, 유니코드)

이 디렉토리에는 실행 파일 및 설정 파일을 포함한 개인 Kanata 설정이 포함되어 있습니다.

## 주요 파일

- `kanata.exe`: Windows용 Kanata 실행 파일.
- `kanata.kbd`: 개인 Kanata 키 바인딩 설정 파일. 이 파일은 사용자 지정 레이어, 매크로 및 키 동작을 정의합니다.

## 사용 방법

이 설정을 사용하려면 이 디렉토리에서 `kanata.exe --config kanata.kbd`를 실행하거나 `kanata.exe`가 PATH에 있는지 확인하고 지정된 설정 파일로 실행하십시오.

Kanata 및 해당 설정에 대한 자세한 내용은 [공식 Kanata 설명서](https://github.com/jtroo/kanata/blob/main/docs/README.md)를 참조하십시오.

## 백업 및 이식성

이 파일들은 내 Kanata 설정의 백업 역할을 하며 새 Windows 컴퓨터에서 쉽게 설정할 수 있도록 합니다.