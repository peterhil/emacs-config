;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

;(use-package "redo+")

(use-package "undo-tree"
  :config
  (global-undo-tree-mode)
  (global-set-key (kbd "H-x u") 'global-undo-tree-mode)
  (define-key function-key-map (kbd "H-z") 'undo)
  (define-key function-key-map (kbd "H-Z") 'redo))


(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)
