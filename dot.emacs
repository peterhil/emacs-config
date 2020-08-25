;; -*- coding: utf-8; mode: emacs-lisp -*-
;; Emacs customization file by Peter Hillerström
;; ____________________________________________________________________________
;; Aquamacs custom-file warning:
;; Warning: After loading this .emacs file, Aquamacs will also load
;; customizations from `custom-file' (customizations.el). Any settings there
;; will override those made here.
;; Consider moving your startup settings to the Preferences.el file, which
;; is loaded after `custom-file':
;; ~/Library/Preferences/Aquamacs Emacs/Preferences
;; _____________________________________________________________________________


;; ==============================================================================
;; Generic config
;; ------------------------------------------------------------------------------

(setq usr-prefix
      (cond ((eq system-type 'darwin) "/usr/local")
            ((eq system-type 'linux) "/usr")
            (t "/usr")))

(setq rc-dir (concat user-emacs-directory "rc/"))

(setq custom-file (concat rc-dir "custom.el"))
(load custom-file 'no-error)

;; Basic Common Lisp in Emacs Lisp
(eval-when-compile (require 'cl-lib))

(defun configure (path)
  (load-file (concat rc-dir path ".el")))


;; ==============================================================================
;; Site lisp
;; ------------------------------------------------------------------------------

;; Location for external packages, include subdirs
;; When adding modes, put them under their own directory in site-lisp
(let ((default-directory (concat user-emacs-directory "site-lisp")))
  (normal-top-level-add-subdirs-to-load-path))


(configure "init")
(configure "packages")
(add-hook 'after-init-hook
          #'(lambda ()
              (load (concat rc-dir "modules.el"))))
