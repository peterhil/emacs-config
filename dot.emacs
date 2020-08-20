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
;; Packages
;; ------------------------------------------------------------------------------

(require 'package)

;; Set up Elpa package repositories
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

;; New on Emacs 25 - install packages based on package-selected-packages list:
;; http://endlessparentheses.com/new-in-package-el-in-emacs-25-1-user-selected-packages.html
;; (package-install-selected-packages)

;; Use-package is a macro to lazily initialize, require and configure packages
;; https://github.com/jwiegley/use-package

(add-to-list 'load-path "~/.emacs.d/site-lisp/use-package")
(require 'use-package)


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
(eval-when-compile (require 'cl-lib))

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
