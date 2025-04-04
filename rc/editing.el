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

;; Use command key as meta, keep option and right command as they are
(when (eq system-type 'darwin)
  (setopt mac-command-modifier 'meta)
  (setopt mac-option-modifier nil)
  (setopt mac-right-command-modifier 'super))

;; Turn on visible bell
(setq visible-bell t)

;; =============================================================================
;; Line numbers
;; -----------------------------------------------------------------------------

;; Show line numbers, dynamically with spaces on either side:
(global-display-line-numbers-mode 1)

(when (< emacs-major-version 29)
  (global-linum-mode 0))


;; Highlight current line
(global-hl-line-mode 0)


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
