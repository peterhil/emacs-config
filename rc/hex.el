;; ==============================================================================
;; Hex and binary file format editing
;; ------------------------------------------------------------------------------

;; Better alternative to the builtin hexl-mode and has undo through overlays:
;; https://unix.stackexchange.com/q/18852
(use-package nhexl-mode
  :bind ("C-c x" . nhexl-mode))


;; Hexview mode does not have undo, but should be fast
;; (require 'cl-lib)
;; (use-package hexview-mode)
