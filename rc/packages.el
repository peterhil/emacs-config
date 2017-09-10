;; ==============================================================================
;; Elpa packages
;; ------------------------------------------------------------------------------

(require 'package)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)

(package-initialize)


(defun package-update-load-path ()
  "Update the load path for newly installed packages."
  (interactive)
  (let ((package-dir (expand-file-name package-user-dir)))
    (mapc (lambda (pkg)
            (let ((stem (symbol-name (car pkg)))
                  (version "")
                  (first t)
                  path)
              (mapc (lambda (num)
                      (if first
                          (setq first nil)
                        (setq version (format "%s." version)))
                      (setq version (format "%s%s" version num)))
                    (aref (cdr pkg) 0))
              (setq path (format "%s/%s-%s" package-dir stem version))
              (add-to-list 'load-path path)))
          package-alist)))


;; Auto-download archive if missing
(when (not package-archive-contents)
  (package-refresh-contents))


;; Auto-download missing packages
(defvar my-packages '(
                      ac-dabbrev
                      ace-jump-mode
                      ack
                      ack-and-a-half
                      ag
                      alchemist
                      anything
                      ;; auto-complete
                      clojure-mode
                      coffee-mode
                      csv-mode
                      csv-nav
                      editorconfig
                      elixir-mix
                      elixir-mode
                      elm-mode
                      erlang
                      f
                      feature-mode
                      flycheck
                      ;; flycheck-clojure
                      ;; flycheck-haskell
                      flycheck-pyflakes
                      flymake
                      flymake-coffee
                      flymake-css
                      flymake-json
                      flymake-php
                      fuzzy-format
                      grizzl
                      haml-mode
                      hlinum
                      jinja2-mode
                      js2-mode
                      less-css-mode
                      let-alist
                      linum-off
                      ;; magit
                      monokai-theme
                      move-text
                      org
                      paredit
                      parinfer
                      php-auto-yasnippets
                      php-completion
                      php-mode
                      projectile
                      python-mode
                      qml-mode
                      rainbow-mode
                      ruby-compilation
                      s
                      sass-mode
                      scss-mode
                      slime
                      smartparens
                      spacegray-theme
                      spacemacs-theme
                      stylus-mode
                      w3m
                      web-mode
                      yaml-mode
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; (package-install 'pure)

(provide 'packages)
