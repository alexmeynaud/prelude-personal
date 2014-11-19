;(setq projectile-indexing-method 'native)
;(setq projectile-enable-caching t)

(setq projectile-svn-command "find . -type d \\\( -name .svn -o -name target \\\) -prune -o -print0")
(setq projectile-use-git-grep t)
;(setq projectile-generic-command "find . -type d \\\( -name .svn -o -name target \\\) -prune -o -print0")
