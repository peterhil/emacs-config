;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(use-package paredit
  :bind ("C-c p" . paredit-mode)
  :config (use-package paredit-menu)
  :hook ((emacs-lisp-mode . enable-paredit-mode)
         (fennel-mode . enable-paredit-mode)
         (lisp-mode . enable-paredit-mode)
         (scheme-mode . enable-paredit-mode)
         (slime-repl-mode . enable-paredit-mode)))

(use-package paredit-everywhere
  :bind ("C-c M-p" . paredit-everywhere-mode)
  ;; :hook (prog-mode-hook . paredit-everywhere-mode)
  )
