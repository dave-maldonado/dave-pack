;; Rinari config
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/rinari")
(require 'rinari)

;; Rspec mode
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/rspec-mode")
(require 'rspec-mode)

;; snippets for Rspec mode
(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;; Cucumber mode
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/cucumber")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; haml mode
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/haml-mode")
(require 'haml-mode)

;; web mode
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
