(prelude-require-package 'company)
(prelude-require-package 'emacs-eclim)

;; Understand Java compilation error
(require 'compile)
  (setq compilation-error-regexp-alist
    (append (list
       ;; works for javac
       '("^\\s-*\\[[^]]*\\]\\s-*\\(.+\\):\\([0-9]+\\):" 1 2)
       ;; works for maven 3.x
       '("^\\(\\[ERROR\\] \\)?\\(/[^:]+\\):\\[\\([0-9]+\\),\\([0-9]+\\)\\]" 2 3 4))
    compilation-error-regexp-alist))


;; Eclim
(require 'eclim)
(require 'eclimd)
(global-eclim-mode)

;; Manage eclim deamon from emacs
;(require 'eclimd)
;(custom-set-variables
; '(eclim-eclipse-dirs '("/home/alex/Programs/Eclipse/juno/eclipse/")))

;; Displaying compilation error messages in the echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; regular auto-complete initialization
;(require 'auto-complete-config)
;(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(define-prefix-command 'eclim-map)
(global-set-key (kbd "C-c e") 'eclim-map)
(define-key eclim-map (kbd "p") 'eclim-manage-projects)


(provide 'java-setup)
