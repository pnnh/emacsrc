
;; 说是处理mac gui下一些命令找不到问题
;; (use-package exec-path-from-shell
;;   :ensure t
;;   :init
;;     (when (memq window-system '(mac ns x))
;;       (exec-path-from-shell-initialize)))


(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

