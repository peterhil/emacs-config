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
  use-package-always-ensure t
  use-package-verbose 'errors
  ;; use-package-expand-minimally t
  )

;; Make use-package always install missing packages
;; https://github.com/jwiegley/use-package#installing-use-package
;; Note! Incompatible with `straight-use-package-by-default`!

;; (require 'use-package-ensure)
;; (setq use-package-always-ensure t)

;; Default value for :pin in each use-package.
;; (setq use-package-always-pin "melpa")
