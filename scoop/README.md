[scoop](https://scoop.sh) Windows용 명령줄 설치 프로그램입니다.

## 설치법

PowerShell 터미널(버전 5.1 이상)을 열고 PS C:\> 프롬프트에서 다음을 실행합니다.

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

### 필요한 버킷 추가

Scoop은 애플리케이션을 "버킷"으로 구성합니다. 많은 일반적인 도구는 기본 "main" 버킷에 있지만, mingw(gcc 및 make 포함)와 같은 일부 개발자 도구는 종종 `versions`와 같은 다른 버킷에 있습니다. 일반적인 개발 버킷을 추가하는 것이 좋습니다.

```powershell
scoop bucket add versions
scoop bucket add extras
scoop bucket add main
```

## 사용법

```powershell
scoop update 
scoop search [패키지_이름]
scoop install [패키지_이름]
scoop uninstall [패키지_이름]
```
