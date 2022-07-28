;; 这里存放其它小的插件配置合集
(message "开始配置其它插件")
;; 下方可以防止其它插件的配置
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))