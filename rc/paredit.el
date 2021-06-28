;; =============================================================================
;; Paredit
;; -----------------------------------------------------------------------------

(use-package "paredit-mode"
  :ensure paredit
  :hook ((
          emacs-lisp-mode
          eval-expression-minibuffer-setup
          ielm-mode
          lisp-interaction-mode
          lisp-mode
          scheme-mode
          ))
  :init (paredit-mode t)
  )

;; (use-package "paredit-everywhere"
;;   :ensure t
;;   :init (add-hook 'prog-mode-hook 'paredit-everywhere-mode))

(use-package "paredit-menu"
  :ensure t)
