;; ==============================================================================
;; Ocaml support
;; http://ocamlverse.net/content/editor_setup.html#manual-setup
;; ------------------------------------------------------------------------------

;; Tuareg: An Emacs OCaml mode
(use-package tuareg
  :ensure t
  :mode (("\\.ocamlinit\\'" . tuareg-mode)))

(use-package dune
  :ensure t)

(use-package merlin
  :ensure t
  :hook ((tuareg-mode . merlin-mode)
         (merlin-mode . company-mode))
  :config
  ;; Using flycheck instead
  (setopt merlin-error-after-save nil))

(use-package merlin-eldoc
  :ensure t
  :hook (tuareg-mode . merlin-eldoc-setup))

;; This uses Merlin internally
(use-package flycheck-ocaml
  :ensure t
  :config (flycheck-ocaml-setup))

;; (use-package ocp-indent)
