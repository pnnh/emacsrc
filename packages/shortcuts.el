;; 快速向下移动行
;(global-set-key (kbd "M-n") (lambda () (interactive) (next-line 3)))
(global-set-key (kbd "M-<down>") (lambda () (interactive) (next-line 3)))
;;快速向上移动行
;(global-set-key (kbd "M-p") (lambda () (interactive) (previous-line 3)))
(global-set-key (kbd "M-<up>") (lambda () (interactive) (previous-line 3)))

;; 启用windmove，可以使用alt+方向键切换窗口
;(global-unset-key (kbd "ESC <right>"))
;(windmove-default-keybindings)
;(windmove-default-keybindings 'meta)
(global-set-key (kbd "s-<left>")  'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>")    'windmove-up)
(global-set-key (kbd "s-<down>")  'windmove-down)
(global-set-key (kbd "<home>")  'move-beginning-of-line)
(global-set-key (kbd "<end>")  'move-end-of-line)
; 启用winner-mode，可以使用super+方向键切换布局
;(setq winner-dont-bind-my-keys t)
;(winner-mode t)
;(global-set-key (kbd "C-c <left>") 'winner-undo)
;(global-set-key (kbd "C-c <right>") 'winner-redo)
;;以免占用输入法切换快捷键
(global-unset-key (kbd "C-SPC"))
;;======================快捷键=============;;
;; 设置执行goto char
(global-set-key (kbd "<f1>") 'avy-goto-char)
;; 设置执行命令
;(global-set-key (kbd "<f2>") 'execute-extended-command)
;;====================================sr-speedbar相关配置==================================;;
; 快速打开speedbar，查看文件大纲
;;(global-set-key (kbd "<f2>") 'sr-speedbar-toggle)
(global-set-key (kbd "<f5>") (lambda() (interactive) (sr-speedbar-toggle)))