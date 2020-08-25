;; =============================================================================
;; Output a fortune in scratch buffer
;; https://github.com/andschwa/fortune-cookie
;; -----------------------------------------------------------------------------

;; inhibit startup message
(setq inhibit-startup-message t)

(use-package "fortune-cookie"
  :commands fortune
  :config
  ;; (setq fortune-cookie-cowsay-args  "-f blowfish")
  (fortune-cookie-mode))
