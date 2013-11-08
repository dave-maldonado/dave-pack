;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(define-key global-map (kbd "M-h") 'delete-backward-char)
(define-key global-map (kbd "M-?") 'help-command)
(define-key global-map (kbd "C-x C-o") 'other-window)
(define-key global-map (kbd "M-n") 'scroll-up-command)
(define-key global-map (kbd "M-p") 'scroll-down-command)
(define-key global-map (kbd "C-x C-m") 'execute-extended-command)
(define-key global-map (kbd "C-x m") 'execute-extended-command)

;; C-w backward-delete-word if no region is selected
;; transient-mark-mode must be on to work

(defadvice kill-region (before unix-werase activate compile)
  (interactive
  (if mark-active (list (region-beginning) (region-end))
    (list (save-excursion (backward-word 1) (point)) (point)))))

(defun unix-werase-or-kill (arg)
  (interactive "*p")
  (if (and transient-mark-mode
           mark-active)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word arg)))
