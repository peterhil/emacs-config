;; ==============================================================================
;; Javascript
;; ------------------------------------------------------------------------------

;; (require 'javascript-mode)
(autoload 'javascript-mode "javascript-mode" nil t)

;; https://stackoverflow.com/questions/35162106/how-to-disable-js2-mode-syntax-checking-globally-in-spacemacs
(setq js2-strict-missing-semi-warning nil)

(my-auto-mode-extensions
 'javascript-mode
 '(
   "js"
   "ts"
   ))

(add-hook 'javascript-mode-hook
          '(lambda()
             (set (make-local-variable 'electric-indent-chars) nil)))
