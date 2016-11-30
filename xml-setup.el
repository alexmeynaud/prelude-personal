;; XML pretty printing utility function
(defun xml-pretty-print-region (begin end)
   "Pretty format XML markup in region. You need to have nxml-mode http://www.emacswiki.org/cgi-bin/wiki/NxmlMode installed to do this.  The function inserts linebreaks to separate tags that have nothing but whitespace between them.  It then indents the markup by using nxml's indentation rules."
   (interactive "r")
   (save-excursion
     (nxml-mode)
     (goto-char begin)
     (while (search-forward-regexp "\>[ \\t]*\<" nil t)
       (backward-char) (insert "\n"))
     (indent-region begin end))
   (message "Ah, much better!"))

;; NXML
;(push "~/.emacs.d/personal/schemas/schemas.xml" rng-schema-locating-files)
(setq nxml-auto-insert-xml-declaration-flag t)
(setq nxml-slash-auto-complete-flag t)
(add-hook 'nxml-mode-hook 'turn-on-auto-fill)

(defun nxml-custom-keybindings ()
  (define-key nxml-mode-map "\C-cC-c" 'nxml-complete))
(add-hook 'nxml-mode-hook 'nxml-custom-keybindings)

;; Enable tags folding
(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))


(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; Auto loading
(add-to-list 'auto-mode-alist
             (cons (concat "\\." (regexp-opt '("xml" "xsd" "sch" "rng" "xslt"  "rss") t) "\\'")
                   'nxml-mode))
;; (add-to-list 'auto-mode-alist
;;              (cons (concat "\\." (regexp-opt '("xml" "xsd" "sch" "rng" "xslt" "svg" "rss") t) "\\'")
;;                    'nxml-mode))

;; (unify-8859-on-decoding-mode)

;; (setq magic-mode-alist
;;       (cons '("<\\?xml " . nxml-mode)
;;             magic-mode-alist))
;; (fset 'xml-mode 'nxml-mode)
;; ;;(fset 'html-mode 'nxml-mode)

;; (rng-nxml-mode-init)
;; (push "/home/alex/.emacs.d/schemas/schemas.xml" rng-schema-locating-files)
;; (setq nxml-auto-insert-xml-declaration-flag t)
;; (setq nxml-slash-auto-complete-flag t)
;; ;;(add-hook 'nxml-mode-hook 'turn-on-auto-fill)

;; (defun nxml-custom-keybindings ()
;; (define-key nxml-mode-map "\C-cC-c" 'nxml-complete))
;; (add-hook 'nxml-mode-hook 'nxml-custom-keybindings)
