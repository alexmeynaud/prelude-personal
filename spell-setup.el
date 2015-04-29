;; Flyspell
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(setq flyspell-sort-corrections nil)
(global-set-key "\M-c" 'flyspell-auto-correct-word)  ;; was center-line
;; Spell automatically .org and txt files
(add-hook 'text-mode-hook (lambda ()  (flyspell-mode 1)))
(add-hook 'org-mode-hook (lambda ()  (flyspell-mode 1)))


(provide 'spell-setup)
