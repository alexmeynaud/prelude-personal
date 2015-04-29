;; Personal shortcuts

;; Disable guru-mode (a bit too conservative ;-)
(setq prelude-guru nil)

(global-set-key "\C-x\C-as" 'shell)
(global-set-key (kbd "s-s") 'shell)
(global-set-key "\C-x\C-at" 'term)
(global-set-key "\C-x\C-ao" 'goto-line)
(global-set-key "\C-x\C-ar" 'rename-buffer)
(global-set-key "\C-x\C-al" 'occur)

;;(global-set-key "\C-x\C-ai" (lambda () (interactive) (find-file "/home/alex/index.org")))
(global-set-key "\C-x\C-ah" (lambda () (interactive) (find-file "/home/alex/howto")))
;(global-set-key "\C-x\C-ae" 'eshell)
(global-set-key "\C-x\C-ac" 'compile)
(global-set-key (kbd "s-c") 'compile)
(global-set-key "\C-x\C-ag" 'grep)
(global-set-key "\C-x\C-af" 'find-name-dired)
(global-set-key "\C-x\C-ad" 'dirtree)
(global-set-key "\C-x\C-am" 'magit-status)
(global-set-key "\C-x\C-ab" 'ibuffer)
(global-set-key "\C-x\C-ap" 'proced)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key "\C-x\C-aa" 'apropos)
(global-set-key "\C-c\C-f" 'find-file-at-point)


;; Bind some useful prelude utility functions
(global-set-key "\M-pc" 'prelude-copy-file-name-to-clipboard)

;; Standard keys
(global-set-key (kbd "<f5>") 'revert-buffer) ;; refresh

;; Webjump let's you quickly search google, wikipedia, emacs wiki
(global-set-key "\C-x\C-aj" 'webjump)
(global-set-key "\C-x\C-aw" 'browse-url-at-point)
(global-set-key (kbd "<f12>") 'browse-url-of-buffer)

;; Windows splitting
(global-set-key (kbd "<f1>") 'delete-other-windows)
(global-set-key (kbd "<f2>") 'split-window-below)
(global-set-key (kbd "<f3>") 'split-window-right)
(global-set-key (kbd "<f4>") 'delete-window)

;; Git mode
(global-set-key "\C-c\C-gs" 'magit-status)
(global-set-key "\C-c\C-gp" 'magit-push)
(global-set-key "\C-c\C-gt" 'magit-pull)

;; Gtags
;; Git mode
(global-set-key "\C-x\C-t" 'gtags-find-tag)
(global-set-key "\C-x\C-r" 'gtags-find-rtag)

;; Hide-Show toggling
(global-set-key (kbd "<f6>") 'hs-toggle-hiding)

;; Help: use prefix C-h
(defun howto-open ()
  (interactive)
  (ido-find-file-in-dir "~/howto"))

(defun open-personal ()
  (interactive)
  (ido-find-file-in-dir "~/.emacs.d/personal"))

(global-set-key "\C-x\C-p" 'open-personal)

(global-set-key "\C-hh" 'open-howto)
(global-set-key "\C-h3" 'man)

;; Navigation between windows
(windmove-default-keybindings 'super)

;; Drag-stuff prefix to shift
(setq drag-stuff-modifier 'shift)

;; Additionnal tags bindings, as standard ones can be taken by language specific modes (e.g. tern)

(provide 'bindings-setup)
;;; bindings-setup.el ends here
(global-set-key (kbd "C-.") 'find-tag)
(global-set-key (kbd "C-,") 'tags-loop-continue)

