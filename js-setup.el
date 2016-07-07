;; js2-mode
(prelude-require-package 'js2-mode)
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;(add-to-list 'auto-mode-alist '("\\.json\\'" . js2-mode))

; use js2-mode for node files as well
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; Support camelCase
(add-hook 'js2-mode-hook 'subword-mode)
(add-hook 'json-mode-hook 'subword-mode)

;; JS auto completion
;; (prelude-require-package 'ac-js2)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq ac-js2-evaluate-calls t)
;; (setq ac-js2-external-libraries '("/home/alex/Resources/Web/angular-1.2.14/angular.js"))

;; Skewer
(prelude-require-package 'skewer-mode)
(require 'skewer-mode)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'js2-mode-hook 'hs-minor-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'css-mode-hook 'hs-minor-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(add-hook 'json-mode-hook 'hs-minor-mode)
(add-hook 'json-mode 'flymake-json-load)

;; Tern
(prelude-require-package 'tern)
(require 'tern)
(add-to-list 'auto-mode-alist '(".tern-project" . js-mode))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

;; (prelude-require-package 'tern-auto-complete)
;; (require 'tern-auto-complete)

;; (eval-after-load 'tern
;;   '(progn
;;      (require 'tern-auto-complete)
;;      (tern-ac-setup)))


;; Jade
(prelude-require-package 'jade-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; use jslint (requires node to be installed)
(prelude-require-package 'flymake-jslint)
(add-to-list 'load-path "~/Programs/lintnode")
(require 'flymake-jslint)

;; flymake-json
(prelude-require-package 'flymake-json)
(require 'flymake-json)

(setq lintnode-location "~/Programs/lintnode") ;; Make sure we can find the lintnode executable
(setq lintnode-jslint-excludes (list 'nomen 'undef 'plusplus 'onevar 'white)) ;; JSLint can be... opinionated
(setq lintnode-jslint-set "")

;; Basic JS REPL using comint mode
;; (defun node-repl () (interactive)
;;        (pop-to-buffer (make-comint "node-repl" "node" nil "--interactive"))
;;        (node-repl))

;; Other REPL
(prelude-require-package 'nodejs-repl)
(require 'nodejs-repl)
(add-hook 'nodejs-repl-mode-hook 'smartparens-mode)

;; Refactoring
(prelude-require-package 'js2-refactor)
(require 'js2-refactor)

(prelude-require-package 'discover-js2-refactor)
(require 'discover-js2-refactor)

(js2r-add-keybindings-with-prefix "s-x")
(add-hook 'js2-mode-hook #'js2-refactor-mode)

;; JSS
;; An emacs implementation of the client side protocol of webkit and
;; firefox's over-the-wire debugging protocols.
;; (prelude-require-package 'websocket)
;; (require 'websocket)
;; (prelude-require-package 'jss)
;; (require 'jss)
;;(setq jss-webkit-browser "chromium")


(prelude-require-package 'web-beautify)
(require 'web-beautify)

(prelude-require-package 'karma)
(require 'karma)

(js2-imenu-extras-mode)

;; Start the server when we first open a js file and start checking
;(add-hook 'js-mode-hook
;          (lambda ()
;            (lintnode-hook)))
