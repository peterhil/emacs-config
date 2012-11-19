;; ==============================================================================
;; Color Theme
;; ------------------------------------------------------------------------------

;; Aquamacs used it's own color-theme installation and library, and this seems to interfere.
;; On terminal Emacs shows these themes.
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

;; Basic themes
;; ------------------------------------------------------------------------------
;; (color-theme-emacs-nw)
;; (color-theme-gtk-ide)
;; (color-theme-midnight)

;; Solarized
;; ------------------------------------------------------------------------------
;; (require 'color-theme-solarized)
;; (color-theme-solarized-dark)

;; Almost Monokai
;; ------------------------------------------------------------------------------
;; (require 'color-theme-almost-monokai)
;; (load-file "~/.emacs.d/site-lisp/color-theme-almost-monokai/color-theme-almost-monokai.el")
;; (color-theme-almost-monokai)

;; Monokai
;; ------------------------------------------------------------------------------
;; (load-file "~/.emacs.d/site-lisp/color-theme-monokai/color-theme-monokai.el")
(require 'color-theme-monokai)
(color-theme-monokai)
