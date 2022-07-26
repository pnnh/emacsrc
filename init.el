;;=============================自身功能配置=============================;;
;; 隐藏菜单栏
;(menu-bar-mode 1)
;; 取消滚动栏
;;(set-scroll-bar-mode nil)
(custom-set-variables
 '(column-number-mode t)
 '(display-time-mode t)
 '(indent-tabs-mode t)
 '(global-display-line-numbers-mode t)
 '(large-file-warning-threshold nil)
 '(show-paren-mode t)
  '(indent-tabs-mode t)
 '(tab-width 4)
  '(tool-bar-mode t))
 '(cua-mode t))
;; 显示行列号,它显示在minibuffer上面那个杠上
(setq column-number-mode t)
(setq line-number-mode 1)
;; 设置标题栏
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))
;; 关闭emacs启动时的画面
(setq inhibit-startup-message t)

;;关闭gnus启动时的画面
(setq gnus-inhibit-startup-message t)
;; 设置启动时窗口的长宽
(setq initial-frame-alist '((width . 165) (height . 45)))
;;关闭出错时的提示声
;(setq visible-bell t)
;;设置打开文件的缺省路径,默认的路径为“～/”
(setq default-directory "~/")
;; 改变Emacs要你回答yes的行为,按y或空格键表示yes，n表示no。
(fset 'yes-or-no-p 'y-or-n-p)
;;隐藏*scratch*模式下的This buffer is for notes you don't want to save ...提示
(setq initial-scratch-message "")

;;打开括号匹配显示模式
(setq show-paren-mode t)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处
(setq show-paren-style 'parenthesis)
;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示,这里将其关闭
(ido-mode t)
;;ido模式不保存目录列表
;(setq ido-save-directory-list-file nil)
;; 设置tab宽度
(display-time-mode 1) ;; 显示时间
(setq display-time-24hr-format t) ;; 24小时格式
(setq display-time-day-and-date t) ;; 显示日期
(setq column-number-mode t) ;; 显示列号
(setq line-number-mode t) ;; 显示行号
;; 状态栏颜色配置
;(set-face-foreground 'mode-line "#000000")
(set-face-background 'mode-line "#e5e5e5")
;(set-face-foreground 'mode-line-inactive "#606060")
;(set-face-background 'mode-line-inactive "#202020")
;;------自动保存/备份有关配置--------;;
(defvar backup-dir (expand-file-name "~/.emacs.d/backups"))
(setq version-control t ; 多次备份
      kept-new-versions 3 ; 保留最近的3个备份文件
      kept-old-versions 2 ; 保留最早的2个备份文件
      delete-old-versions t ; 自动删除旧的备份文件
      backup-by-copying t ; 自动备份
      backup-directory-alist `((".*" . ,backup-dir))	     ; 自动备份目录
      vc-make-backup-files t ; 使用版本控制时仍启用备份
      auto-save-file-name-transforms `((".*" ,backup-dir t))) ; 自动保存目录
;; 警告信息配置
(setq warning-minimum-level :emergency)
;; 报警时不再出现警告图标
(setq visible-bell nil)

;;======================字体配置=====================;;
(set-frame-font "Monaco 13")
;; cua-mode
(cua-mode t)
;;源配置
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(setq package-list
      '(company flycheck sr-speedbar
				go-mode flymake-go flycheck-golangci-lint avy eglot cmake-mode))

(package-initialize)
; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; CEDET
(global-ede-mode 1)      ; 全局启用CEDET
(semantic-mode 1)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)
;; (electric-indent-mode -1) ;; 禁用该模式，否则在按回车换行时，上一行会缩进比较多
;; flycheck
(global-flycheck-mode 1)
;; 光标改成竖线
(setq-default cursor-type 'bar)

; 设置将程序自动添加的配置写到别的文件
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;=============================编辑器自身配置============================;;
; 加载基本配置
(load-file (expand-file-name "packages/base.el" user-emacs-directory))
; 快捷键配置，包括调用插件相关的快捷键
(load-file (expand-file-name "packages/shortcuts.el" user-emacs-directory))
; 鼠标配置
(load-file (expand-file-name "packages/mouse.el" user-emacs-directory))
; 工具栏配置
(load-file (expand-file-name "packages/toolbar.el" user-emacs-directory))
;;=============================插件配置============================;;
; company配置
(load-file (expand-file-name "packages/company.el" user-emacs-directory))
; sr-speedbar配置
(load-file (expand-file-name "packages/speedbar.el" user-emacs-directory))
; eglot C/C++ LSP Server配置
(load-file (expand-file-name "packages/eglot.el" user-emacs-directory))
;;=============================程序生成的配置============================;;





