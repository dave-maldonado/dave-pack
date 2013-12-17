;; custom emacs settings

;; C-n newlines if at end of buffer
(setq next-line-add-newlines t)

;; line numbering (off until I figure out weird yellow block glitch)
;;(global-linum-mode 1)
;;(setq linum-format "  %d ")

;; STUFFS FOR ALL LANGUAGES

;; sr-speedbar
(load-file "~/.live-packs/dave-pack/lib/sr-speedbar.el")
(require 'sr-speedbar)
(sr-speedbar-open)
(sr-speedbar-refresh-turn-on)

;; electric-indent
(electric-indent-mode +1)

;; autopair
(add-to-list 'load-path "~/.live-packs/dave-pack/lib/autopair")
(require 'autopair)
(defvar autopair-modes '(ruby-mode java-mode c++-mode c-mode haskell-mode))
(defun turn-on-autopair-mode () (autopair-mode 1))
(dolist (mode autopair-modes) (add-hook (intern (concat (symbol-name mode) "-hook")) 'turn-on-autopair-mode))

;; disable autopair if paredit is turned on
(defadvice paredit-mode (around disable-autopairs-around (arg))
  "Disable autopairs mode if paredit-mode is turned on"
  ad-do-it
  (if (null ad-return-value)
      (autopair-mode 1)
    (autopair-mode 0)
    ))

(ad-activate 'paredit-mode)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/"))
(add-to-list 'package-archives
             '("geiser" . "http://download.savannah.gnu.org/releases/geiser/packages"))
(package-initialize)
