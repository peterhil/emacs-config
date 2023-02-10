;;  Hy is lisp running in the Python interpreter! That means all of
;;  the power of matplotlib, numpy, and scipy with the power of lisp!

(use-package hy-mode
  :ensure t
  :config
  (add-hook 'hy-mode-hook #'paredit-mode)
  (add-hook 'hy-mode-hook #'rainbow-delimiters-mode))
