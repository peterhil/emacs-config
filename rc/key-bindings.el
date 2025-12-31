;; ==============================================================================
;; Key bindings
;; ------------------------------------------------------------------------------

;; Use command key as meta, keep option and right command as they are
;; https://www.emacswiki.org/emacs/EmacsForMacOS#toc31
(when (eq system-type 'darwin)
  (setopt mac-command-modifier 'meta)
  (setopt mac-option-modifier nil)
  (setopt mac-right-command-modifier 'super)
  (setopt mac-right-option-modifier nil))

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


;; ==============================================================================
;; Mode toggles and other quick helpers
;;------------------------------------------------------------------------------

;; Auto Fill mode (insert new line beyond fill-column value)
(define-key global-map (kbd "C-c f") 'auto-fill-mode)
(define-key global-map (kbd "C-c F") 'toggle-text-mode-auto-fill)

;; Browse URL
(define-key global-map (kbd "C-c b") 'browse-url-at-point)

;; Eldoc mode
(define-key global-map (kbd "C-c e") 'eldoc-mode)

;; Visual line mode (word wrap)
(define-key global-map (kbd "C-c v") 'visual-line-mode)

;; Zencoding mode
(define-key global-map (kbd "C-c z") 'zencoding-mode)


;; ==============================================================================
;; Extra modifiers
;;------------------------------------------------------------------------------

;; Meta
(define-key function-key-map (kbd "C-c ,") 'event-apply-meta-modifier)

;; Super
(define-key function-key-map (kbd "C-c .") 'event-apply-super-modifier)

;; Hyper
(define-key function-key-map (kbd "C-c -") 'event-apply-hyper-modifier)
