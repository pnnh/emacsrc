;;==================插件===================;;
;; sr-speedbar
(require 'sr-speedbar)
;(setq sr-speedbar-right-side nil)
;(setq sr-speedbar-width 25)
;(setq dframe-update-speed t)
(setq speedbar-show-unknown-files t)
(global-set-key (kbd "<f5>") (lambda() (interactive) (sr-speedbar-toggle)))


(custom-set-variables
 '(speedbar-supported-extension-expressions
   '(".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".go"))
)