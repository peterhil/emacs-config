;; ==============================================================================
;; Anything - a "spotlight" for Emacs
;; ------------------------------------------------------------------------------

(use-package "anything"
  :commands anything
  :ensure t
  )

(use-package "anything-config"
  :after (anything)
  :bind ("C-x a n" . anything-mini)
  :commands anything
  :ensure nil
  :load-path "site-lisp/anything-config"
  :requires anything
  )
