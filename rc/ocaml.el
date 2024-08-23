;; ==============================================================================
;; Ocaml support
;; https://github.com/realworldocaml/book/wiki/Installation-Instructions
;; ------------------------------------------------------------------------------

;; =============================================================================
;; Tuareg: An Emacs OCaml mode
;; ------------------------------------------------------------------------------

(use-package tuareg
  :hook
  (tuareg-mode . utop-setup-ocaml-buffer)
  (tuareg-mode . merlin-mode)
  (tuareg-mode . tuareg-imenu-set-imenu)
  :mode
  "\\.ml[ily]?$"
  "\\.topml$"
  :config
  (autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t))

;; =============================================================================
;; Merlin setup
;; -----------------------------------------------------------------------------

(use-package merlin
  :hook
  ;; Enable Merlin for ML buffers
  (tuareg-mode . merlin-mode)
  :config
  (setq merlin-use-auto-complete-mode t)
  (setq merlin-error-after-save nil)

  ;; So you can do it on a mac, where `C-<up>` and `C-<down>` are used
  ;; by spaces.
  (define-key merlin-mode-map
    (kbd "C-c <up>") 'merlin-type-enclosing-go-up)
  (define-key merlin-mode-map
    (kbd "C-c <down>") 'merlin-type-enclosing-go-down)
  (set-face-background 'merlin-type-face "#88FF44"))


(use-package auto-complete
  :hook (tuareg-mode . auto-complete-mode))


(use-package ocp-indent)
