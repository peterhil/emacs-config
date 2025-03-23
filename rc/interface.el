;; ==============================================================================
;; Emacs interface options
;; ------------------------------------------------------------------------------

(setopt font-use-system-font t)
(setopt indicate-buffer-boundaries 'left)
(setopt inhibit-startup-screen t)
(setopt one-buffer-one-frame-mode nil)
(setopt size-indication-mode t)
(setopt visible-bell t)

;; Show full pathname in minibuffer
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Enable syncing clipboard and yanking only on Linux
(when (eq system-type 'linux)
  (setopt select-enable-clipboard t))
