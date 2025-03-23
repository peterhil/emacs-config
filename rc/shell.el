;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

;; Ensure that environment variables inside Emacs look the same
;; as in the user's shell: https://github.com/purcell/exec-path-from-shell
(use-package exec-path-from-shell
  :defer t
  :if (memq window-system '(mac ns))
  :init
  (exec-path-from-shell-initialize))
