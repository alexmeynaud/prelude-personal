(prelude-require-package 'guide-key)
(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "s-m" "s-x" "C-c p" "C-c p s"))
(guide-key-mode 1)  ; Enable guide-key-mode
(setq guide-key/recursive-key-sequence-flag t)

(provide 'help-setup)
