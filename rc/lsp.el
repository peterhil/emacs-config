;; ==============================================================================
;; lsp-mode
;; ------------------------------------------------------------------------------

;; See https://emacs-lsp.github.io/lsp-mode/page/installation/ for docs


(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :ensure t
  :defer t
  :hook ((prog-mode-hook . lsp-deferred)
         (zig-mode-hook . lsp-deferred))
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")

  ;; https://github.com/zigtools/zls/
  (setq lsp-zig-zls-executable "/Users/peterhil/code/src/zig/zls/zls-git/zig-out/bin/zls"))


(use-package lsp-ui :commands lsp-ui-mode)
