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
;; Packages
;; ------------------------------------------------------------------------------

;; Elpa repositories

;; (require 'package)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

;; New on Emacs 25 - install packages based on package-selected-packages list:
;; http://endlessparentheses.com/new-in-package-el-in-emacs-25-1-user-selected-packages.html
(package-install-selected-packages)


;; ==============================================================================
;; Lazy load packages with use-package
;; ------------------------------------------------------------------------------

;; Ensure a package is installed
(defun ensure-package-installed (package)
  (unless (package-installed-p package)
    (progn (message "Installing package: %s" package)
	   (package-refresh-contents)
	   (package-install package))))

;; Use-package is a macro to lazily initialize, require and configure packages
;; https://github.com/jwiegley/use-package
(ensure-package-installed 'use-package)


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
