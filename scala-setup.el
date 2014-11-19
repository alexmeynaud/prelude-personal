
;; Scala support
;; -------------
(prelude-require-package 'scala-mode2)
(require 'scala-mode2)

;; read .sbt files with scala mode
(setq auto-mode-alist (cons '("\\.sbt$" . scala-mode) auto-mode-alist))

;; Spell check comments in java programs
(add-hook 'scala-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            ; ...
          ))
(setq flyspell-issue-message-flag nil)

;; Ensime
(prelude-require-package 'ensime)
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Javadoc in ensime
;; Javadoc for Neo4j
(defun make-neo4j-doc-url (type &optional member)
  (ensime-make-java-doc-url-helper
    "file:///home/alex/Programs/Neo4j/neo4j-enterprise-1.7/doc/java/api" type member))

(defun make-neo4j-graphdb-doc-url (type &optional member)
  (ensime-make-java-doc-url-helper
    "file:///home/alex/Programs/Neo4j/neo4j-enterprise-1.7/doc/java/api/org/neo4j/graphdb" type member))


(add-to-list 'ensime-doc-lookup-map '("^org\\.neo4j\\." . make-neo4j-doc-url))
(add-to-list 'ensime-doc-lookup-map '("^org\\.neo4j\\.graphdb\\." . make-neo4j-graphdb-doc-url))

(provide 'scala-setup)
