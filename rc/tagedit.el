(use-package tagedit
  :init
  (progn
    ;; https://github.com/magnars/tagedit#experimental-tag-editing
    ;; (tagedit-add-experimental-features)

    ;; Hook to HTML mode
    (eval-after-load 'sgml-mode
      '(progn
         (require 'tagedit)
         (tagedit-add-paredit-like-keybindings)
         (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))
    ))
