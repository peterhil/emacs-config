;; -*- coding: utf-8; mode: emacs-lisp -*-
;; Emacs customization file by Peter Hillerström

;; ==============================================================================
;; Generic config
;; ------------------------------------------------------------------------------

;; Define function to shutdown emacs server instance
;; Can be called from shell with: emacsclient -e '(server-shutdown)'

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

(setq usr-prefix
      (cond ((eq system-type 'darwin) "/opt/local")
            ((eq system-type 'linux) "/usr")
            (t "/usr")))

(setq rc-dir "~/.emacs.d/rc/")

(setq custom-file (concat rc-dir "custom.el"))

;; Basic Common Lisp in Emacs Lisp
(require 'cl)

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
