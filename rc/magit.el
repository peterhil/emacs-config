;; ==============================================================================
;; Magit
;; -----------------------------------------------------------------------------

;; Magit is a git client in Emacs:
;; https://magit.vc/manual/magit/index.html

(use-package magit
  :bind (("C-c g" . magit)
         ("C-x g" . magit-status)))
