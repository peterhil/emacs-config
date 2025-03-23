;; ==============================================================================
;; Anything - a "spotlight" for Emacs
;; ------------------------------------------------------------------------------

(use-package anything
  :bind ("C-x a n" . anything-mini)
  :config
  (setopt anything-command-map-prefix-key "C-x a")

  ;; Fix errors about void variables
  (setopt browse-url-galeon-program "firefox")
  (setopt browse-url-mosaic-program "firefox")
  (setopt browse-url-netscape-program "firefox"))
