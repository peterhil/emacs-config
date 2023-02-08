;; ====================================================================
;; lsp-mode
;; --------------------------------------------------------------------

;; Docs:
;; https://emacs-lsp.github.io/lsp-mode/page/installation/

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :defer t
  :hook ((emacs-lisp-mode-hook . lsp-deferred)
         (prog-mode-hook . lsp-deferred)
         (zig-mode-hook . lsp-deferred))
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l"))


(use-package lsp-ui
  :commands lsp-ui-mode)


;; if you are helm user
(use-package helm-lsp
  :commands helm-lsp-workspace-symbol)

;; if you are ivy user
;; (use-package lsp-ivy
;;   :commands lsp-ivy-workspace-symbol)


(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)


(use-package lsp-origami
  :hook (lsp-after-open-hook 'lsp-origami-try-enable))


;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language


;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))
