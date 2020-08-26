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
           "expand-region"
           "regexp"
           "dired"
           "anything"

           "hex"
           "images"
           ;; "audio"
           ;; "erc"
           "shell"
           ;; "w3m"

           ;; -- Programming tools
           ;; "dash-at-point"
           "diff"
           "git"
           "magit"
           "tags"
           ;; "auto-completion"
           "smart-tabs"
           ;; "yasnippet"
           ;; "qt"
           ;; "projectile"
           ;; "flycheck
           "flymake"
           "flymake-d"

           ;; -- Markup
           ;; "org"
           "markdown"
           "wikipedia"
           ;; "multi-web-mode"
           ;; "zencoding"
           "style"
           ;; "nxhtml"
           "nxml"
           "web"

           ;; -- Ocaml
           ;; "opam-user-setup"
           ;; "ocaml"

           ;; -- Languages
           "common-lisp"
           ;; "elm"
           "scheme"
           "haskell"
           "lua"
           ;; "lush"
           "python"
           "elpy"
           ;; "ropemacs"
           ;; "reasonml"
           "ruby"
           ;; "rebol"
           ;; "php"
           ;; "coffee"
           "js"
           "json"
           "js2-refactor"
           ;; "pure"

           ;; -- Misc
           "extra-fun"
           "fortune"
           ))
  (configure include))

;; (configure "pure")
