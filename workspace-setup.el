;;(prelude-require-package 'workgroups2)
;;(require 'workgroups2)
;; Disable at startup
;(setq wg-use-default-session-file nil)
;; normally at the end of .emacs
;(workgroups-mode 1)

(prelude-require-package 'neotree)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


(provide 'workspace-setup)
