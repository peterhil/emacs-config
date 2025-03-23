;; ==============================================================================
;; Rainbow mode
;; ------------------------------------------------------------------------------
;;
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode

(use-package rainbow-mode
  :hook
  (css-mode .rainbow-mode)
  (emacs-lisp-mode .rainbow-mode)
  (less-css-mode .rainbow-mode)
  (sass-mode .rainbow-mode)
  (scss-mode .rainbow-mode)
  (sgml-mode . rainbow-mode)
  (stylus-mode .rainbow-mode)
  (text-mode . rainbow-mode))
