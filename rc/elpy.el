(use-package elpy
  :defer t
  :init
  (advice-add 'python-mode :before 'elpy-enable)
  :config
  (setq elpy-modules
    '(
      elpy-module-sane-defaults
      elpy-module-company
      elpy-module-eldoc
      elpy-module-flymake
      ;; elpy-module-highlight-indentation
      elpy-module-pyvenv
      elpy-module-yasnippet
      elpy-module-django
      )))
