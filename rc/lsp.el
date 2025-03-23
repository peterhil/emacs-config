;; ====================================================================
;; LSP mode - https://emacs-lsp.github.io/lsp-mode/
;; --------------------------------------------------------------------

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((emacs-lisp-mode . lsp-deferred)
         (prog-mode . lsp-deferred)
         (zig-mode . lsp-deferred))
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")

  :config
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
    :hook (lsp-after-open . lsp-origami-try-enable)))


;; Debug Adapter Protocol is a wire protocol for communication between client
;; and Debug Server. It’s similar to the LSP but provides integration with
;; debug server.
;;
;; https://github.com/emacs-lsp/dap-mode
(use-package dap-mode
  :disabled
  :config
  ;; Load dap adapters for your languages
  (require 'dap-python))
