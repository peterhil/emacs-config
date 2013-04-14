;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
           "locale"
           "editing"
           "keyboard-shortcuts"
           "dired"
           "hex"
           "images"
           "audio"
           ;; "erc"
           ;; "textmate"
           "shell"

           ;; -- Programming tools
           ;; "cedet"
           "diff"
           "git"
           "tags"
           ;; "ecb"
           "auto-completion"
           "smart-tabs"
           "yasnippet"
           ;; "jira"

           ;; -- Markup
           ;; "org"
           "html-markup"
           "markdown"
           "wikipedia"
           ;; "multi-web-mode"
           ;; "cake"
           "zencoding"

           ;; -- Languages
           "common-lisp"
           ;; "scheme"
           ;; "lush"
           "python"
           "ruby"
           ;; "rebol"
           "coffee"
           "js"
           "php"

           ;; -- Colors
           "rainbow-mode"
           "color-theme"
           ))
  (configure include))
;; (configure "shell")
