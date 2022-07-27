个人emacs配置文件

## 安装Emacs

macOS下安装

```shell
# 通过官方推荐方式安装（缺少一些特性）
brew install --cask eamcs
# 或通过第三方源
brew tap d12frosted/emacs-plus
# 安装第三方emacs（安装过程中遇到一个xz找不到的问题，先brew install emacs安装一下自带的emacs再装这个就好了，很奇怪）
brew install emacs-plus@28 --with-ctags --with-xwidgets --with-imagemagick --with-native-comp
```


使用时需要克隆至~/.emacs.d目录，并创建软连接

```shell
# 这里直接将.emacs文件链接至init.el文件，方便修改和git提交
ln -s .emacs.d/init.el .emacs
```

