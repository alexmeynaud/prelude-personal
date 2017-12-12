;; CIDER init is managed by prelude
;; -------------
(prelude-require-package 'clojure-cheatsheet)
(require 'clojure-cheatsheet)

;; (prelude-require-package 'clj-refactor)
;; (require 'clj-refactor)

(eval-after-load 'clojure-mode
  '(progn
     (define-key clojure-mode-map (kbd "C-c C-h") #'clojure-cheatsheet)))

(prelude-require-package 'clojure-snippets)
(require 'clojure-snippets)



(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)


(provide 'clojure-setup)
