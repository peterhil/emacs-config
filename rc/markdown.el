;; ==============================================================================
;; Markdown
;; ------------------------------------------------------------------------------

(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)

(my-auto-mode-extensions
 'markdown-mode
 '("md"
   "markdown"))
