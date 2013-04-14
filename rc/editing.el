;; ==============================================================================
;; Editing
;; ------------------------------------------------------------------------------

; Show full pathname in minibuffer
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;; ==============================================================================
;; Keyboard macros
;; ------------------------------------------------------------------------------

(fset 'doc-block-macro
   [tab ?/ ?* ?* return tab ?* ?* backspace ?  return tab ?* ?* backspace ?/ return tab ?\C-a up up ?\C-e])


;; ==============================================================================
;; Extra modifiers
;;------------------------------------------------------------------------------

;; Meta
(define-key function-key-map (kbd "C-c m") 'event-apply-meta-modifier)
(define-key function-key-map (kbd "<f16>") 'event-apply-meta-modifier)
(define-key function-key-map (kbd "<S-f6>") 'event-apply-meta-modifier)

;; Super
(define-key function-key-map (kbd "C-c s") 'event-apply-super-modifier)
(define-key function-key-map (kbd "<f17>") 'event-apply-super-modifier)
(define-key function-key-map (kbd "<S-f7>") 'event-apply-super-modifier)

;; Hyper
(define-key function-key-map (kbd "C-c h") 'event-apply-hyper-modifier)
(define-key function-key-map (kbd "<f18>") 'event-apply-hyper-modifier)
(define-key function-key-map (kbd "<S-f8>") 'event-apply-hyper-modifier)


;; ==============================================================================
;; Key bindings
;; ------------------------------------------------------------------------------

;; Backspace

;; See http://www.emacswiki.org/emacs/BackspaceKey
(global-set-key [(control h)] 'delete-backward-char)

;; Help
(global-set-key [(hyper h)] 'help)

(global-set-key (kbd "<f5>") 'copy-buffer-dir)


;; ==============================================================================
;; Whitespace
;; ------------------------------------------------------------------------------

;; (require 'whitespace)

;; Or autoload at least one of the commands:
;; `whitespace-mode'
;; `whitespace-toggle-options'
;; `global-whitespace-mode'
;; `global-whitespace-toggle-options'

;; (autoload 'whitespace-mode           "whitespace"
;;   "Toggle whitespace visualization."        t)

(autoload 'whitespace-toggle-options "whitespace"
  "Toggle local `whitespace-mode' options." t)

(global-set-key (kbd "H-w w") 'whitespace-mode)
(global-set-key (kbd "H-w t") 'whitespace-toggle-options)
(global-set-key (kbd "H-w W") 'global-whitespace-mode)
(global-set-key (kbd "H-w T") 'global-whitespace-toggle-options)


;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

;(require 'redo+)

(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "H-x u") 'global-undo-tree-mode)

(define-key function-key-map (kbd "H-z") 'undo)
(define-key function-key-map (kbd "H-Z") 'redo)


(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)

;; Display line numbers in margin (fringe). Emacs 23 only.
(global-linum-mode 1) ; always show line numbers
