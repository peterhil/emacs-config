;; ==============================================================================
;; My packages
;; ------------------------------------------------------------------------------


(defvar *system-site-lisp*
  (cond
    ((eq system-type "darwin") "/usr/local/share/emacs/site-lisp/")
    (t "/usr/share/emacs/site-lisp/")))


;; Add paths to your load path (for Homebrew or apt installed packages)
(let ((default-directory *system-site-lisp*))
  (normal-top-level-add-subdirs-to-load-path))


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


(defvar my-packages '(
                      ac-dabbrev
                      ;; ac-python
                      ace-jump-mode
                      ack
                      ;; ack-and-a-half
                      ag
                      alchemist
                      anything
                      auto-complete
                      clojure-mode
                      coffee-mode
                      csv-mode
                      ;; csv-nav
                      cypher-mode
                      d-mode
                      editorconfig
                      ;; elixir-mix
                      elixir-mode
                      elm-mode
                      erlang
                      f
                      faust-mode
                      faustine
                      ;; feature-mode
                      fill-column-indicator
                      fireplace
                      flycheck
                      ;; flycheck-clojure
                      ;; flycheck-haskell
                      flycheck-pyflakes
                      flymake
                      flymake-coffee
                      flymake-css
                      flymake-json
                      flymake-php
                      flymd
                      fuzzy-format
                      ;; git-commit-mode
                      ;; git-rebase-mode
                      grizzl
                      haml-mode
                      hlinum
                      jade-mode
                      jinja2-mode
                      js2-mode
                      json-mode
                      lua-mode
                      less-css-mode
                      let-alist
                      linum-off
                      ;; magit
                      ;; markdown-mode+
                      md-readme
                      ;; mkdown
                      monokai-theme
                      move-text
                      org
                      ;; ox-gfm
                      paredit
                      parinfer
                      php-auto-yasnippets
                      ;; php-completion
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
                      ;; uuidgen
                      ;; vmd-mode
                      ;; w3m
                      web-mode
                      ;; web-server
                      ;; websocket
                      yaml-mode
                      ;; zonokai-theme
                      caml
                      tuareg
                      utop
                      merlin
                      visual-regexp
                      )
  "A list of packages to ensure are installed at launch.")


(defun my-install-package-list ()
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))
