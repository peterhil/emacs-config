;; -*- coding: utf-8; mode: emacs-lisp -*-
;; Emacs customization file by Peter Hillerström

(package-initialize)

;; ==============================================================================
;; Generic config
;; ------------------------------------------------------------------------------

(setq usr-prefix
      (cond ((eq system-type 'darwin) "/usr/local")
            ((eq system-type 'linux) "/usr")
            (t "/usr")))

(setq rc-dir "~/.emacs.d/rc/")

(setq custom-file (concat rc-dir "custom.el"))
(load custom-file 'no-error)

;; Basic Common Lisp in Emacs Lisp
(eval-when-compile (require 'cl))

(defun configure (path)
  (load-file (concat rc-dir path ".el")))

;; ==============================================================================
;; Site lisp
;; ------------------------------------------------------------------------------

;; Location for external packages, include subdirs
;; When adding modes, put them under their own directory in site-lisp
(let ((default-directory "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; (configure "init")

;; OR when using packages:

(configure "packages")
(add-hook 'after-init-hook
	  #'(lambda ()
	      (load (concat rc-dir "init.el"))))
