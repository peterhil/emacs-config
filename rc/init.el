;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
           ;; -- Emacs lisp utility functions
           "elisp"

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
           "homebrew"
           ;; "cedet"
           ;; "dash-at-point"
           "diff"
           "git"
           "tags"
           ;; "ecb"
           ;; "auto-completion"
           "smart-tabs"
           ;; "yasnippet"
           ;; "jira"
           "qt"
           "projectile"
           ;; "flycheck"
           ;; "flymake"

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
