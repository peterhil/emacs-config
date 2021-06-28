;; ==============================================================================
;; lsp-mode
;; ------------------------------------------------------------------------------

;; See https://emacs-lsp.github.io/lsp-mode/page/installation/ for docs

(require 'lsp-mode)

(use-package "lsp-mode"
  :commands (lsp lsp-deferred)
  :ensure t
  :defer t
  :hook ((prog-mode-hook . lsp)
         (zig-mode-hook . lsp))
  :config
  ;; https://github.com/zigtools/zls/
  (setq lsp-zig-zls-executable "/Users/peterhil/code/src/zig/zls/zls-git/zig-out/bin/zls"))
