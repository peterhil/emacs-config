(use-package tramp
  :defer t
  :config
  (setq my-tramp-ssh-completions
        '((tramp-parse-sconfig "~/.ssh/config")))

  (setopt tramp-backup-directory-alist backup-directory-alist)
  (setopt tramp-auto-save-directory (locate-user-emacs-file "tramp-auto-save"))

  (setopt tramp-default-proxies-alist
          '((".*"
             "\\`root\\'"
             "/ssh:%h:"))))
