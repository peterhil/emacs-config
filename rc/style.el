;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

(require 'jinja2-mode)
(my-auto-mode-regexps
 'jinja2-mode
 '("\\.jinja\\'"
   ;; Do matching on the path and extension
   "/templates/.*\\.html\\'"))

;; YAML
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya\\?ml\\'" . yaml-mode))

;; CSS modes
(require 'css-mode)
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

;; Less CSS
(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;; Stylus
(require 'stylus-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . stylus-mode))

;; SASS and SCSS
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(setq scss-compile-at-save nil)

;; Stylus
(require 'sws-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode))

;; Jade
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.jade\\'" . jade-mode))
