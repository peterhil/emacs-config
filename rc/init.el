;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
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
           "projectile"
           ;; "flycheck"
           "flymake"

           ;; -- Markup
           ;; "org"
           "markdown"
           "wikipedia"
           ;; "multi-web-mode"
           ;; "cake"
           "zencoding"
           "html-markup"
           "web"

           ;; -- Colors
           "rainbow-mode"
           "color-theme"

           ;; -- Languages
           "common-lisp"
           ;; "scheme"
           "haskell"
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
