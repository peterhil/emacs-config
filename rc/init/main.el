;; ==============================================================================
;; Init
;; ------------------------------------------------------------------------------

(configure "init/env")
(configure "init/site-lisp")
(configure "init/use-package")
(configure "init/my-packages")

;; (configure "init/package")
(configure "init/straight")

(defun my-load-modules ()
    (load (concat rc-dir "init/modules.el")))

(add-hook 'after-init-hook 'my-load-modules)
