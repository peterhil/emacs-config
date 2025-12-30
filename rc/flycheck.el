;; ==============================================================================
;; Flycheck mode
;; ------------------------------------------------------------------------------

;; For a GUI Emacs on MacOS we recommend to install and configure
;; exec-path-from-shell to make Emacs use the proper $PATH and avoid a common
;; setup issue on MacOS. See: http://www.flycheck.org/en/latest/
;;
;; See shell.el for exec-path-from-shell config.

(use-package flycheck
  :ensure t
  :hook (prog-mode . global-flycheck-mode))


(use-package flycheck-clojure
  :hook (clojure-mode . flycheck-clojure-setup))


(use-package flycheck-haskell
  :hook (haskell-mode . flycheck-haskell-setup))
