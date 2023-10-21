;; ==============================================================================
;; Editing
;; ------------------------------------------------------------------------------

(column-number-mode 1)
(setq fill-column 78)
;; (fringe-mode -1)

;; Disable eldoc globally:
;; https://emacs.stackexchange.com/questions/31414/how-to-globally-disable-eldoc
(global-eldoc-mode -1)

;; Save-hist-mode
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
(setq savehist-file (concat user-emacs-directory "cache/savehist"))
(savehist-mode 1)

;; Parenthesis matching
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Show full pathname in minibuffer
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Enable syncing clipboard and yanking only on Linux
(when (eq system-type 'linux)
  (setq x-select-enable-clipboard t))

;; Turn on visible bell
(setq visible-bell t)

;; =============================================================================
;; Line numbers
;; -----------------------------------------------------------------------------

;; Show line numbers, dynamically with spaces on either side:
(when (< emacs-major-version 29)
  (global-linum-mode 1)
  (global-display-line-numbers-mode 1))

;; (defadvice linum-update-window (around linum-dynamic activate)
;;   (let* ((w (length (number-to-string
;;                      (count-lines (point-min) (point-max)))))
;;          (linum-format (concat " %" (number-to-string w) "d ")))
;;     ad-do-it))

;; You may want to turn off linum for certain modes (this uses linum-off):
(use-package linum-off)

;; Hightlight current line
(global-hl-line-mode t)

;; Highlight the current line number (requires hlinum):
(use-package hlinum
  :config
  (hlinum-activate))


;; =============================================================================
;; Utils
;; -----------------------------------------------------------------------------

(defun my-reverse-text (beg end)
  "Reverse characters between BEG and END."
  ;; https://emacs.stackexchange.com/a/38159/16904
  (interactive "r")
  (let ((region (buffer-substring beg end)))
    (insert (nreverse
             (delete-and-extract-region beg end)))))


(defun my-create-non-existent-directory ()
  "Automatically offer to create parent directories"
  ;; http://iqbalansari.me/blog/2014/12/07/automatically-create-parent-directories-on-visiting-a-new-file-in-emacs/
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' does not exist! Create it?" parent-directory)))
      (make-directory parent-directory t))))


(add-to-list 'find-file-not-found-functions #'my-create-non-existent-directory)


;; ==============================================================================
;; Keyboard macros
;; ------------------------------------------------------------------------------

(fset 'doc-block-macro
   [tab ?/ ?* ?* return tab ?* ?* backspace ?  return tab ?* ?* backspace ?/ return tab ?\C-a up up ?\C-e])
