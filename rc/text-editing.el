;; ==============================================================================
;; Editing
;; ------------------------------------------------------------------------------

(setopt fill-column 78)
(add-hook 'text-mode-hook 'text-mode-hook-identify)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Longlines mode
(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)

;; Save-hist-mode
(setopt savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
(setopt savehist-file (concat user-emacs-directory "cache/savehist"))
(savehist-mode 1)

;; Parenthesis matching
(setopt show-paren-delay 0)
(show-paren-mode 1)

;; =============================================================================
;; Line and column numbers
;; -----------------------------------------------------------------------------

(column-number-mode 1)

;; Show line numbers, dynamically with spaces on either side:
(if (< emacs-major-version 29)
    (global-linum-mode 0)
  (global-display-line-numbers-mode 1))

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
