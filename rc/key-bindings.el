;; ==============================================================================
;; Key bindings
;; ------------------------------------------------------------------------------

;; Use command key as meta, keep option and right command as they are
;; https://www.emacswiki.org/emacs/EmacsForMacOS#toc31
(when (eq system-type 'darwin)
  (setopt mac-command-modifier 'meta)
  (setopt mac-option-modifier nil)
  (setopt mac-right-command-modifier 'super)
  (setopt mac-right-option-modifier 'hyper))

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

;; Hyper shortcuts
;; (global-set-key [(hyper h)] 'help)
(define-key function-key-map (kbd "H-e m") 'event-apply-meta-modifier)

;; Open link in browser
(define-key global-map (kbd "C-x o") 'browse-url-at-point)

;; Eldoc mode
(define-key global-map (kbd "C-h e") 'eldoc-mode)


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
