ubuntu下通过apt安装的emacs自带emacs.service文件，所以直接可以通过systemctl启动

```shell
# 启用emacs服务，随系统启动（因为是用户级别的服务所以需要加--user参数）
systemctl --user enable emacs
# 手动启动emacs服务
systemctl --user start emacs
# 手动停止emacs服务
systemctl --user stop emacs
```

不过，ubuntu apt源里的emacs是27版本，不支持native-comp，所以一般是通过snap源安装

```shell
# snap安装emacs
snap install emacs
# 启动emacs守护进程
/snap/bin/emacs --daemon
# 停止并重新启动emacs守护进程
pkill emacs && /snap/bin/emacs --daemon
```

