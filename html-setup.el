(prelude-require-package 'impatient-mode)
(require 'impatient-mode)
(setq httpd-port 9090)

(prelude-require-package 'less-css-mode)
(require 'less-css-mode)

;; Additional snippets for html5
(add-to-list 'load-path "~/elisp/HTML5-YASnippet-bundle")
;; some time after yasnippet has been loaded execute this
(require 'html5-snippets)

;; Add snippets for angularjs
(prelude-require-package 'angular-snippets)
(require 'angular-snippets)


(eval-after-load "web-mode"
  '(define-key web-mode-map (kbd "C-c C-d") 'ng-snip-show-docs-at-point))

;; Zen coding
;;(add-to-list 'load-path "~/elisp/zencoding")
;;(require 'zencoding-mode)

;; Emmet
(prelude-require-package 'emmet-mode)
(require 'emmet-mode)
(prelude-require-package 'ac-emmet)
(require 'ac-emmet)

(add-hook 'web-mode-hook  'emmet-mode)
(add-hook 'web-mode-hook 'ac-emmet-html-setup)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'css-mode-hook 'ac-emmet-css-setup)

;; Have AngularJS tags visible in imenu
(eval-after-load 'web-mode
  '(progn
     ;; angular imenu
     (add-to-list 'web-mode-imenu-regexp-list
                  '(" \\(ng-[a-z]*\\)=\"\\([a-zA-Z0-9]*\\)" 1 2 "="))))


;; Lorem to insert latin text
(prelude-require-package 'lorem-ipsum)
(require 'lorem-ipsum)
