
@ECHO OFF


IF EXIST TEMPFILES (


cd TEMPFILES
del /s /q "%cd%\TEMPFILES\"
rmdir /s /q "%cd%\TEMPFILES\"

) ELSE (
echo Folder doesnt exist. nothing to delete.
Pause
)

:end





exit