;; ==============================================================================
;; Whitespace
;; ------------------------------------------------------------------------------

;; (use-package whitespace)

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

(setopt show-trailing-whitespace t)
