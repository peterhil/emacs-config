;; ==============================================================================
;; YASnippet - https://github.com/joaotavora/yasnippet
;; ------------------------------------------------------------------------------

;; Docs:
;; https://joaotavora.github.io/yasnippet/

;; Official snippets for many languages:
;; https://github.com/AndreaCrotti/yasnippet-snippets/

(use-package yasnippet
  :bind
  ("H-<tab>" . yas-expand)
  ("C-c y e" . yas-expand)
  :init (yas-reload-all)
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-load-directory (concat user-emacs-directory "snippets"))

  ;; Use global mode or alternatively load minor mode from hooks
  (yas-global-mode -1))
