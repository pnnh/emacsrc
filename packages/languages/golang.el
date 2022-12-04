(use-package go-mode
  :ensure t
  :hook (after-init-hook . global-company-mode)
  )

(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))

;; dap-dlv调试配置
(require 'dap-dlv-go)