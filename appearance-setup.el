(set-default-font "-simp-Hack-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")

(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(horizontal-scroll-bar-mode -1)
(menu-bar-mode -1)
(add-hook 'before-make-frame-hook 'turn-off-tool-bar)


;; Default font
;;(set-face-font 'default "monospace")
;;(set-frame-font "")

;; Make zooming affect frame instead of buffers
;; Assign key bindings as for firefox
(prelude-require-package 'zoom-frm)
(require'zoom-frm)
(global-set-key [(control ?+)]  'zoom-frm-in)   ; `C-+'
(global-set-key [(control ?-)]  'zoom-frm-out)  ; `C--'


;;You can call list-colors-display to list colors and their RGB hex values. But the result is not sorted. Now, you can sort it by hue.
(setq list-colors-sort 'hsv )


;; Powerline
(prelude-require-package 'powerline)
;(powerline-default-theme)
;(setq wg-mode-line-disable t)

;; Golden ratio
(prelude-require-package 'golden-ratio)
(require 'golden-ratio)
;(golden-ratio-mode 1)

;;To prevent Golden Ratio mode to be activated for certain mode
(setq golden-ratio-exclude-modes '("ediff-mode"
                                   "eshell-mode"
                                   "dired-mode"))
(add-to-list 'golden-ratio-exclude-buffer-names " *NeoTree*")

;; To prevent Emacs to create extra window instead of jumping to an already existing window
(setq split-width-threshold nil)
