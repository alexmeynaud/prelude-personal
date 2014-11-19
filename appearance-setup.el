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
;(prelude-require-package 'powerline)
;(powerline-default-theme)
;(setq wg-mode-line-disable t)
