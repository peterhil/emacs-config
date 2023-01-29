;; ==============================================================================
;; Customization options by Custom
;; ------------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#222627" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(anything-command-map-prefix-key "C-x a")
 '(better-fringes-mode t)
 '(c-echo-syntactic-information-p t)
 '(c-special-indent-hook '(ignore))
 '(c-tab-always-indent 'other)
 '(color-theme-is-cumulative nil)
 '(column-number-mode t)
 '(compilation-message-face 'default)
 '(create-frame-min-width 120)
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   '("4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "5eed5311ae09ed84cb2e4bf2f033eb4df27e7846a68e4ea3ab8d28f6b017e44a" "7c20c453ad5413b110ccc3bb5df07d69999d741d29b1f894bd691f52b4abdd31" "ae88c445c558b7632fc2d72b7d4b8dfb9427ac06aa82faab8d760fff8b8f243c" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "cb4c6fef7d911b858f907f0c93890c4a44a78ad22537e9707c184f7e686e8024" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c0f4b66aa26aa3fded1cbefe50184a08f5132756523b640f68f3e54fd5f584bd" "94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "bdb4509c123230a059d89fc837c40defdecee8279c741b7f060196b343b2d18d" "5a45c8bf60607dfa077b3e23edfb8df0f37c4759356682adf7ab762ba6b10600" "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "b66970f42d765a40fdb2b6b86dd2ab6289bed518cf4d8973919e5f24f0ca537b" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" default))
 '(debug-on-error t)
 '(default-input-method "finnish-keyboard")
 '(desktop-save-mode nil)
 '(dired-auto-revert-buffer 'dired-directory-changed-p)
 '(emulate-mac-finnish-keyboard-mode t)
 '(fci-rule-color "#4E5959")
 '(font-use-system-font t)
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#4E5959" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#4E5959" . 100)))
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries 'left)
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(ns-tool-bar-display-mode 'labels t)
 '(ns-tool-bar-size-mode 'regular t)
 '(one-buffer-one-frame-mode nil)
 '(package-selected-packages
   '(zonokai-theme solarized-theme poly-markdown polymode espresso-theme flatui-dark-theme flatui-theme hemisu-theme exotica-theme dracula-theme plan9-theme zeno-theme zerodark-theme spacemacs-theme jade-mode paxedit cyberpunk-2019-theme nofrils-acme-theme abyss-theme cyberpunk-theme almost-mono-themes haskell-snippets django-snippets common-lisp-snippets elixir-yasnippets alchemist elixir-mode cider-eval-sexp-fu cider ac-cider origami-mode lsp-origami which-key lsp-treemacs helm-lsp lsp-haskell markchars fennel-mode company-mode lsp-ui origami 2048-game ztree lsp-julia css-eldoc com-css-sort elpher gemini-mode paredit paredit-everywhere paredit-menu pomodoro lsp-mode web-mode-edit-element zig-mode nix-mode geiser-chicken js2-mode haml-mode magit git-commit fuzzy js2-refactor svelte-mode elmacro nhexl-mode quickrun reason-mode rust-mode expand-region markdown-mode nxml-mode elpy edit-server csv-mode undo-tree hen scheme-complete zeal-at-point use-package-ensure-system-package utop merlin fill-column-indicator faustine faust-mode fortune-cookie form-feed magit-delta fireplace use-package auto-minor-mode picolisp-mode lua-mode flymake-jslint visual-regexp auto-complete feature-mode vue-html-mode vue-mode typescript-mode xref-js2 zencoding-mode eslint-fix exec-path-from-shell csv-nav php-auto-yasnippets yaml-mode web-mode w3m uuidgen stylus-mode spacegray-theme smartparens slime scss-mode sass-mode rainbow-mode python-mode php-mode php-completion move-text monokai-theme mkdown md-readme markdown-mode+ linum-off less-css-mode json-mode jinja2-mode jazz-theme hlinum fuzzy-format flymake-php flymake-json flymake-css flymake-coffee flycheck-pyflakes flycheck-haskell flycheck-clojure editorconfig cypher-mode coffee-mode anything ag ace-jump-mode ac-dabbrev))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(safe-local-variable-values
   '((encoding . utf-8)
     (Syntax . ANSI-Common-Lisp)
     (syntax . ANSI-Common-Lisp)))
 '(save-place-mode t nil (saveplace))
 '(select-enable-clipboard t)
 '(semantic-stickyfunc-indent-string " ")
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(size-indication-mode t)
 '(split-width-threshold 240)
 '(tab-always-indent t)
 '(tab-width 4)
 '(text-mode-hook '(turn-on-auto-fill text-mode-hook-identify))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style 'forward nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF")))
 '(vc-annotate-very-old-color nil)
 '(visual-line-mode nil t)
 '(weechat-color-list
   (unspecified "#222627" "#4E5959" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(yaml-indent-offset 4))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
