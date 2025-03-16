;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(use-package paredit
  :config
  (show-paren-mode t)
  (use-package paredit-menu)
  :hook ((emacs-lisp-mode-hook . 'paredit-mode)
         (fennel-mode-hook . 'paredit-mode)
         (lisp-mode-hook . 'paredit-mode)
         (scheme-mode-hook . 'paredit-mode)
         (slime-repl-mode-hook . 'paredit-mode)))


;; (use-package paredit-everywhere
;;   :hook (prog-mode-hook . 'paredit-everywhere-mode))
