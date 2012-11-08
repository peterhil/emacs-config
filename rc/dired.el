;; ==============================================================================
;; Dired
;; ------------------------------------------------------------------------------

(require 'dired)

;; Don't ask about using "a" in dired
(put 'dired-find-alternate-file 'disabled nil)

;; Open files with command-O (special-O) on Mac/Linux:
;; http://blog.nguyenvq.com/2009/12/01/file-management-emacs-dired-to-replace-finder-in-mac-os-x-and-other-os/
(setq my-open-command
      (cond ((eq system-type "linux")
             ;; "$HOME/Documents/bin/open.sh" ; multiple files
             "nohup xdg-open" ; can open multiple files, but one at a time
             ;; "see" ; can open at most 1 file (being opened)
             )
            ((eq system-type "darwin") "open")))

(defun dired-do-shell-launch-file-default ()
  (interactive)
  (save-window-excursion
    (dired-do-async-shell-command
     my-open-command current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))
(define-key dired-mode-map (kbd "<S-M-o>") 'dired-do-shell-launch-file-default)

;; Unmount a disk in dired
;; http://loopkid.net/articles/2008/06/27/force-unmount-on-mac-os-x
(defun dired-do-shell-unmount-device ()
  (interactive)
  (save-window-excursion
    (dired-do-async-shell-command
     "umount" current-prefix-arg ;; linux
     ;; "diskutil unmount" current-prefix-arg ;; mac os x
     (dired-get-marked-files t current-prefix-arg))))
(define-key dired-mode-map (kbd "s-u") 'dired-do-shell-unmount-device)
