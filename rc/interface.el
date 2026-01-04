;; ==============================================================================
;; Emacs interface options
;; ------------------------------------------------------------------------------

(when window-system
  (customize-set-variable 'tool-bar-mode nil))

(customize-set-variable 'font-use-system-font t)
(customize-set-variable 'indicate-buffer-boundaries 'left)
(customize-set-variable 'inhibit-startup-screen t)
(customize-set-variable 'one-buffer-one-frame-mode nil)
(customize-set-variable 'size-indication-mode t)
(customize-set-variable 'visible-bell t)

;; Show full pathname in frame titles
;; (setq frame-title-format
;;       (list (format "%s %%S: %%j " (system-name))
;;             '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Enable syncing clipboard and yanking only on Linux
(when (eq system-type 'linux)
  (customize-set-variable 'select-enable-clipboard t))
