;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

;; Jinja2
(use-package jinja2-mode
  :mode
  (".jinja"
   ;; Do matching on the path and extension
   "/templates/.*\\.html\\'"))


;; ==============================================================================
;; CSS modes
;; ------------------------------------------------------------------------------

;; Css
(use-package css-mode
  :mode (".css" . css-mode))

;; Jade
(use-package jade-mode
  :mode (".jade" . jade-mode))

;; Less CSS
(use-package less-css-mode
  :straight nil
  :mode (".less" . less-css-mode))

;; Sass
(use-package sass-mode
  ;; :commands (sass-mode)
  :defer t
  :mode (".sass" . sass-mode)
  :config
  (require 'sass-mode))

;; Scss
(use-package scss-mode
  :commands (scss-mode scss-compile css-mode web-mode)
  :mode (".scss" . scss-mode)
  :config
  (require 'scss-mode)

  (setq scss-sass-command "sass")

  ;; Compile buffer at save
  (setq scss-compile-at-save nil))

;; Stylus
(use-package stylus-mode :mode "\\.styl\\'")

;; Yaml
(use-package yaml-mode :mode "\\.ya?ml\\'")


;; ==============================================================================
;; CSS utilities
;; ------------------------------------------------------------------------------

;; CSS sort - https://github.com/jcs-elpa/com-css-sort
(use-package com-css-sort
  :commands
  (com-css-sort-attributes-block
   com-css-sort-attributes-document)
  :config
  (progn
    ;; (setq com-css-sort-sort-type 'alphabetic-sort) ; default: 'type-sort

    ;; Sort attributes inside block
    (define-key css-mode-map (kbd "C-c s s") #'com-css-sort-attributes-block)

    ;; Sort attributes through the whole document
    (define-key css-mode-map (kbd "C-c s d") #'com-css-sort-attributes-document)))

;; css-eldoc
(use-package css-eldoc
  :commands turn-on-css-eldoc
  ;; add a hook if you want always to see the selector options in the minibuffer
  :config
  (add-hook 'css-mode-hook 'turn-on-css-eldoc))
