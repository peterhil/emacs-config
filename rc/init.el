;; ==============================================================================
;; Init
;; ------------------------------------------------------------------------------

;; Disable "Package cl is deprecated" warnings:
;; See https://emacs.stackexchange.com/q/58489/16904
(setq byte-compile-warnings '(cl-functions))

(configure "init/env")
(configure "init/site-lisp")
(configure "init/package")
(configure "init/use-package")
(configure "init/packages")

(add-hook 'after-init-hook
          #'(lambda ()
              (load (concat rc-dir "init/modules.el"))))
