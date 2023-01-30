;; =============================================================================
;; Color Theme
;; -----------------------------------------------------------------------------

;; (if (> (display-color-cells) 256)
;;     (load-theme 'monokai t)
;;   (load-theme 'jazz t))

;; (progn
;;   (add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/color-theme-mgl"))
;;   (load-theme 'mgl-dark t))

(setq
 ;; foreground and background
 monokai-foreground     "#F8F8F2"
 monokai-background     "#222627"
 ;; highlights and comments
 monokai-comments       "#71756E"
 monokai-emphasis       "#F8F8F0"
 monokai-highlight      "#364142"
 monokai-highlight-alt  "#313D3E"
 monokai-highlight-line "#4E5959"
 monokai-line-number    "#71756E"
 ;; colours
 monokai-blue           "#66D9EF"
 monokai-cyan           "#A1EFE4"
 monokai-green          "#A6E22E"
 monokai-gray           "#64645E"
 monokai-violet         "#AE81FF"
 monokai-red            "#F92672"
 monokai-orange         "#FD971F"
 monokai-yellow         "#E6DB74")

(setq
 monokai-height-minus-1 0.8
 monokai-height-plus-1 1.1
 monokai-height-plus-2 1.15
 monokai-height-plus-3 1.2
 monokai-height-plus-4 1.3)

;; (use-package monokai-theme
;;   :ensure t
;;   :init
;;   (load-theme 'monokai t))

;;; Dark themes
;; (load-theme 'cyberpunk-2019 t)
;; (load-theme 'dracula t)
;; (load-theme 'almost-mono-gray t)
;; (load-theme 'zeno t)
;; (load-theme 'exotica t)
;; (load-theme 'spacegray t)
;; (load-theme 'spacemacs-dark t)
;; (load-theme 'hemisu-dark t)
;; (load-theme 'abyss t)
;; (load-theme 'cyberpunk t)
(load-theme 'graham t)
;; (load-theme 'hickey t)
;; (load-theme 'spolsky t)
;; (load-theme 'mbo70s t)

;;; Light themes
;; (load-theme 'flatui t)
;; (load-theme 'espresso t)
;; (load-theme 'plan9 t)
;; (load-theme 'hemisu-light t)
;; (load-theme 'almost-mono-white t)
;; (load-theme 'nofrils-acme t)
;; (load-theme 'spacemacs-light t)
;; (load-theme 'solarized-light t)
