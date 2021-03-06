;; ==============================================================================
;; Site lisp
;; ------------------------------------------------------------------------------

(setq my-system-site-lisp
  (cond
    ((eq system-type "darwin") "/usr/local/share/emacs/site-lisp/")
    (t "/usr/share/emacs/site-lisp/")))


;; Add system site-lisp paths to your load path (for Homebrew or apt installed packages)
(let ((default-directory my-system-site-lisp))
  (normal-top-level-add-subdirs-to-load-path))


;; Location for external packages, include subdirs
;; When adding modes, put them under their own directory in site-lisp
(let ((default-directory (concat user-emacs-directory "site-lisp")))
  (normal-top-level-add-subdirs-to-load-path))


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

;; ==============================================================================
;; Use-package
;; ------------------------------------------------------------------------------

;; Use-package is a macro to lazily initialize, require and configure packages
;; https://github.com/jwiegley/use-package

;; (add-to-list 'load-path (concat user-emacs-directory "site-lisp/use-package"))
(require 'use-package)
(setq
  ;; Make use-package always install missing packages with use-package-always-ensure
  ;; https://github.com/jwiegley/use-package#installing-use-package
  ;; Note! Incompatible with `straight-use-package-by-default`!
  use-package-always-ensure t

  ;; Pinning versions by giving default value for :pin in each use-package:
  ;; use-package-always-pin "melpa"

  ;; Debugging use-package
  use-package-verbose 'errors
  ;; use-package-expand-minimally t
  )
