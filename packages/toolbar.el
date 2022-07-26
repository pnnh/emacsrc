;; (when (find-image '((:type xpm :file "~/.emacs.d/packages/toolbar/pink-gnu.xpm")))
;;     (unless tool-bar-mode (tool-bar-mode 1))
;;     (setq tool-bar-map (make-sparse-keymap))
;;     (tool-bar-add-item "pink-gnu"
;; 					   'xref-find-definitions
;; 					   'xref-find-definitions))


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