;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(use-package paredit
  :config
  (show-paren-mode t)
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode)
  (add-hook 'fennel-mode-hook 'paredit-mode)
  (add-hook 'lisp-mode-hook 'paredit-mode)
  (add-hook 'scheme-mode-hook 'paredit-mode)
  (add-hook 'slime-repl-mode-hook  'paredit-mode)
  )


(use-package paredit-everywhere
  :init (add-hook 'prog-mode-hook 'paredit-everywhere-mode))


(use-package paredit-menu)
