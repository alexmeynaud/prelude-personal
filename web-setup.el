(prelude-require-package 'elfeed)
(require 'elfeed)

(prelude-require-package 'elfeed-web)
(require 'elfeed-web)

(global-set-key (kbd "C-x w") 'elfeed)

;; Somewhere in your .emacs file
(setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "http://www.terminally-incoherent.com/blog/feed/"
        "https://news.ycombinator.com/rss"
        ("http://planet.emacsen.org/atom.xml" emacs)
        ("http://feeds.feedburner.com/dailyjs" js)
        ("https://www.archlinux.org/feeds/news/" arch linux)
        ("http://linuxfr.org/news.atom" linux)
        ("http://linuxfr.org/redaction/news.atom" linux)
        ("http://linuxfr.org/journaux.atom" linux)))

(prelude-require-package 'restclient)
(require 'restclient)
(add-to-list 'auto-mode-alist '("\\.restclient\\'" . restclient-mode))

(provide 'web-setup)
;;; web-setup ends here
