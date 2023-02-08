;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(use-package paredit
  :hook ((emacs-lisp-mode-hook . paredit-mode)
         (fennel-mode-hook . paredit-mode)
         (lisp-mode-hook . paredit-mode)
         (scheme-mode-hook . paredit-mode))
  :init (paredit-mode +1))


(use-package paredit-everywhere
  :init (add-hook 'prog-mode-hook 'paredit-everywhere-mode))


(use-package paredit-menu)
