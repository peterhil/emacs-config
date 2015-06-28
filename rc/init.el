;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
           "packages"
           ;; -- Colors
           "rainbow-mode"
           "color-theme"

           ;; -- Editing
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
           ;; "w3m"

           ;; -- Programming tools
           ;; "cedet"
           ;; "dash-at-point"
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
           "web"

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
           ;; "pure"
           ))
  (configure include))
;; (configure "pure")
