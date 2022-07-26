; 设置资源图片加载路径
(add-to-list 'image-load-path (expand-file-name "~/.emacs.d/assets/images"))

; 设置窗口标题栏
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

; 设置窗口位置
(set-frame-position (selected-frame) 240 120)

; 设置启动时窗口的长宽
;(setq initial-frame-alist '((width . 165) (height . 45)))

;设置窗口宽和高
(set-frame-width (selected-frame) 170)

(if (eq system-type 'darwin)
    (set-frame-height (selected-frame) 50))

(if (eq system-type 'gnu/linux)
    (set-frame-height (selected-frame) 50))

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