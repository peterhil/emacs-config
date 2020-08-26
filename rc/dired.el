;; ==============================================================================
;; Dired
;; ------------------------------------------------------------------------------

(require 'dired)

;; Don't ask about using "a" in dired
(put 'dired-find-alternate-file 'disabled nil)


(defun my-dired-exec-command (command)
  "Execute a command on marked files from dired buffer."
  (interactive)
  (save-window-excursion
    (dired-do-async-shell-command
      command
      current-prefix-arg
      (dired-get-marked-files t current-prefix-arg))))


(defun dired-do-shell-launch-file-default ()
  "Open files with command-O (special-O) on Mac/Linux:
http://blog.nguyenvq.com/2009/12/01/file-management-emacs-dired-to-replace-finder-in-mac-os-x-and-other-os/
"
  (interactive)
  (save-window-excursion
    (let ((my-open-command
            (cond
              ((eq system-type "linux") "nohup xdg-open") ; can open multiple files, but one at a time
              ;; ((eq system-type "linux") "$HOME/Documents/bin/open.sh") ; multiple files
              ;; ((eq system-type "linux") "see") ; can open at most 1 file (being opened)
              ((eq system-type "darwin") "open")
              (t "open")))
      (my-dired-exec-command my-open-command)))))


(defun dired-do-shell-unmount-device ()
  "Unmount a disk in dired
http://loopkid.net/articles/2008/06/27/force-unmount-on-mac-os-x
"
  (interactive)
  (save-window-excursion
    (let ((umount
            (cond
              ((eq system-type "darwin") "diskutil unmount")
              (t "umount"))))
      (my-dired-exec-command umount))))


(defun my-dired-parent-directory ()
  "Find parent directory as alternate file"
  (interactive)
  (find-alternate-file ".."))


(define-key dired-mode-map (kbd "M-s-o") 'dired-do-shell-launch-file-default)
(define-key dired-mode-map (kbd "M-s-u") 'dired-do-shell-unmount-device)

;; Redefine dired-up-directory
(define-key dired-mode-map (kbd "^") 'my-dired-parent-directory)
