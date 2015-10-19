;; ==============================================================================
;; Emacs Lisp utility functions for startup
;; ------------------------------------------------------------------------------

;; Check if a commands path matches a string using the shell command which
(defun command-which-matches (cmd match-str)
     (shell-command (concat "which" " " cmd))
     (if (string-match match-str
                       (with-current-buffer (get-buffer "*Shell Command Output*")
                         (buffer-string))
                       )
         t
       nil))
