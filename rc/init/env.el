;; ==============================================================================
;; Environment setup
;; ------------------------------------------------------------------------------

;; WORKAROUND a bug:
;; "Warning (comp): ld: warning: -undefined dynamic_lookup may not work with chained fixups"
;; https://www.reddit.com/r/emacs/comments/xfhnzz/weird_errors_with_latest_build_of_emacs/
;; https://github.com/emacs-mirror/emacs/commit/97b928ce09d6034ebcb541fb548e5d4862302add
(when (eq system-type 'darwin)
  (customize-set-variable 'native-comp-driver-options '("-Wl,-w")))

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
