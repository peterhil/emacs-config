;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

;; Exec path from shell
;; https://github.com/purcell/exec-path-from-shell#usage
;;
;; Ensure that environment variables inside Emacs look the same
;; as in the user's shell.

(when (or (memq window-system '(mac ns x))
          (daemonp))
  (use-package exec-path-from-shell
    :config
    (exec-path-from-shell-initialize)))
