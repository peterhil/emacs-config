;; company-mode

(use-package company
  :ensure t
  :config
  ;; (add-hook 'after-init-hook 'global-company-mode)
  (global-company-mode 1)
  (global-set-key (kbd "C-c c") 'company-complete))
