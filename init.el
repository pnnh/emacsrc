;;=============================自身功能配置=============================;;

;; 隐藏菜单栏
;(menu-bar-mode 1)
;; 取消滚动栏
;;(set-scroll-bar-mode nil)
(custom-set-variables
 '(column-number-mode t)
 '(display-time-mode t)
 '(indent-tabs-mode t)
 ; 全局显示行号，这里禁用，在终端下左侧会空白，不太好看
 ;;'(global-display-line-numbers-mode t)
 '(large-file-warning-threshold nil)
 '(show-paren-mode t)
 '(indent-tabs-mode t)
 '(tab-width 4)
 '(tool-bar-mode t))
 '(cua-mode t)
;; 显示行列号,它显示在minibuffer上面那个杠上
(setq column-number-mode t)
(setq line-number-mode 1)
;; 关闭emacs启动时的画面
(setq inhibit-startup-message t)
;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)
;;关闭出错时的提示声
;(setq visible-bell t)
;;设置打开文件的缺省路径,默认的路径为“～/”
(setq default-directory "~/")
;; 改变Emacs要你回答yes的行为,按y或空格键表示yes，n表示no。
(fset 'yes-or-no-p 'y-or-n-p)
;;隐藏*scratch*模式下的This buffer is for notes you don't want to save ...提示
(setq initial-scratch-message "")
;; 当打开一个被git管理的符合链接文件，emacs将进行二次提示，该设置禁止提示
(setq vc-follow-symlinks nil)
;; 警告信息配置
(setq warning-minimum-level :emergency)
;; 报警时不再出现警告图标
(setq visible-bell nil)

;; 光标改成竖线
(setq-default cursor-type 'bar)
; 设置将程序自动添加的配置写到别的文件
;; (setq custom-file "~/.emacs.d/custom.el")
;; (load custom-file)
;;======================包管理配置=====================;; 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("stable" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; 将期望的插件列表添加到package-list，并确保安装（需要在执行下方插件相关初始化配置之前进行）
;; (setq package-list
;;       '(use-package avy cmake-mode))
;; ; install the missing packages
;; (dolist (package package-list)
;;   (unless (package-installed-p package)
;;     (package-install package)))
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

;; 配置benchmark插件以跟踪启动过程
(use-package benchmark-init
  :ensure t
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

;;=============================编辑器自身配置============================;;
;; 加载基本配置
(load-file (expand-file-name "packages/base.el" user-emacs-directory))
;; 快捷键配置，包括调用插件相关的快捷键
(load-file (expand-file-name "packages/shortcuts.el" user-emacs-directory))
;; 鼠标配置
(load-file (expand-file-name "packages/mouse.el" user-emacs-directory))
;; GUI相关配置
(if (display-graphic-p) (load-file (expand-file-name "packages/gui.el" user-emacs-directory)))
;; 加载Native Compile配置 
(load-file (expand-file-name "packages/native-comp.el" user-emacs-directory)) 
;;=============================插件配置============================;;
;; company配置
(load-file (expand-file-name "packages/company.el" user-emacs-directory))
;; sr-speedbar配置
(load-file (expand-file-name "packages/speedbar.el" user-emacs-directory))
;; flycheck配置
(load-file (expand-file-name "packages/flycheck.el" user-emacs-directory))
;; eglot C/C++ LSP Server配置
(load-file (expand-file-name "packages/eglot.el" user-emacs-directory))
;; counsel、ivy、swiper配置
(load-file (expand-file-name "packages/counsel.el" user-emacs-directory))
;; 其它插件集合配置
;; (load-file (expand-file-name "packages/other.el" user-emacs-directory))
;; 开发语言配置
;; (load-file (expand-file-name "packages/languages/golang.el" user-emacs-directory))
;;=============================程序生成的配置============================;;





