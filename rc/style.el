;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

;; Jinja2
(use-package "jinja2-mode"
  :mode
  ("\\.jinja\\'"
   ;; Do matching on the path and extension
   "/templates/.*\\.html\\'"))

;; ==============================================================================
;; CSS modes
;; ------------------------------------------------------------------------------

;; Css
(use-package "css-mode" :mode "\\.css\\'")

;; Jade
(use-package "jade-mode" :mode "\\.jade\\'")

;; Less CSS
(use-package "less-css-mode" :mode "\\.less\\'")

;; Sass and Scss
(use-package "scss-mode"
  :config
  (setq scss-compile-at-save nil)
  :mode
  (
    ("\\.sass\\'" . sass-mode)
    ("\\.scss\\'" . scss-mode)
    ))

;; Stylus
(use-package "stylus-mode" :mode "\\.styl\\'")

;; Yaml
(use-package "yaml-mode" :mode "\\.ya?ml\\'")
