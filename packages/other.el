;; 这里存放其它小的插件配置合集
;;(message "开始配置其它插件")
;; 下方可以防止其它插件的配置

(use-package cmake-mode
 :ensure t)

;;（加载这个文件似乎会导致启动时间增加300多毫秒，先暂停）
(use-package markdown-mode
 :ensure t
 :mode ("README\\.md\\'" . gfm-mode)
 :init (setq markdown-command "multimarkdown") ;; 需要手动安装multimarkdown程序
 )
