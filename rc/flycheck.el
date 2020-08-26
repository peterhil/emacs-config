;; ==============================================================================
;; Flycheck mode
;; ------------------------------------------------------------------------------

(add-hook 'after-init-hook #'global-flycheck-mode)


;; Clojure -- flycheck-clojure
(eval-after-load 'flycheck '(flycheck-clojure-setup))


;; Haskell -- flycheck-haskell
(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)


;; Python -- flycheck-pyflakes
(use-package flycheck-pyflakes
  :hook (python-mode . flycheck-mode))

(add-to-list 'flycheck-disabled-checkers 'python-flake8)
(add-to-list 'flycheck-disabled-checkers 'python-pylint)


;; For a GUI Emacs on MacOS we recommend to install and configure
;; exec-path-from-shell to make Emacs use the proper $PATH and avoid a common
;; setup issue on MacOS. See: http://www.flycheck.org/en/latest/
(when (and (eq system-type "darwin") window-system)
  (use-package exec-path-from-shell
    :config
    (exec-path-from-shell-initialize)))
