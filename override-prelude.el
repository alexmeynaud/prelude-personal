(setq load-path (cons "~/.emacs.d/personal/lib" load-path))

;; Disable whitespace-mode by default
(setq prelude-whitespace nil)

(global-unset-key (kbd "s-p"))
(local-unset-key (kbd "s-p"))

;; Reclaim some keybidings taken by prelude mode
;; (add-hook 'prelude-mode-hook
;;           (lambda ()
;;             (define-key prelude-mode-map (kbd "s-b") 'windmove-left)
;;             (define-key prelude-mode-map (kbd "s-f") 'windmove-right)
;;             (define-key prelude-mode-map (kbd "s-p") 'windmove-up)
;;             (define-key prelude-mode-map (kbd "s-n") 'windmove-down)
;;             )
;;           )

;; Disable auto revert mode, as too slow for log files
(global-auto-revert-mode -1)
