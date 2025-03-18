;; ==============================================================================
;; Hex and binary file format editing
;; ------------------------------------------------------------------------------

(require 'cl-lib)

;; Better alternative to the builtin hexl-mode
(use-package nhexl-mode)


;; Hexview mode does not have undo, but should be fast
;; https://unix.stackexchange.com/q/18852
(use-package hexview-mode)
