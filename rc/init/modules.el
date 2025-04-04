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
       "avy"
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
       "company"
       ;; "diff"
       "git"
       "magit"
       ;; "tags"
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
       "opam-user-setup"
       "ocaml"

       ;; -- Languages
       "common-lisp"
       ;; "elm"
       "fennel"
       ;; "scheme"
       "haskell"
       "lua"
       ;; "lush"
       "nim"
       "python"
       ;; "elpy"
       ;; "ropemacs"
       ;; "reasonml"
       "ruby"
       ;; "rust"
       ;; "rebol"
       "php"
       ;; "eldoc-php"
       ;; "coffee"
       "js"
       ;; "js2-refactor"
       "svelte"
       "typescript"
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
