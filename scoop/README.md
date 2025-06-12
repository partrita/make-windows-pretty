[scoop](https://scoop.sh) A command-line installer for Windows

# 설치법

Open a PowerShell terminal (version 5.1 or later) and from the PS C:\> prompt, run:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

# 사용법

```powershell
scoop update 
scoop search [package_name]
scoop install [package_name]
scoop uninstall [package_name]
```