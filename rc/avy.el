;; ==============================================================================
;; Avy: Jump to things in Emacs tree-style
;; https://github.com/abo-abo/avy
;; ------------------------------------------------------------------------------

(use-package avy
  :config
  (avy-setup-default)
  :bind
  ("C-." . avy-goto-char)
  ("C--" . avy-goto-char-2)
  ("C-c C-j" . avy-resume)

  ;; Jump line or word
  ("M-g f" . avy-goto-line)
  ("M-g e" . avy-goto-word-0)
  ("M-g w" . avy-goto-word-1))
