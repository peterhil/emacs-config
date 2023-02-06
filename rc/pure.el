;; ==============================================================================
;; Pure language
;; ------------------------------------------------------------------------------

;; Pure languagge works with PureData and Faust
;;
;; Web page: https://agraef.github.io/pure-lang/
;; Wikipedia: https://en.wikipedia.org/wiki/Pure_(programming_language)

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
