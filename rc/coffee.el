;; ==============================================================================
;; Coffee-script
;; ------------------------------------------------------------------------------

(require 'coffee-mode)

(my-auto-mode-regexps
 'coffee-mode
 '("\\.coffee\\'"
   "^Cakefile$"))

(defun coffee-custom ()
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          'coffee-custom)
