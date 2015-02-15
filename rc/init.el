;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
           "packages"
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
           "dash-at-point"
           "diff"
           "git"
           "tags"
           ;; "ecb"
           "auto-completion"
           "smart-tabs"
           ;; "yasnippet"
           ;; "jira"
           "qt"

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
