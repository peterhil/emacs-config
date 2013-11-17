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
           "markdown"
           "wikipedia"
           ;; "multi-web-mode"
           ;; "cake"
           "zencoding"
           "html-markup"

           ;; -- Colors
           "rainbow-mode"
           "color-theme"

           ;; -- Languages
           "common-lisp"
           ;; "scheme"
           ;; "lush"
           "python"
           "ruby"
           ;; "rebol"
           "php"
           "coffee"
           "js"
           ))
  (configure include))
;; (configure "shell")
