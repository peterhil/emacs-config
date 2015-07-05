;; ==============================================================================
;; Customization options by Custom
;; ------------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 307 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(better-fringes-mode t)
 '(bongo-enabled-backends (quote (mpg123 vlc mplayer speexdec)))
 '(bongo-mplayer-extra-arguments (quote ("-fs")))
 '(bongo-mplayer-interactive t)
 '(bongo-mplayer-program-name "mplayer")
 '(bongo-vlc-interactive nil)
 '(bongo-vlc-program-name "/Applications/_Media/VLC/VLC.app/Contents/MacOS/VLC")
 '(c-echo-syntactic-information-p t)
 '(c-special-indent-hook (quote (ignore)))
 '(c-tab-always-indent (quote other))
 '(color-theme-is-cumulative t)
 '(create-frame-min-width 120)
 '(current-language-environment "UTF-8")
 '(custom-safe-themes
   (quote
    ("4ff23437b3166eeb7ca9fa026b2b030bba7c0dfdc1ff94df14dfb1bcaee56c78" "49ad7c8d458074db7392f8b8a49235496e9228eb2fa6d3ca3a7aa9d23454efc6" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" default)))
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
      (background-color . "#272822")
      (background-mode . dark)
      (cursor-color . "#73d216")
      (mouse-color . "#73d216")
      (left-fringe . -1)
      (right-fringe . -1))))
 '(default-input-method "finnish-keyboard")
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(dired-use-ls-dired nil)
 '(ecb-options-version "2.40")
 '(ecb-tree-stickynode-indent-string " ")
 '(emulate-mac-finnish-keyboard-mode t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols keep-place list log match menu move-to-prompt netsplit networks noncommands readonly ring services stamp track)))
 '(fill-column 78)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(mweb-submode-indent-offset 4)
 '(ns-tool-bar-display-mode (quote labels) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(one-buffer-one-frame-mode t nil (aquamacs-frame-setup))
 '(py-backslashed-continuation-indent 4)
 '(py-smart-indentation nil)
 '(python-guess-indent nil)
 '(safe-local-variable-values
   (quote
    ((Syntax . ANSI-Common-Lisp)
     (syntax . ANSI-Common-Lisp))))
 '(save-place t nil (saveplace))
 '(semantic-stickyfunc-indent-string " ")
 '(show-trailing-whitespace t)
 '(size-indication-mode t)
 '(split-width-threshold 240)
 '(tab-always-indent t)
 '(tab-width 4)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(visual-line-mode nil t)
 '(web-mode-code-indent-offset 4)
 '(web-mode-css-indent-offset 4)
 '(web-mode-markup-indent-offset 4)
 '(x-select-enable-clipboard t)
 '(yaml-indent-offset 4))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-mode-default ((t (:inherit autoface-default :height 110 :family "Monaco"))) t)
 '(html-helper-mode-default ((t (:inherit sgml-mode-default))) t)
 '(html-mode-default ((t (:inherit sgml-mode-default))) t)
 '(jinja2-mode-default ((t (:inherit sgml-mode-default))) t)
 '(markdown-mode-default ((t (:inherit text-mode-default :height 120 :family "Monaco"))) t)
 '(sgml-mode-default ((t (:inherit text-mode-default))) t)
 '(text-mode-default ((t (:inherit autoface-default :height 120 :family "Menlo")))))

