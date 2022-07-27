(if (and (fboundp 'native-comp-available-p)
       (native-comp-available-p))
  (message "Native compilation is available")
(message "Native complation is *not* available"))

(if (functionp 'json-serialize)
  (message "Native JSON is available")
(message "Native JSON is *not* available"))

(setq package-native-compile t)
(setq native-comp-deferred-compilation t)

(native-comp-async "~/.emacs.d/elpa" 4 t)

;; block until native compilation has finished
(while (or comp-files-queue
            (> (comp-async-runnings) 0))
    (sleep-for 1))