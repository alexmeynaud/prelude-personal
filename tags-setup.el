(autoload 'gtags-mode "gtags" "" t)

(add-hook 'java-mode-hook 
          '(lambda () 
             (gtags-mode t)
             ))
(setq gtags-suggested-key-mapping t)
;;(setq projectile-tags-command "gtags")

(provide 'tags-setup)
