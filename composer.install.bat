::_installer composer ,, download composer.phar ,, and composer.bat
@echo off
echo Composer install ...

IF NOT EXIST php.exe goto err1

php -r "readfile('https://getcomposer.org/installer');" | php
IF NOT EXIST composer.phar goto err2

echo @php "%~dp0composer.phar" %*>composer.bat
IF NOT EXIST composer.bat goto err3

echo composer is installer .
rem composer -V
rem the composer installer  OK
goto ends

:err1
echo Error : file not found with php.exe
goto ends

:err2
echo Error : file not download with composer.phar
goto ends

:err3
echo Error : file not create with composer.bat
goto ends

:ends
pause
::exit
