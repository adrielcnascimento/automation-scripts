

taskkill /f /im Wscript.exe /t


attrib -h -s -a  /s /D  *.*

del autorun.inf
del *.inf
del *.exe
del *.vbs
del *.lnk

mkdir autorun.inf
atrib +h +s +r /D autorun.inf

CLS
@ECHO OFF
ECHO            ษออออออออออออออออออออออออออออออออออออป
ECHO            บ     Verifique o seu pendrive       บ
ECHO            ศออออออออออออออออออออออออออออออออออออผ
ECHO            บ Disponibilizado Originalmente em   บ
ECHO            ษออออออออออออออออออออออออออออออออออออป
ECHO            บ   FB.com/groups/contato.ufcg      บ
ECHO            ศออออออออออออออออออออออออออออออออออออผ

PING 127.0.0.1 -n 1 -w 5000 >NUL
