;; ==============================================================================
;; Hex and binary file format editing
;; ------------------------------------------------------------------------------

;; Better alternative to the builtin hexl-mode
;; (use-package nhexl-mode)


(use-package hexview-mode
  :straight (hexview-mode :type git :host github :repo "walterdejong/hexview"))


;; (use-package binview
;;   :load-path "site-lisp/binview")
