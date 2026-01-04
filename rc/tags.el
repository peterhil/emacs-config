;; ==============================================================================
;; Emacs Tags
;; ------------------------------------------------------------------------------

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (let ((path-to-ctags (concat usr-prefix "/bin/ctags"))
         (excludes "--exclude=cache --exclude='vendor*' --exclude=backups --exclude=node_modules"))
     (format "%s -e --verbose=yes %s -f %sTAGS -R %s"
	         path-to-ctags
             excludes
	         dir-name
	         (directory-file-name dir-name)))))
