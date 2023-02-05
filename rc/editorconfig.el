;; ==============================================================================
;; Editorconfig
;; ------------------------------------------------------------------------------

(use-package editorconfig
  ;; Read EditorConfig files (.editorconfig) -- http://editorconfig.org/
  ;; https://github.com/editorconfig/editorconfig-emacs.git
  :config
  (editorconfig-mode 1)

  ;; Ignore indent_size on lisp modes
  (setq editorconfig-lisp-use-default-indent t)
  )
