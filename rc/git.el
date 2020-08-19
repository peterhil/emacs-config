;; ==============================================================================
;; Git support
;; -----------------------------------------------------------------------------

(use-package "git")
(use-package "vc-git")
(use-package "vc-annotate")

;; Magit git client in Emacs: https://magit.vc/manual/magit/index.html
(use-package "magit"
  :disabled
  :init
  ;; Disable auto revert mode, and suppress annoying message about the feature.
  ;; See background: https://github.com/magit/magit/issues/1803
  (setq magit-last-seen-setup-instructions "1.4.0")
  (setq magit-auto-revert-mode nil)
  (setq magit-diff-use-overlays nil)
  )
