;; ==============================================================================
;; Coffee-script
;; ------------------------------------------------------------------------------

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/coffee-mode")
(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; Idiomatic CoffeeScript uses two spaces. We can set our
;; `tab-width` to two for `coffee-mode` using the `coffee-mode-hook`:

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))
