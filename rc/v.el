(use-package v-mode
  :straight (v-mode
             :type git
             :host github
             :repo "damon-kwok/v-mode"
             :files ("tokens" "v-mode.el"))
  :bind
  ("M-z" . v-menu)
  ("C-c C-f" . v-format-buffer)
  :mode (("\\.v?v$" . 'v-mode)
         ("\\.vsh$" . 'v-mode)))
