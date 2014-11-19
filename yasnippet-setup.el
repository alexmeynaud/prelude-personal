;; YASNIPPET

(prelude-require-package 'yasnippet)
(require 'yasnippet)
(yas/global-mode 1)
;(setq yas/trigger-key "\C-x\C-ay")

;; Remap the expand key as TAB is overloaded in many other modes 
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "s-/") 'yas-expand)

;; Set path to dict dir
(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/personal/snippets")))
;(setq personal-snippets-dir (expand-file-name "personal/snippets" user-emacs-directory))
;(setq yas-snippet-dirs (append yas-snippet-dirs personal-snippets-dir))
;(add-hook 'web-mode-hook #'(lambda () (set (make-local-variable 'yas-extra-modes) 'html-mode)))
;(setq yas/root-directory personal-snippets-dir)
;(yas/load-directory yas/root-directory)

;; Choose snippet with IDO
(defun yas-ido-expand ()
  "Lets you select (and expand) a yasnippet key"
  (interactive)
  (let ((original-point (point)))
    (while (and
            (not (= (point) (point-min) ))
            (not
             (string-match "[[:space:]\n]" (char-to-string (char-before)))))
      (backward-word 1))
    (let* ((init-word (point))
           (word (buffer-substring init-word original-point))
           (list (yas-active-keys)))
      (goto-char original-point)
      (let ((key (remove-if-not
                  (lambda (s) (string-match (concat "^" word) s)) list)))
        (if (= (length key) 1)
            (setq key (pop key))
          (setq key (ido-completing-read "key: " list nil nil word)))
        (delete-char (- init-word original-point))
        (insert key)
        (yas-expand)))))

(define-key yas-minor-mode-map (kbd "<C-tab>")     'yas-ido-expand)

;; auto-yasnippet to quickly create snippt

;; Reload snippets after new new personal additions
(yas-reload-all 1)

(provide 'yasnippet-setup)
