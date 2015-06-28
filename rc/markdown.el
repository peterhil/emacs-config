;; ==============================================================================
;; Markdown
;; ------------------------------------------------------------------------------

(autoload 'markdown-mode "Markdown mode" "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.MD$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
