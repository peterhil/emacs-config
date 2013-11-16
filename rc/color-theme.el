;; =============================================================================
;; Color Theme
;; -----------------------------------------------------------------------------

;; Aquamacs used it's own color-theme installation and library, and this seems
;; to interfere.  On terminal Emacs shows these themes.
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;; Set themes
;; -----------------------------------------------------------------------------
(if (> (display-color-cells) 256)
  (progn
    (require 'color-theme-monokai)
    (color-theme-monokai))
  (color-theme-pok-wob))

;; Mode specific themes
;; -----------------------------------------------------------------------------
(require 'color-theme-buffer-local)
(add-hook 'html-helper-mode-hook
          (lambda ()
            (progn
              (color-theme-buffer-local 'color-theme-jsc-dark (current-buffer))
              (buffer-face-toggle))))
