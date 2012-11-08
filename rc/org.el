;; ==============================================================================
;; Org mode
;; ------------------------------------------------------------------------------

;; Activate org mode.
;; The following lines are always needed.
(add-to-list 'auto-mode-alist
             '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook
          'turn-on-font-lock) ; not needed when global-font-lock-mode is on

;; Choose the keys that org-mode uses.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
