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

;; Left option as meta, right as option
;; https://www.emacswiki.org/emacs/EmacsForMacOS#toc31
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'meta)
  (setq mac-right-option-modifier nil)
  )

;; My bindings
(define-key global-map (kbd "C-'") 'comment-or-uncomment-region)
(define-key global-map (kbd "C-M-'") 'uncomment-region)

(define-key global-map (kbd "s-<") 'next-window-any-frame)
(define-key global-map (kbd "s->") 'previous-window-any-frame)

(global-set-key [mouse-8] 'scroll-up-command)
(global-set-key [mouse-9] 'scroll-down-command)

(global-set-key [M-mouse-8] 'next-buffer)
(global-set-key [M-mouse-9] 'previous-buffer)

(define-key global-map (kbd "ESC M-r") 'my-reverse-text)

;; Backspace
;; See http://www.emacswiki.org/emacs/BackspaceKey
;; (global-set-key [(control h)] 'delete-backward-char)

;; Help
(global-set-key [(hyper h)] 'help)

;; Eldoc mode
(define-key global-map (kbd "C-h e") 'eldoc-mode)
