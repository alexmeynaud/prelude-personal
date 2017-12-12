;; make typing overwrite text selection
(delete-selection-mode 1) ; this turns on transient-mark-mode automatically

;; select active region for easy mouse copy/paste
(setq select-active-regions t)

;; Set indentation to 4 spaces
;(setq-default indent-tabs-mode nil)
;(setq-default tab-width 4)
;(setq indent-line-function 'insert-tab)


;; Multiple cursors
(prelude-require-package 'multiple-cursors)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Expand region
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-M-=") 'er/contract-region)

;; Wgrep
(prelude-require-package 'wgrep)
(require 'wgrep)

;; iedit
(prelude-require-package 'iedit)
;; reclaim key binding, used by fyspell
(eval-after-load "flyspell"
  '(define-key flyspell-mode-map (kbd "C-;") nil))
(require 'iedit)

;; Drag-stuff
(prelude-require-package 'drag-stuff)
(require 'drag-stuff)
(drag-stuff-mode t)

;; Hungry delete mode
(prelude-require-package 'hungry-delete)
(require 'hungry-delete)
(global-hungry-delete-mode)

;; Kill whole line
(prelude-require-package 'whole-line-or-region)
(require 'whole-line-or-region)

;; Google search!
(prelude-require-package 'google-this)
(require 'google-this)
(google-this-mode 1)

(prelude-require-package 'beacon)
(require 'beacon)
(beacon-mode 1)
(setq beacon-push-mark 35)
(setq beacon-color "#666600")

(prelude-require-package 'ag)
(require 'ag)

(prelude-require-package 'helm-ag)
(require 'helm-ag)

(setq package-check-signature nil)
(require 'ido-completing-read+)

;; YAML
(prelude-require-package 'yaml-mode)
(require 'yaml-mode)

(prelude-require-package 'yaml-tomato)
(require 'yaml-tomato)

;; Ansible
(prelude-require-package 'ansible)
(require 'ansible)

(prelude-require-package 'ansible-doc)
(require 'ansible-doc)

(use-package dumb-jump
             :ensure t
             :bind (("M-g o" . dumb-jump-go-other-window)
                    ("M-g j" . dumb-jump-go)
                    ("M-g b" . dumb-jump-back)
                    ("M-g q" . dumb-jump-quick-look)
                    ("M-g x" . dumb-jump-go-prefer-external)
                    ("M-g z" . dumb-jump-go-prefer-external-other-window))
             :config (setq dumb-jump-selector 'ivy))

(prelude-require-package 'ivy)
(require 'ivy)

(prelude-require-package 'counsel)
(require 'counsel)

(prelude-require-package 'swiper)
(require 'swiper)

;; (use-package swiper
;;   :ensure t
;;   :config
;;   (ivy-mode 1)
;;   (setq ivy-use-virtual-buffers t)
;;   (global-set-key "\C-s" 'swiper)
;;   (global-set-key (kbd "C-c C-r") 'ivy-resume)
;;   (global-set-key (kbd "M-x") 'counsel-M-x)
;;   (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;   )
