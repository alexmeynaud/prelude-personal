(defun run-current-file ()
  "Execute the current file.
For example, if the current buffer is the file xx.py,
then it'll call “python xx.py” in a shell.
The file can be php, perl, python, ruby, javascript, bash, ocaml, vb, elisp.
File suffix is used to determine what program to run.

If the file is modified, ask if you want to save first.

If the file is emacs lisp, run the byte compiled version if exist."
  (interactive)
  (let* (
         (suffixMap
          `(
            ("php" . "php")
            ("pl" . "perl")
            ("py" . "python")
            ("py3" . ,(if (string-equal system-type "windows-nt") "c:/Python32/python.exe" "python3"))
            ("rb" . "ruby")
            ("js" . "node")             ; node.js
            ("sh" . "bash")
            ("ml" . "ocaml")
            ("vbs" . "cscript")
            )
          )
         (fName (buffer-file-name))
         (fSuffix (file-name-extension fName))
         (progName (cdr (assoc fSuffix suffixMap)))
         (cmdStr (concat progName " \""   fName "\""))
         )

    (when (buffer-modified-p)
      (when (y-or-n-p "Buffer modified. Do you want to save first?")
        (save-buffer) ) )

    (if (string-equal fSuffix "el") ; special case for emacs lisp
        (load (file-name-sans-extension fName))
      (if progName
          (progn
            (message "Running…")
            (shell-command cmdStr "*run-current-file output*" )
            )
        (message "No recognized program file suffix for this file.")
        ) ) ))

(global-set-key (kbd "<f7>") 'run-current-file)


;; Rebuild tags for webgui client project
(defun webgui-client-build-ctags ()
  (interactive)
  (message "building project tags")
  (let ((root "/home/alex/Projects/oss-cea-nextgen-webgui/webgui/client/"))
    (shell-command (concat "ctags -e -R --extra=+fq --exclude=db --exclude=test --exclude=.git --exclude=public -f " root "TAGS " root))
    (visit-project-tags root))
  
  (message "tags built successfully"))

(global-set-key (kbd "<f9>") 'webgui-client-build-ctags)

(defun visit-project-tags (root)
  (interactive)
  (let ((tags-file (concat root "TAGS")))
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))

(defun json-browse-emacs ()
  "Get JSON in an emacs buffer."
  (interactive)
  (switch-to-buffer (browse-url-emacs (car (browse-url-interactive-arg "URL: "))))
  (read-only-mode -1)
  (rename-buffer (concat "URL" ".json"))
  (json-pretty-print-buffer)
  (json-mode)
  )

