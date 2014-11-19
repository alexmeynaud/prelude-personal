;; ido vertical
(prelude-require-package 'ido-vertical-mode)
(require 'ido-vertical-mode)
(ido-vertical-mode 1)

;; auto-complete
;; (prelude-require-package 'auto-complete)
;; (require 'auto-complete-config)
;; (ac-config-default)
;; (setq ac-use-fuzzy t)
;; (setq ac-ignore-case t)
;; (setq ac-use-menu-map t)
;; (define-key ac-menu-map "\C-n" 'ac-next)
;; (define-key ac-menu-map "\C-p" 'ac-previous)

(prelude-require-package 'company-tern)
(require 'company-tern)
(add-to-list 'company-backends 'company-tern)

;; Set path to dict dir
;; (setq dict-dir (expand-file-name "personal/ac-dict" user-emacs-directory))
;; (add-to-list 'ac-dictionary-directories dict-dir)
;; (add-to-list 'ac-modes 'emacs-lisp-mode)

;; ido-at-point
(prelude-require-package 'ido-at-point)
;;(ido-at-point-mode)

(prelude-require-package 'imenu-anywhere)
(require 'imenu-anywhere)
(global-set-key "\C-x\C-ai" 'imenu-anywhere)

;; pcomplete

;;nom_admin options
(defconst pcmpl-nom_admin-options
  '("--start-container"
    "--help"
    "--create-container"
    "--remove-container"
    "--start-container"
    "--shutdown-container "
    "--list-container"
    "--install-ip "
    "--remove-ip"
    "--list-ip"
    "--install-ip-in-container"
    "--remove-ip-in-container"
    "--deploy-ip-in-container"
    "--undeploy-ip-in-container"
    "--show-ip-in-container"
    "--list-ip-in-container"
    "--deploy-sa"
    "--undeploy-sa"
    "--list-sa"
    "--start-sa"
    "--shutdown-sa"
    "--list-component"
    "--install-component"
    "--shutdown-component"
    "--start-component"
    "--uninstall-component"
    "temip-ca-V12"
    )
  "List of `nom_admin' options")

(defun pcomplete/nom_admin ()
  "Completion for `nom_admin'"
  (pcomplete-here* pcmpl-nom_admin-options))


(provide 'completion-setup)
