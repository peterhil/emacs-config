;; ==============================================================================
;; Reason ML - https://github.com/reasonml-editor/reason-mode
;; ------------------------------------------------------------------------------

(use-package merlin)
(use-package reason-mode
  :hook (reason-mode . (lambda ()
                         (add-hook 'before-save-hook 'refmt-before-save)
                         (merlin-mode)))
  :config
  (setq merlin-ac-setup t))


;; Setup load paths
(let* ((refmt-bin (or (shell-cmd "refmt ----where")
                      (shell-cmd "which refmt")))
       (merlin-bin (or (shell-cmd "ocamlmerlin ----where")
                       (shell-cmd "which ocamlmerlin")))
       (merlin-base-dir (when merlin-bin
                          (replace-regexp-in-string "bin/ocamlmerlin$" "" merlin-bin))))
  ;; Add npm merlin.el to the emacs load path and tell emacs where to find ocamlmerlin
  (when merlin-bin
    (add-to-list 'load-path (concat merlin-base-dir "share/emacs/site-lisp/"))
    (setopt merlin-command merlin-bin))

  (when refmt-bin
    (setq refmt-command refmt-bin)))
