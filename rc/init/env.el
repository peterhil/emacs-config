;; ==============================================================================
;; Environment setup
;; ------------------------------------------------------------------------------

;; TODO Use shell command `which emacs` to set this automatically.
;; See rc/reasonml.el for an example.
(setq usr-prefix
      (cond ((eq system-type 'darwin) "/opt/local")
            ((eq system-type 'linux) "/usr")
            ((eq system-type 'berkeley-unix) "/usr/local")
            (t "/usr")))

(setq user-home-dir
      (getenv "HOME"))

(setq app-support-dir
      (expand-file-name
       (concat user-home-dir
               (if (eq system-type 'darwin)
                   "/Library/Application Support/"
                 "/.local/share/"))))

(defun shell-cmd (cmd)
  "Returns the stdout output of a shell command or nil if the command returned
   an error"
  (car (ignore-errors (apply 'process-lines (split-string cmd)))))

(when window-system
  (customize-set-variable 'tool-bar-mode nil))
