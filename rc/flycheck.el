;; ==============================================================================
;; Flycheck mode
;; ------------------------------------------------------------------------------

(add-hook 'after-init-hook #'global-flycheck-mode)

;; Clojure -- flycheck-clojure
(eval-after-load 'flycheck '(flycheck-clojure-setup))

;; Haskell -- flycheck-haskell
(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)

;; Python -- flycheck-pyflakes
(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

(add-to-list 'flycheck-disabled-checkers 'python-flake8)
(add-to-list 'flycheck-disabled-checkers 'python-pylint)
