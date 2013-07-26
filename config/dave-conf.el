;; custom emacs settings

;; line numbering
(global-linum-mode 1)
(setq linum-format "%d ")

;; electric-indent
(add-hook 'ruby-mode-hook 'electric-indent-mode)
