;; =============================================================================
;; Output a fortune in scratch buffer
;; https://github.com/andschwa/fortune-cookie
;; -----------------------------------------------------------------------------

;; (setq inhibit-startup-message t)

(use-package fortune-cookie
  :config
  ;; (setq fortune-cookie-cowsay-args  "-f tux -s")
  (fortune-cookie-mode))
