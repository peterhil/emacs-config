;; ==============================================================================
;; Mode-specific configs
;; ------------------------------------------------------------------------------

(defvar *my-modules*
  '(
       "interface"
       ;; -- Emacs lisp utility functions, make sure this is loaded first!
       "elisp"
       "emacsclient"

       ;; -- Colors
       "colours"
       "rainbow-mode"
       "rainbow-delimiters"
       "theme"

       ;; -- Editing
       "locale"
       "avy"
       "text-editing"
       "editorconfig"
       ;; "fuzzy-format"
       "key-bindings"
       ;; "finnish-keyboard-fix"
       "tabs"
       "whitespace"
       "undo-redo"
       "expand-region"
       "regexp"
       "dired"
       "anything"
       "elmacro"
       "macros"
       "which-key"

       "hex"
       ;; "images"
       ;; "audio"
       ;; "erc"
       "shell"
       ;; "w3m"

       ;; -- Programming tools
       "company"
       ;; "diff"
       "eldoc"
       "git"
       "magit"
       "tags"
       "smart-tabs"
       "yasnippet"
       ;; "qt"
       "paredit"
       "paxedit"
       ;; "projectile"
       "flycheck"
       ;; "flymake"
       ;; "flymake-d"
       "lsp"

       ;; -- Markup
       ;; "org"
       "markdown"
       "wikipedia"
       "multi-web-mode"
       "polymode"
       "zencoding"
       "style"
       "nxml"
       "web"

       ;; -- Ocaml
       ;; "opam-user-setup"
       "ocaml"

       ;; -- Languages
       "common-lisp"
       "elixir"
       "elm"
       "fennel"
       ;; "scheme"
       "haskell"
       "hy"
       "lua"
       ;; "lush"
       "nim"
       "python"
       ;; "elpy"
       ;; "ropemacs"
       ;; "reasonml"
       "ruby"
       "rust"
       ;; "rebol"
       "php"
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
       "fortune"
       ))

(dolist
    (include *my-modules*)
  (configure include))

(if (eq system-type "darwin")
  (configure "dash-at-point")
  (configure "zeal-at-point"))

;; (configure "pure")
