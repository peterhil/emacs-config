;; =============================================================================
;; Output a fortune in scratch buffer
;; https://github.com/andschwa/fortune-cookie
;; -----------------------------------------------------------------------------

;; Inhibit startup message
(setq inhibit-startup-message t)


;; Show a fortune on *scratch* buffer on startup
(use-package "fortune-cookie"
  :init
  ;; (setq fortune-cookie-cowsay-args  "-f blowfish")
  (fortune-cookie-mode))


(defun my-get-fortune ()
  (interactive)
  (setq fortune-dir "/usr/local/share/games/fortunes")
  (setq fortune-file (expand-file-name "cookie" fortune-dir))
  (fortune)
  (get-buffer "*fortune*"))
