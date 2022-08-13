;; (when (find-image '((:type xpm :file "~/.emacs.d/packages/toolbar/pink-gnu.xpm")))
;;     (unless tool-bar-mode (tool-bar-mode 1))
;;     (setq tool-bar-map (make-sparse-keymap))
;;     (tool-bar-add-item "pink-gnu"
;; 					   'xref-find-definitions
;; 					   'xref-find-definitions))

(message "setting GUI")
;;=============================窗口相关配置============================;;
;; 设置窗口位置
(set-frame-position (selected-frame) 240 120)

; 设置启动时窗口的长宽
; (setq initial-frame-alist '((width . 170) (height . 50)))
; 默认窗口高度（设置对emacsclient也有效果）
;(add-to-list 'default-frame-alist '(height . 50))
; 默认窗口宽度（设置对emacsclient也有效果）
;(add-to-list 'default-frame-alist '(width . 170))
; 设置默认窗口宽高及位置（对emacsclient也有效果）
;; (setq default-frame-alist
;;        '((height . 50)
;;          (width . 170)
;;          (left . 240)
;;          (top . 120)
;;          ;(vertical-scroll-bars . nil)
;;          ;(horizontal-scroll-bars . nil)
;;          ;(tool-bar-lines . 0))
;; ))

;;设置窗口宽和高
;; progn函数可以使if执行多个语句
(if (eq system-type 'darwin)
   (progn (set-frame-font "Monaco 13")
          (set-frame-width (selected-frame) 170)
          (set-frame-height (selected-frame) 50)))

(if (eq system-type 'gnu/linux)
   (progn (set-frame-font "Ubuntu Mono-12")
          (set-frame-width (selected-frame) 136)
          (set-frame-height (selected-frame) 40)))

;;==========================工具栏相关配置=====================;;

(defun go-back ()
 "another nonce menu function"
 (interactive)
 ;(message "hotel, motel, holiday inn")
 (xref-pop-marker-stack)
 )

(defun add-toolbar ()
  "在工具栏添加一个返回按钮，点击可以返回上一次光标位置"
  ;(message "xxxxxyyyyy")
  (when (find-image '((:type xpm :file "left.xpm")))  ; 可以通过一些工具将svg转换为xpm格式
 ;(message "xxxxxx inn2")
  (unless tool-bar-mode (tool-bar-mode 1))
  ;(setq tool-bar-map (make-sparse-keymap))   ; 这句可以把工具栏清空，以便重新添加
(tool-bar-add-item "left" 'go-back
            'go-back
            :help   "Run fonction go-back")
  ))
 
(add-hook 'c-mode-hook 'add-toolbar)
(add-hook 'c++-mode-hook 'add-toolbar)