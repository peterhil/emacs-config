;; -*- coding: utf-8; mode: emacs-lisp -*-
;; Emacs customization file by Peter Hillerström

;; ==============================================================================
;; Generic config
;; ------------------------------------------------------------------------------

(setq usr-prefix
      (cond ((eq system-type 'darwin) "/opt/local")
            ((eq system-type 'linux) "/usr")
            (t "/usr")))

; Show full pathname in minibuffer
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; ==============================================================================
;; User extensions
;; ------------------------------------------------------------------------------

;; Location for external packages, include subdirs
;; When adding modes, put them under their own directory in site-lisp
(let ((default-directory "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

;; Basic Common Lisp in Emacs Lisp
(require 'cl)

(setq rc-dir "~/.emacs.d/rc/")

(setq custom-file (concat rc-dir "custom.el"))

(defun configure (path)
  (load-file (concat rc-dir path ".el")))

(dolist (include
         '(
           "locale"
           "editing"
           "keyboard-shortcuts"
           "dired"
           "hex"
           "images"
           "audio"
           ;; "erc"
           ;; "textmate"
           "shell"

           ;; -- Programming tools
           ;; "cedet"
           "diff"
           "git"
           "tags"
           ;; "ecb"
           "auto-completion"
           "smart-tabs"
           "yasnippet"
           ;; "jira"

           ;; -- Markup
           ;; "org"
           "html-markup"
           "markdown"
           "wikipedia"
           ;; "multi-web-mode"
           ;; "cake"
           "zencoding"

           ;; -- Languages
           "common-lisp"
           ;; "scheme"
           ;; "lush"
           "python"
           "ruby"
           ;; "rebol"
           "coffee"
           "js"
           "php"

           ;; -- Colors
           "rainbow-mode"
           "color-theme"
           ))
  (configure include))
;; (configure "shell")
