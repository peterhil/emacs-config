;; =============================================================================
;; Emacs server and Emacsclient
;; -----------------------------------------------------------------------------

(use-package edit-server
  :if window-system
  :init
  (add-hook 'after-init-hook 'server-start t)
  (add-hook 'after-init-hook 'edit-server-start t))


;; Define function to shutdown emacs server instance
;; Can be called from shell with: emacsclient -e '(server-shutdown)'
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

;; To start the emacs server, call:
;; (server-start)
