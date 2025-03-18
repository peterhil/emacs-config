;; ==============================================================================
;; Init
;; ------------------------------------------------------------------------------

;; Disable "Package cl is deprecated" warnings:
;; See https://emacs.stackexchange.com/q/58489/16904
;; todo: cl should be replaced with cl-lib somewhere?
;; (setopt byte-compile-warnings '(cl-functions))
(setopt byte-compile-warnings t)

(configure "init/env")
(configure "init/site-lisp")
(configure "init/use-package")
(configure "init/my-packages")

;; (configure "init/package")
(configure "init/straight")

(defun my-load-modules ()
    (load (concat rc-dir "init/modules.el")))

(add-hook 'after-init-hook 'my-load-modules)
