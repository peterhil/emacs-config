;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist (include
         '(
           ;; -- Emacs lisp utility functions, make sure this is loaded first!
           "elisp"
           "emacsclient"

           ;; -- Colors
           "rainbow-mode"
           "color-theme"

           ;; -- Editing
           "locale"
           "editing"
           "regexp"
           ;; "firacode"
           "keyboard-shortcuts"
           "dired"
           "anything"

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
           "zencoding"
           "style"
           "nxhtml"
           "web"

           ;; -- Ocaml
           "opam-user-setup"
           ;; "ocaml"

           ;; -- Languages
           "common-lisp"
           "elm"
           ;; "scheme"
           "haskell"
           ;; "lush"
           "python"
           ;; "reasonml"
           "ruby"
           ;; "rebol"
           "php"
           "coffee"
           "js"
           ;; "pure"
           ))
  (configure include))
;; (configure "pure")
