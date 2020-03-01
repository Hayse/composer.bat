# Composerr学习笔记

## 初始化

下列命令，用于项目目录下，将会引导生成项目配置文件：composer.json
```
composer init
```

## 指定关联包

- 方法一：使用如下指令：
```
composer require user/pack
```

- 方法二：在composer.json文件内指明
```
"require": {
   "user/pack": "dev-ver"
}
```

## 安装包

按配置文件的内容拉取下载文件
- composer install

