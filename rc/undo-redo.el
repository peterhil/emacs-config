;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

;; (use-package "redo+"
;;   :load-path "site-lisp/redo+")


(use-package "undo-tree"
  :config
  (global-undo-tree-mode)
  (global-set-key (kbd "s-z g") 'global-undo-tree-mode)
  (global-set-key (kbd "s-z t") 'undo-tree-visualize)
  (define-key function-key-map (kbd "s-z z") 'undo)
  (define-key function-key-map (kbd "s-z x") 'redo))


(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)
