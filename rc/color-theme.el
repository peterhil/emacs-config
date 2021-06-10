;; =============================================================================
;; Color Theme
;; -----------------------------------------------------------------------------

;; (if (> (display-color-cells) 256)
;;     (load-theme 'monokai t)
;;   (load-theme 'jazz t))

;; (progn
;;   (add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/color-theme-mgl"))
;;   (load-theme 'mgl-dark t))

;; (load-theme 'spacegray t)
;; (load-theme 'spacemacs-light t)
;; (load-theme 'spacemacs-dark t)
;; (load-theme 'zerodark t)

(use-package monokai-theme
  :ensure t
  :init
  (load-theme 'monokai t)

  (setq
   ;; foreground and background
   monokai-foreground     "#F8F8F2"
   monokai-background     "#272822"
   ;; highlights and comments
   monokai-comments       "#75715E"
   monokai-emphasis       "#F8F8F0"
   monokai-highlight      "#49483E"
   monokai-highlight-alt  "#3E3D31"
   monokai-highlight-line "#3C3D37"
   monokai-line-number    "#8F908A"
   ;; colours
   monokai-blue           "#66D9EF"
   monokai-cyan           "#A1EFE4"
   monokai-green          "#A6E22E"
   monokai-gray           "#64645E"
   monokai-violet         "#AE81FF"
   monokai-red            "#F92672"
   monokai-orange         "#FD971F"
   monokai-yellow         "#E6DB74"
   ))
