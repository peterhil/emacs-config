;; ==============================================================================
;; Hex and binary file format editing
;; ------------------------------------------------------------------------------

;; Better alternative to the builtin hexl-mode and has undo through overlays:
;; https://unix.stackexchange.com/q/18852
(use-package nhexl-mode
  :bind ("C-c x" . nhexl-mode))
