;; ==============================================================================
;; Emacs Tags
;; ------------------------------------------------------------------------------

(setq path-to-ctags
      ;; (shell-cmd "which ctags")  ; Apple has NIH syndrome again
      (concat usr-prefix "/bin/ctags"))

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "Directory: ")
  (shell-command
   (format "%s -e --verbose=yes --exclude=cache --exclude='vendor*' --exclude=backups --exclude=node_modules -f %sTAGS -R %s"
	       path-to-ctags
	       dir-name
	       (directory-file-name dir-name))))
