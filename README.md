个人emacs配置文件

使用时需要克隆至~/.emacs.d目录，并创建软连接

```shell
# 这里直接将.emacs文件链接至init.el文件，方便修改和git提交
ln -s .emacs.d/init.el .emacs
```