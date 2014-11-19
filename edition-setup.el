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
