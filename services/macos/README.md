macos下首先通过以下命令安装Emacs.app

```shell
brew install --cask emacs
```

启动以下命令加载服务

需要将emacs.daemon.plist文件放到~/Library/LaunchAgents/目录

```shell
# 加载服务
launchctl load -w ~/Library/LaunchAgents/emacs.daemon.plist
# 启动服务
launchctl start emacs.daemon
```

停止或协助服务执行以下命令

```shell
# 卸载服务
launchctl unload ~/Library/LaunchAgents/emacs.daemon.plist
# 停止服务
launchctl stop emacs.daemon
```

如果服务成功启动则可以通过以下命令查看到进程在运行

```shell
ps aux|grep "[Ee]macs"
```

通过安装以下程序可以在macOS上为EmacsClient创建一个App，以便从图形桌面启动

```shell
brew install --cask platypus
```

在platypus中选择shell并输入以下命令，点击Create App即可

注意：Interface选择None、取消勾选Remain running after execution

```shell
#!/bin/sh

/opt/homebrew/bin/emacsclient -c
```