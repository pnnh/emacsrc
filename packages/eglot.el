;; (require 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
;; (add-hook 'c-mode-hook 'eglot-ensure)
;; (add-hook 'c++-mode-hook 'eglot-ensure)
;; 可以通过M-.或者xref-find-definitions来转到定义

;; 给 clangd 生成项目配置文件的工具 compile_commands.json
;; https://zhuanlan.zhihu.com/p/145430576
;; https://github.com/rizsotto/Bear

;; 下面的代码是使用 use-package 配置 eglot 的过程
(use-package eglot
  :ensure t
  :config
  ;; 给 c-mode, c++-mode 配置使用 clangd-11 作为 LSP 后端
  ;; 需要主要的是，要根据上面你安装的 clangd 程序的名字填写这个配置
  ;; 我这里写成 clangd-11 是因为安装的 clangd 程序的名字为 clangd-11
  (add-to-list 'eglot-server-programs '((c-mode c++-mode) "clangd"))
  ;; 使用 c-mode 是，开启 eglot
  (add-hook 'c-mode-hook 'eglot-ensure)
  ;; 使用 c++-mode 是，开启 eglot
  (add-hook 'c++-mode-hook 'eglot-ensure))