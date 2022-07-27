
;; 安装counsel将会自动安装ivy及swiper作为依赖
(use-package ivy 
  :demand
  :ensure t
  :diminish ivy-mode
  :hook (after-init . ivy-mode)
  :config
    (setq ivy-use-virtual-buffers t
            ivy-count-format "%d/%d "))