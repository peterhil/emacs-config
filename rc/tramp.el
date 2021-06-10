(use-package tramp
  :defer t
  :config
  (progn
    (setq my-tramp-ssh-completions
          '((tramp-parse-sconfig "~/.ssh/config")))

    (setq tramp-backup-directory-alist backup-directory-alist
          tramp-auto-save-directory (locate-user-emacs-file "tramp-auto-save"))

    (setq tramp-default-proxies-alist
          '((".*" "\\`root\\'" "/ssh:%h:")))))
