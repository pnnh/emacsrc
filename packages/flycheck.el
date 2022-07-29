
;; 说是处理mac gui下一些命令找不到问题
;; (use-package exec-path-from-shell
;;   :ensure t
;;   :init
;;     (when (memq window-system '(mac ns x))
;;       (exec-path-from-shell-initialize)))


(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package go-mode
  :ensure t
  :hook (after-init-hook . global-company-mode)
  )

(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))