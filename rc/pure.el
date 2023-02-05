;; ==============================================================================
;; Pure language
;; ------------------------------------------------------------------------------

;; HideShow support
;; (use-package hideshow
;;   :hook (pure-mode . 'hs-minor-mode))

;; Pure documentation browsing with w3m
;; (use-package w3m-load)

(use-package pure-mode
  :load-path "site-lisp/pure-mode"
  :mode
  "\\.pure\\'"
  "\\.purerc\\'"
  :hook (
         (pure-mode . 'turn-on-font-lock)
         (pure-eval-mode . 'turn-on-font-lock)))
