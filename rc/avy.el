;; ==============================================================================
;; Avy: Jump to things in Emacs tree-style
;; https://github.com/abo-abo/avy
;; ------------------------------------------------------------------------------

(use-package avy
  :config
  (avy-setup-default)

  (global-set-key (kbd "C-.") 'avy-goto-char)
  (global-set-key (kbd "C--") 'avy-goto-char-2)

  ;; Jump line or word
  (global-set-key (kbd "M-g f") 'avy-goto-line)
  (global-set-key (kbd "M-g w") 'avy-goto-word-1)
  (global-set-key (kbd "M-g e") 'avy-goto-word-0)

  (global-set-key (kbd "C-c C-j") 'avy-resume)
  )
