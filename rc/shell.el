;; ==============================================================================
;; Shell
;; ------------------------------------------------------------------------------

(add-hook 'shell-mode-hook 'dark-shell)

; Function to open dark-themed shell
(defun dark-shell () 
  (interactive)
  (let ((color-theme-is-global nil))
    (select-frame (make-frame))
    (color-theme-jsc-dark)
    (shell)))