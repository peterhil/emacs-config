;; =============================================================================
;; PAXedit
;; -----------------------------------------------------------------------------

;; Superbly handy mode for working with Lisp code
;; https://github.com/promethial/paxedit

(use-package paxedit
  :hook ((clojure-mode-hook . 'paxedit-mode)
         (emacs-lisp-mode-hook . 'paxedit-mode)
         (fennel-mode-hook . 'paxedit-mode)
         (lisp-mode-hook . 'paxedit-mode))
  :config
  (progn (define-key paxedit-mode-map (kbd "M-<right>") 'paxedit-transpose-forward)
         (define-key paxedit-mode-map (kbd "M-<left>") 'paxedit-transpose-backward)
         (define-key paxedit-mode-map (kbd "M-<up>") 'paxedit-backward-up)
         (define-key paxedit-mode-map (kbd "M-<down>") 'paxedit-backward-end)
         (define-key paxedit-mode-map (kbd "M-b") 'paxedit-previous-symbol)
         (define-key paxedit-mode-map (kbd "M-f") 'paxedit-next-symbol)
         (define-key paxedit-mode-map (kbd "C-%") 'paxedit-copy)
         (define-key paxedit-mode-map (kbd "C-&") 'paxedit-kill)
         (define-key paxedit-mode-map (kbd "C-*") 'paxedit-delete)
         (define-key paxedit-mode-map (kbd "C-^") 'paxedit-sexp-raise)
         ;; Symbol backward/forward kill
         (define-key paxedit-mode-map (kbd "C-S-w") 'paxedit-backward-kill)
         (define-key paxedit-mode-map (kbd "M-S-w") 'paxedit-forward-kill)
         ;; Symbol manipulation
         (define-key paxedit-mode-map (kbd "M-u") 'paxedit-symbol-change-case)
         (define-key paxedit-mode-map (kbd "C-@") 'paxedit-symbol-copy)
         (define-key paxedit-mode-map (kbd "C-#") 'paxedit-symbol-kill)))
