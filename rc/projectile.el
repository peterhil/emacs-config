;; ==============================================================================
;; Projectile mode
;; ------------------------------------------------------------------------------

(use-package "projectile"
  :config
  (projectile-mode +1)

  (setq projectile-enable-caching t)
  (setq projectile-completion-system 'grizzl)

  ;; Press Command-p for fuzzy find in project
  (global-set-key (kbd "C-x p f") 'projectile-find-file)

  ;; Press Command-b for fuzzy switch buffer
  (global-set-key (kbd "C-x p b") 'projectile-switch-to-buffer)
  )
