;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

;; (use-package redo+
;;   :load-path "site-lisp/redo+")


(use-package undo-tree
  :config
  (global-undo-tree-mode)

  ;; Prevent undo tree files from polluting your project directories
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

  (global-set-key (kbd "M-s-z g") 'global-undo-tree-mode)
  (global-set-key (kbd "M-s-z t") 'undo-tree-visualize)
  (define-key function-key-map (kbd "M-s-z z") 'undo)
  (define-key function-key-map (kbd "M-s-z x") 'redo)
  )


(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)
