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

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;; ==============================================================================
;; Generic config
;; ------------------------------------------------------------------------------

(setq usr-prefix
      (cond ((eq system-type 'darwin) "/opt/local")
            ((eq system-type 'linux) "/usr")
            ((eq system-type 'berkeley-unix) "/usr/local")
            (t "/usr")))

(setq user-emacs-directory "~/.emacs.d/")  ; Prevent Aquamacs using a different location
(setq rc-dir (concat user-emacs-directory "rc/"))

(setq custom-file (concat rc-dir "custom.el"))
(load custom-file 'no-error)

(defun configure (path)
  (load-file (concat rc-dir path ".el")))


(configure "init")
(configure "packages")
(add-hook 'after-init-hook
          #'(lambda ()
              (load (concat rc-dir "modules.el"))))
