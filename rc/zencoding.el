;; ==============================================================================
;; Zencoding mode
;; ------------------------------------------------------------------------------

(require 'zencoding-mode)

;; Auto-start on any markup modes
(add-hook 'sgml-mode-hook 'zencoding-mode)

(global-set-key (kbd "H-z x") 'zencoding-expand-line)

