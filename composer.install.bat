::_installer composer ,, download composer.phar ,, and create composer.bat
@echo off
echo Composer install ...

IF NOT EXIST php.exe goto err1

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
IF NOT EXIST composer-setup.php goto err2

php composer-setup.php
IF NOT EXIST composer.phar goto err3

echo @php "%~dp0composer.phar" %*>composer.bat
IF NOT EXIST composer.bat goto err4

del composer-setup.php
IF EXIST composer-setup.php goto err5

echo Composer installation is successful !
composer -V

goto ends

:err1
echo Error : File not found : php.exe
goto ends

:err2
echo Error : File not download : composer-setup.php
goto ends

:err3
echo Error : File not created : composer.phar
goto ends

:err4
echo Error : File not created : composer.bat
goto ends

:err5
echo Warning : Install the temporary file is not clear : composer-setup.php
goto ends

:ends
exit
