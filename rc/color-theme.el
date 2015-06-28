;; =============================================================================
;; Color Theme
;; -----------------------------------------------------------------------------

;; Aquamacs used it's own color-theme installation and library, and this seems
;; to interfere.  On terminal Emacs shows these themes.
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;; Mode specific themes
;; -----------------------------------------------------------------------------
(require 'color-theme-buffer-local)
(add-hook 'html-helper-mode-hook
          (lambda ()
            (progn
              (color-theme-buffer-local 'color-theme-jsc-dark (current-buffer))
              (buffer-face-toggle))))

;; Set themes
;; -----------------------------------------------------------------------------
(if (> (display-color-cells) 256)
  (progn
    (require 'color-theme-monokai)
    (color-theme-monokai))
  (color-theme-pok-wob))

;; Themes form Melpa
;; -----------------------------------------------------------------------------
;; (if (> (display-color-cells) 256)
;;     (load-theme 'monokai t)
;;   (load-theme 'jazz t))

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/color-theme-mgl")
;; (load-theme 'mgl-dark t)
