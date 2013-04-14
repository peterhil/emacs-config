;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

;; (add-hook 'shell-mode-hook 'dark-shell)

;; Open dark-themed shell
(defun dark-shell () 
  (interactive)
  (let ((color-theme-is-global nil))
    (select-frame (make-frame))
    (color-theme-jsc-dark)
    (shell)))