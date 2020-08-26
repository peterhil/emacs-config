;; ==============================================================================
;; Ocaml support
;; https://github.com/realworldocaml/book/wiki/Installation-Instructions
;; ------------------------------------------------------------------------------

;; =============================================================================
;; Tuareg mode
;; ------------------------------------------------------------------------------

(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)

(my-auto-mode-extensions
  'tuareg-mode
  '("\\.ml[ily]?$"
    "\\.topml$"))

(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)


;; =============================================================================
;; Merlin setup
;; -----------------------------------------------------------------------------

(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))


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
  (set-face-background 'merlin-type-face "#88FF44")
  )


(use-package auto-complete
  :hook (tuareg-mode . auto-complete-mode))


(use-package ocp-indent)
