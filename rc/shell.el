;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

;; Ensure that environment variables inside Emacs look the same as in the user's shell
;; https://github.com/purcell/exec-path-from-shell
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns x))
  :init
  (exec-path-from-shell-initialize))


;; Open dark-themed shell
(defun my-dark-shell ()
  (interactive)
  (let ((color-theme-is-global nil))
    (select-frame (make-frame))
    (color-theme-jsc-dark)
    (shell)))


;; (add-hook 'shell-mode-hook 'my-dark-shell)
