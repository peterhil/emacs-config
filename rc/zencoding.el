;; ==============================================================================
;; Zencoding mode  https://github.com/rooney/zencoding
;; ------------------------------------------------------------------------------
;;
;; Write HTML based on CSS selectors

(use-package zencoding-mode
  ;; Auto-start on any markup modes
  :hook
  (sgml-mode . zencoding-mode)
  (web-mode . zencoding-mode))
