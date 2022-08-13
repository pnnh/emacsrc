

;;打开括号匹配显示模式
(setq show-paren-mode t)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处
(setq show-paren-style 'parenthesis)
;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示,这里将其关闭（使用ivy替代）
;(ido-mode t)
;;ido模式不保存目录列表
;(setq ido-save-directory-list-file nil)
;; 设置tab宽度
(display-time-mode 1) ;; 显示时间
(setq display-time-24hr-format t) ;; 24小时格式
(setq display-time-day-and-date t) ;; 显示日期
(setq column-number-mode t) ;; 显示列号
(setq line-number-mode t) ;; 显示行号
(electric-indent-mode -1) ;; 禁用该模式，否则在按回车换行时，上一行会缩进比较多
;; 状态栏颜色配置
;(set-face-foreground 'mode-line "#000000")
(set-face-background 'mode-line "#e5e5e5")
;(set-face-foreground 'mode-line-inactive "#606060")
;(set-face-background 'mode-line-inactive "#202020")

; 设置资源图片加载路径
(add-to-list 'image-load-path (expand-file-name "~/.emacs.d/assets/images"))

; 设置窗口标题栏
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))


; 自动保存/备份有关配置
(defvar backup-dir (expand-file-name "~/.emacs.d/backups/"))
(setq version-control t ; 多次备份
      kept-new-versions 3 ; 保留最近的3个备份文件
      kept-old-versions 2 ; 保留最早的2个备份文件
      delete-old-versions t ; 自动删除旧的备份文件
      backup-by-copying t ; 自动备份
      vc-make-backup-files t ; 使用版本控制时仍启用备份
      backup-directory-alist `((".*" ., backup-dir))	     ; 自动备份目录
      auto-save-file-name-transforms `((".*", backup-dir t)) ; 自动保存目录
      lock-file-name-transforms `((".*" ,backup-dir  t))     ; 文件锁目录
)

;;=============================CEDET配置============================;;
;; CEDET
;; (global-ede-mode 1)      ; 全局启用CEDET
;; (semantic-mode 1)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode)
