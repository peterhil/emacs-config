;; ==============================================================================
;; Anything - a "spotlight" for Emacs
;; ------------------------------------------------------------------------------

(use-package anything
  :bind ("C-x a n" . anything-mini)
  :init
  ;; Fix errors about void variables
  (setq browse-url-galeon-program "firefox"
        browse-url-mosaic-program "firefox"
            browse-url-netscape-program "firefox")
  :config
  (setopt anything-command-map-prefix-key "C-x a"))
