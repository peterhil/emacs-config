;; ==============================================================================
;; Environment setup
;; ------------------------------------------------------------------------------

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

(when window-system
  (customize-set-variable 'tool-bar-mode nil))
