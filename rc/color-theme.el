;; ==============================================================================
;; Color Theme
;; ------------------------------------------------------------------------------

;; Aquamacs used it's own color-theme installation and library, and this seems to interfere.
;; On terminal Emacs shows these themes.
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;; (color-theme-emacs-nw)
(color-theme-gtk-ide)
;; (color-theme-midnight)

;; (require 'color-theme-solarized)
;; (color-theme-solarized-light)
