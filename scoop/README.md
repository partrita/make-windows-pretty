[scoop](https://scoop.sh) A command-line installer for Windows

## 설치법

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

## 사용법

```powershell
scoop update 
scoop search [package_name]
scoop install [package_name]
scoop uninstall [package_name]
```
