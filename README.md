# Composer 是 PHP 用于管理项目依赖的工具。

献给在Windows+PHP下摸索的PHPer

---

## 安装
* 下载此文件[composer.install.bat](https://raw.githubusercontent.com/Hayse/composer.bat/master/composer.install.bat) ，请保存到 PHP 目录下，

* 双击运行，保持网络通畅，马上就好

## 使用方法
1、首先设置系统PATH变量，追加你的PHP目录，

2、CMD到任何你想要的地方，执行相关composer命令即可，例：`composer --version`

## 错误提示
如遇错误会有错误信息提供，也可以在这里反馈

## Good Luck



# 注释

步骤1、 下载获取安装文件https://getcomposer.org/installer
步骤2、 PHP执行安装文件，得到文件composer.phar
步骤3、 生成 composer.bat 命令文件，内容为：@php "%~dp0composer.phar" %*

再加上系统PATH变量包含PHP目录，当执行composer命令时就可以自动执行了。

## 更改 Packagist 为国内镜像

composer config -g repo.packagist composer https://packagist.phpcomposer.com

