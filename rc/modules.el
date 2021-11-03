;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(dolist(include
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
           "editorconfig"
           ;; "fuzzy-format"
           "key-bindings"
           "tabs"
           "whitespace"
           "undo-redo"
           "expand-region"
           "regexp"
           "dired"
           ;; "anything"
           "elmacro"
           "macros"

           "hex"
           ;; "images"
           ;; "audio"
           "erc"
           "shell"
           ;; "w3m"

           ;; -- Programming tools
           ;; "company"
           "diff"
           "git"
           "magit"
           ;; "tags"
           ;; "auto-completion"
           "smart-tabs"
           ;; "yasnippet"
           ;; "qt"
           "paredit"
           ;; "projectile"
           ;; "flycheck
           "flymake"
           "flymake-d"
           ;; "lsp"

           ;; -- Markup
           ;; "org"
           "markdown"
           ;; "wikipedia"
           ;; "multi-web-mode"
           ;; "zencoding"
           "style"
           ;; "tagedit"
           ;; "nxhtml"
           "nxml"
           "web"

           ;; -- Ocaml
           ;; "opam-user-setup"
           ;; "ocaml"

           ;; -- Languages
           "common-lisp"
           ;; "elm"
           ;; "scheme"
           ;; "haskell"
           "lua"
           ;; "lush"
           "python"
           ;; "elpy"
           ;; "ropemacs"
           ;; "reasonml"
           ;; "ruby"
           ;; "rust"
           ;; "rebol"
           ;; "php"
           ;; "eldoc-php"
           ;; "coffee"
           "js"
           "js2-refactor"
           "svelte"
           ;; "pure"
           "zig"

           ;; -- Misc
           ;; "extra-fun"
           ;; "fortune"
           ))
  (configure include))

(if (eq system-type "darwin")
  (configure "dash-at-point")
  (configure "zeal-at-point"))

;; (configure "pure")
