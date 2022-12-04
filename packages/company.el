
;; company-mode
;;(add-hook 'after-init-hook 'global-company-mode)
;;(setq company-minimum-prefix-length 1)
;;(setq company-idle-delay 0)
;;(setq company-show-numbers t)
(use-package company
  :ensure t
  :init (global-company-mode)
  ;;:hook (after-init-hook . global-company-mode)
  :config (setq company-minimum-prefix-length 1
    company-idle-delay 0))

(use-package company-qml
  :ensure t)
