;=============================自身功能配置=============================;;
;; 隐藏菜单栏
;(menu-bar-mode 1)  
;; 取消工具栏
;;(tool-bar-mode nil)
;; 取消滚动栏
;;(set-scroll-bar-mode nil)
;; 显示行列号,它显示在minibuffer上面那个杠上
(setq column-number-mode t)
(setq line-number-mode t)
;; 设置标题栏
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))
;;关闭emacs启动时的画面
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
;; 启用windmove，可以使用alt+方向键切换窗口
;(windmove-default-keybindings 'meta)
; 启用winner-mode，可以使用super+方向键切换布局
;(setq winner-dont-bind-my-keys t)
;(winner-mode t)
;(global-set-key (kbd "C-c <left>") 'winner-undo)
;(global-set-key (kbd "C-c <right>") 'winner-redo)
;;打开括号匹配显示模式
(setq show-paren-mode t) 
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处
(setq show-paren-style 'parenthesis)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
;(setq mouse-avoidance-mode 'animate)
;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示,这里将其关闭
;(ido-mode t)
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
;;以免占用输入法切换快捷键
(global-unset-key (kbd "C-SPC"))
;;源配置
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;  ("marmalade" . "http://marmalade-repo.org/packages/")
;  ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
;(setq company-show-numbers t)
(require 'company-tabnine)
(add-to-list 'company-backends 'company-tabnine)

;; CEDET
(global-ede-mode 1)      ; 全局启用CEDET
(semantic-mode 1)
;;=============================程序生成的配置============================;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(company-tabnine-show-annotation nil)
 '(display-time-mode t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(indent-tabs-mode nil)
 '(large-file-warning-threshold nil)
 '(package-selected-packages '(company-tabnine))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
;;(set-default-font "Monaco")