;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

;; https://github.com/purcell/exec-path-from-shell
(use-package exec-path-from-shell
  :init
  (when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)))

;; (add-hook 'shell-mode-hook 'dark-shell)

;; Open dark-themed shell
(defun dark-shell () 
  (interactive)
  (let ((color-theme-is-global nil))
    (select-frame (make-frame))
    (color-theme-jsc-dark)
    (shell)))
