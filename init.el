;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

;; Custom settings
(live-load-config-file "dave-conf.el")

;; Solarized
(live-load-config-file "solarized-conf.el")

;; ugly hack fix for curly brace prob in ruby mode
(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "{" nil)
            (define-key ruby-mode-map "}" nil)))

;; Ruby stuffs
(live-load-config-file "ruby-conf.el")
