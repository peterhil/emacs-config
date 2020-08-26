;; =============================================================================
;; Dash at point
;; -----------------------------------------------------------------------------

;; (autoload 'dash-at-point "dash-at-point"
;;   "Search the word at point with Dash." t nil)

(use-package "dash-at-point"
  :bind (("C-c d" . dash-at-point)
         ("C-c e" . dash-at-point-with-docset)))
