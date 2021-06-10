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
  :hook ((scss-mode-hook . 'paredit-mode))
  )

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
  (com-css-sort
   com-css-sort-attributes-block
   com-css-sort-attributes-document)
  :config
  (progn
    ;; (setq com-css-sort-sort-type 'alphabetic-sort) ; default: 'type-sort

    ;; Sort attributes inside block
    (define-key css-mode-map (kbd "C-k s") #'com-css-sort-attributes-block)

    ;; Sort attributes through the whole document
    (define-key css-mode-map (kbd "C-k d") #'com-css-sort-attributes-document)))

;; css-eldoc
(use-package css-eldoc
  :commands turn-on-css-eldoc
  ;; add a hook if you want always to see the selector options in the minibuffer
  :config
  (add-hook 'css-mode-hook 'turn-on-css-eldoc)
  (add-hook 'scss-mode-hook 'turn-on-css-eldoc))
