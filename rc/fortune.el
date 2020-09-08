;; =============================================================================
;; Output a fortune in scratch buffer
;; https://github.com/andschwa/fortune-cookie
;; -----------------------------------------------------------------------------

;; Inhibit startup message
(setq inhibit-startup-message t)


;; Show a fortune on *scratch* buffer on startup
(use-package "fortune-cookie"
  :if (not (and (eq system-type 'gnu/linux) (eq window-system 'x)))
  :init
  ;; (setq fortune-cookie-cowsay-args  "-f blowfish")
  (fortune-cookie-mode))


(defun my-get-fortune ()
  (interactive)
  (setq fortune-dir
    (if (eq system-type "darwin")
      "/usr/local/share/games/fortunes"
      "/usr/share/fortune"))
  (setq fortune-file (expand-file-name "cookie" fortune-dir))
  (fortune)
  (get-buffer "*fortune*"))
