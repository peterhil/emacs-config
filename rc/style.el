;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

;; Jinja2
(use-package jinja2-mode
  :mode
  ("\\.jinja\\'"
   ;; Do matching on the path and extension
   "/templates/.*\\.html\\'"))


;; ==============================================================================
;; CSS modes
;; ------------------------------------------------------------------------------

;; Css
(use-package css-mode :mode "\\.css\\'")

;; Jade
(use-package jade-mode :mode "\\.jade\\'")

;; Less CSS
(use-package less-css-mode :mode "\\.less\\'")

;; Sass
(use-package sass-mode
  :commands (sass-mode)
  :mode "\\.sass\\'"
  :init
  ;; (add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
  )

;; Scss
(use-package scss-mode
  :ensure t
  ;; :defer t
  :commands (scss-mode scss-compile css-mode web-mode)
  :mode ("\\.scss" . scss-mode)
  ;; :init
  ;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
  :config
  (require 'scss-mode)
  (setq scss-sass-command
        'dart-p
        ;; (expand-file-name "~/.nix-profile/bin/sass")
        ;; "sass"
        )
  (setq scss-compile-at-save nil) ;; Compile buffer at save
  )

;; Stylus
(use-package stylus-mode :mode "\\.styl\\'")

;; Yaml
(use-package yaml-mode :mode "\\.ya?ml\\'")
