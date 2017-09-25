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
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 308 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(better-fringes-mode t)
 '(c-echo-syntactic-information-p t)
 '(c-special-indent-hook (quote (ignore)))
 '(c-tab-always-indent (quote other))
 '(color-theme-is-cumulative nil)
 '(compilation-message-face (quote default))
 '(create-frame-min-width 120)
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   (quote
    ("6d71a0e7567dfdd95f2c84b8b30aa057e6146a0dae1789639b555251f5e5c933" "a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" "3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" "7a8651aedf79219f9e15172bd290e0d8b6c79e4e1292b38f709edb6a593ec835" "4ff23437b3166eeb7ca9fa026b2b030bba7c0dfdc1ff94df14dfb1bcaee56c78" "49ad7c8d458074db7392f8b8a49235496e9228eb2fa6d3ca3a7aa9d23454efc6" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
 '(debug-on-error t)
 '(default-frame-alist
    (quote
     ((font-backend ns)
      (fontsize . 0)
      (menu-bar-lines . 1)
      (tool-bar-lines . 0)
      (border-color . "#0f0f0f")
      (modeline . t)
      (foreground-color . "#F8F8F2")
      (background-color . "#222222")
      (background-mode . dark)
      (cursor-color . "#73d216")
      (mouse-color . "#73d216"))))
 '(default-input-method "finnish-keyboard")
 '(desktop-save-mode t)
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(dired-use-ls-dired nil)
 '(emulate-mac-finnish-keyboard-mode t)
 '(fci-rule-color "#4E5959")
 '(fill-column 78)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(highlight-changes-colors ("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   (quote
    (("#4E5959" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#4E5959" . 100))))
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(mweb-submode-indent-offset 4)
 '(ns-tool-bar-display-mode (quote labels) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(package-selected-packages
   (quote
    (use-package php-auto-yasnippets zonokai-theme yaml-mode web-mode w3m vmd-mode uuidgen stylus-mode spacegray-theme smartparens slime scss-mode sass-mode ruby-compilation rainbow-mode qml-mode python-mode projectile php-mode php-completion paredit move-text monokai-theme mkdown md-readme markdown-mode+ magit linum-off less-css-mode json-mode js2-mode jinja2-mode jazz-theme jade-mode hlinum grizzl git-rebase-mode git-commit-mode fuzzy-format flymd flymake-php flymake-json flymake-css flymake-coffee flycheck-pyflakes flycheck-haskell flycheck-clojure erlang elm-mode elixir-mix editorconfig cypher-mode color-theme-sanityinc-tomorrow coffee-mode anything alchemist ag ack-and-a-half ace-jump-mode ac-python ac-dabbrev)))
 '(safe-local-variable-values
   (quote
    ((Syntax . ANSI-Common-Lisp)
     (syntax . ANSI-Common-Lisp))))
 '(save-place-mode t nil (saveplace))
 '(select-enable-clipboard t)
 '(semantic-stickyfunc-indent-string " ")
 '(show-trailing-whitespace t)
 '(size-indication-mode t)
 '(split-width-threshold 240)
 '(tab-always-indent t)
 '(tab-width 4)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
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
     (360 . "#66D9EF"))))
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
 '(default ((t (:family "HaskLig" :weight normal :height 120 :width normal))))
 '(dired-mode-default ((t (:inherit autoface-default :height 120 :family "HaskLig"))) t)
 '(html-helper-mode-default ((t (:inherit sgml-mode-default))) t)
 '(html-mode-default ((t (:inherit sgml-mode-default))) t)
 '(jinja2-mode-default ((t (:inherit sgml-mode-default))) t)
 '(markdown-mode-default ((t (:inherit sgml-mode-default :height 130 :family "HaskLig"))) t)
 '(prog-mode-default ((t (:inherit default :height 120 :family "HaskLig"))) t)
 '(sgml-mode-default ((t (:inherit text-mode-default :height 130))) t)
 '(text-mode-default ((t (:inherit default :height 120 :family "HaskLig"))))
 '(web-mode-default ((t (:inherit sgml-mode-default))) t))
