;; ====================================================================
;; -- origami-mode -- https://github.com/gregsexton/origami.el
;; --------------------------------------------------------------------

(require 'origami-mode)

(setq origami-global-mode t)

(define-key origami-mode-map (kbd "C-M-z a") 'origami-toggle-all-nodes)
(define-key origami-mode-map (kbd "C-M-z o") 'origami-open-all-nodes)
(define-key origami-mode-map (kbd "C-M-z c") 'origami-close-all-nodes)

(define-key origami-mode-map (kbd "C-M-z d") 'origami-recursively-toggle-node)
(define-key origami-mode-map (kbd "C-M-z g") 'origami-toggle-node)
(define-key origami-mode-map (kbd "C-M-z s") 'origami-show-only-node)

(define-key origami-mode-map (kbd "C-M-z p") 'origami-previous-fold)
(define-key origami-mode-map (kbd "C-M-z n") 'origami-next-fold)

(define-key origami-mode-map (kbd "C-M-z z") 'origami-undo)
(define-key origami-mode-map (kbd "C-M-z x") 'origami-redo)
(define-key origami-mode-map (kbd "C-M-z r") 'origami-reset)
