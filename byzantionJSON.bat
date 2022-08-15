@echo off
setlocal EnableDelayedExpansion
set nl=^&echo.
set /a count=0

echo NFT BYZZANTION JSON GENERTOR

if exist byzantionJSON rmdir /S byzantionJSON
mkdir byzantionJSON

for %%a in (*.json) do (
	echo %%a
	
	set var[!count!]=[
	set /a count+=1
	for /f "tokens=*" %%b in (%%a) do (	
		echo.%%b | find /I "trait_type">nul && (
			echo.Found "trait_type"
			set var[!count!]=  {
			set /a count+=1
			set var[!count!]=    %%b
			set /a count+=1
		)
		echo.%%b | find /I "value">nul && (
			echo.Found "value"
			set var[!count!]=    %%b
			set /a count+=1
			set var[!count!]=  },
			set /a count+=1
		)
	)
	set /a count-=1
		set var[!count!]=  }
		set /a count+=1
	set var[!count!]=]
	for /l %%n in (0,1,!count!) do ( 
		echo !var[%%n]!
		echo !var[%%n]!>>byzantionJSON/%%a
	)
	set /a count = 0
)
pause


