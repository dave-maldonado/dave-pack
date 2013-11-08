(load-file "~/.live-packs/dave-pack/lib/sml-mode-6.1.el")
(setenv "PATH" (concat "/usr/local/smlnj-110.75/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj-110.75/bin" exec-path))
