
@echo off


IF EXIST TEMPFILES (
cd TEMPFILES

) ELSE (
md TEMPFILES
cd TEMPFILES
)





:start
CLS
set prev=N/A
SET /A rand=%Random% %% (1 - 26 + 1)+ 1
if %rand%==1 (
set letter=a
)
if %rand%==2  (
set letter=b
)
if %rand%==3  (
set letter=c
)
if %rand%==4  (
set letter=d
)
if %rand%==5  (
set letter=e
)
if %rand%==6  (
set letter=f
)
if %rand%==7  (
set letter=g
)
if %rand%==8  (
set letter=h
)
if %rand%==9  (
set letter=i
)
if %rand%==10 (
set letter=j
)
if %rand%==11 (
set letter=k
)
if %rand%==12 (
set letter=l
)
if %rand%==13 (
set letter=m
)
if %rand%==14 (
set letter=n
)
if %rand%==15 (
set letter=o
)
if %rand%==16 (
set letter=p
)
if %rand%==17 (
set letter=q
)
if %rand%==18 (
set letter=r
)
if %rand%==19 (
set letter=s
)
if %rand%==20 (
set letter=t
)
if %rand%==21 (
set letter=u
)
if %rand%==22 (
set letter=v
)
if %rand%==23 (
set letter=w
)
if %rand%==24 (
set letter=x
)
if %rand%==25 (
set letter=y
)
if %rand%==26 (
set letter=z
)
IF %letter%==%prev% (
goto start
) else (
@echo>%letter%.txt
goto result
)
:result
set prev=%letter%



set loop=0
:folderloop
md %random%

set /a folderloop=%folderloop%+1 
if "%folderloop%"=="3" goto folend
goto start
:folend

echo Random files created in tempfiles. %TEMPFILES%
PAUSE
:END