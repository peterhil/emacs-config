;; ==============================================================================
;; Magit
;; -----------------------------------------------------------------------------

;; Magit is a git client in Emacs:
;; https://magit.vc/manual/magit/index.html

(use-package magit
  :config
  (progn
    ;; (setq magit-auto-revert-mode nil)
    ;; (setq magit-diff-use-overlays nil)
    (global-set-key (kbd "C-x g") 'magit-status)))
