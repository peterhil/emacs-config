;; ==============================================================================
;; Zencoding mode  https://github.com/rooney/zencoding
;; ------------------------------------------------------------------------------

(require 'cl-lib)

(use-package zencoding-mode
  :config
  (progn
    ;; Auto-start on any markup modes
    (add-hook 'less-css-mode-hook 'zencoding-mode)
    (add-hook 'sgml-mode-hook 'zencoding-mode)
    (add-hook 'web-mode-hook 'zencoding-mode)))
