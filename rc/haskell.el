;; Haskell

(add-to-list 'load-path "~/.emacs.d/site-lisp/haskell-mode/")
(require 'haskell-mode-autoloads)
(add-to-list 'Info-default-directory-list "~/.emacs.d/site-lisp/haskell-mode/")

;; Indentation: choose ONE of simple-indent, indent or indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

