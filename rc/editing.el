;; ==============================================================================
;; Editing
;; ------------------------------------------------------------------------------

;; Whitespace
                                        ;(require 'whitespace)

;; Or autoload at least one of the commands`whitespace-mode',
;; `whitespace-toggle-options', `global-whitespace-mode' or
;; `global-whitespace-toggle-options'.  For example:

;; (autoload 'whitespace-mode           "whitespace"
;;   "Toggle whitespace visualization."        t)
(autoload 'whitespace-toggle-options "whitespace"
  "Toggle local `whitespace-mode' options." t)

(global-set-key "\C-c_w" 'whitespace-mode)
(global-set-key "\C-c_t" 'whitespace-toggle-options)
(global-set-key "\C-c=w" 'global-whitespace-mode)
(global-set-key "\C-c=t" 'global-whitespace-toggle-options)

;; Undo/redo extensions
                                        ;(require 'redo+)
(require 'undo-tree)
(global-undo-tree-mode)

(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)

;; Display line numbers in margin (fringe). Emacs 23 only.
(global-linum-mode 1) ; always show line numbers
