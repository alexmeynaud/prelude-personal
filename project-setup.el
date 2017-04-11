;(setq projectile-indexing-method 'native)
;(setq projectile-enable-caching t)

(setq projectile-svn-command "find . -type d \\\( -name .svn -o -name target \\\) -prune -o -print0")
(setq projectile-use-git-grep t)
(setq projectile-file-exists-remote-cache-expire nil)
;(setq projectile-generic-command "find . -type d \\\( -name .svn -o -name target \\\) -prune -o -print0")

;; projectile can slow down tramp a lot -> always use the same name for projects!
(setq projectile-mode-line "Projectile")

(setq projectile-project-root-files '("pom.xml"))
(setq projectile-project-root-files-bottom-up '(".git"))
(setq projectile-project-root-files-top-down-recurring '(".svn"))
