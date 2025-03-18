;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(defvar my-paredit-modes
  '(emacs-lisp-mode
    fennel-mode
    lisp-mode
    scheme-mode
    slime-repl-mode))

(use-package paredit
  :config
  (use-package paredit-menu)
  :hook
  (my-paredit-modes . enable-paredit-mode))

(use-package paredit-everywhere
  :hook (prog-mode-hook . paredit-everywhere-mode))
