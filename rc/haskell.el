;; ==============================================================================
;; Haskell mode
;; ------------------------------------------------------------------------------

(add-hook 'haskell-mode-hook
          '(lambda()
             (fset (make-local-variable 'fill-column) 77)))
