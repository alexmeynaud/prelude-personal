;;; package
;; Org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-support-shift-select t)

;;(setq org-log-done 'time) ; Record timestamp when closing TODO task
;;(setq org-log-done 'note) ; Record timestamp when closing TODO task

(setq browse-url-browser-function (quote browse-url-generic)) ; set default browser to be firefox
(setq browse-url-generic-program "/usr/bin/firefox")

(setq org-todo-keywords
       '((sequence "TODO" "ONGOING" "WAITING" "CANCELED" "DONE")))

(setq org-todo-keyword-faces
      '(("TODO" . org-todo) ("ONGOING" . "LightSalmon") ("WAITING" . "yellow") ("DONE" . org-done) ("CANCELED" . "SkyBlue")))

(setq org-agenda-files (list "~/org"))

(setq org-startup-indented t)

(setq org-default-notes-file "~/org/notes.org")

(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)
   (emacs-lisp . t)
   (sh . t)
   (ditaa . t)
   ))

(setq org-use-property-inheritance t)
(require 'ox-md)

(setq org-export-backends (quote (ascii html icalendar latex md)))
