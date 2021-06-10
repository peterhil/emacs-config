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
  (load-theme 'monokai t))
