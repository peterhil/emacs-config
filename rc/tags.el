;; ==============================================================================
;; Emacs Tags
;; ------------------------------------------------------------------------------

(setq path-to-ctags (concat usr-prefix "/bin/ctags"))
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "Directory: ")
  (shell-command
   (format "%s -f %s/TAGS -e -R %s" path-to-ctags dir-name (directory-file-name dir-name))))

