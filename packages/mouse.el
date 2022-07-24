;;=========================鼠标配置====================;;
;; 终端下启用鼠标操作，需要在iterm2中启用mouse reporting
;; 之后正常鼠标选择是操作emacs选区，Alt+鼠标左键选择是操作系统选区
(xterm-mouse-mode 1)
(defun track-mouse (e))
(setq mouse-sel-mode t)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(setq mouse-avoidance-mode 'animate)
(setq x-select-enable-clipboard t)