;; Use ediff as diff tool in version control
(eval-after-load "vc-hooks"
         '(define-key vc-prefix-map "=" 'vc-ediff))

(provide 'vc-setup)
