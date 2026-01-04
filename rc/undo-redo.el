;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

(use-package redo+
  :defer t)

(use-package undo-tree
  :bind
  ("C-c u g" . global-undo-tree-mode)
  ("C-c u v" . undo-tree-visualize)

  :config
  (global-undo-tree-mode)

  ;; Prevent undo tree files from polluting your project directories
  (setopt undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo"))))
