;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(defvar *my-modules*
  '(
       ;; -- Emacs lisp utility functions, make sure this is loaded first!
       "elisp"
       "emacsclient"

       ;; -- Colors
       "rainbow-mode"
       "theme"

       ;; -- Editing
       "locale"
       "ace-jump"
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
       ;; "erc"
       ;; "shell"
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
       "paxedit"
       ;; "projectile"
       ;; "flycheck
       "flymake"
       ;; "flymake-d"
       "lsp"

       ;; -- Markup
       ;; "org"
       "markdown"
       ;; "wikipedia"
       ;; "multi-web-mode"
       "polymode"
       "zencoding"
       "style"
       "nxml"
       "web"

       ;; -- Ocaml
       ;; "opam-user-setup"
       ;; "ocaml"

       ;; -- Languages
       "common-lisp"
       ;; "elm"
       "fennel"
       ;; "scheme"
       "haskell"
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
       ;; "js2-refactor"
       "svelte"
       ;; "pure"
       ;; "supercollider"
       "v"
       "zig"

       ;; -- Misc
       ;; "extra-fun"
       ;; "fortune"
       ))

(dolist
    (include *my-modules*)
  (configure include))

(if (eq system-type "darwin")
  (configure "dash-at-point")
  (configure "zeal-at-point"))

;; (configure "pure")
