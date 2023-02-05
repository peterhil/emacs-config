(use-package v-mode
  :ensure t
  ;; :straight (v-mode
  ;;            :type git
  ;;            :host github
  ;;            :repo "damon-kwok/v-mode"
  ;;            :files ("tokens" "v-mode.el"))
  :config
  :bind-keymap
  ("M-z" . v-menu)
  ("<f6>" . v-menu)
  ("C-c C-f" . v-format-buffer)
  :mode ("\\(\\.v?v\\|\\.vsh\\)$" . 'v-mode))
