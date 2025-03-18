;; ==============================================================================
;; Editorconfig
;; ------------------------------------------------------------------------------

;; Read EditorConfig files (.editorconfig) -- http://editorconfig.org/
;; https://github.com/editorconfig/editorconfig-emacs.git

(use-package editorconfig
  :config
  (setq editorconfig-lisp-use-default-indent t) ; Ignore indent_size on lisp modes
  (editorconfig-mode 1))
