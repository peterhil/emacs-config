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
    ;; Use non-interactive shell for faster startup
    ;; https://github.com/purcell/exec-path-from-shell#making-exec-path-from-shell-faster
    (setq exec-path-from-shell-arguments nil)
    (exec-path-from-shell-initialize)))
