;; ==============================================================================
;; YASnippets
;; ------------------------------------------------------------------------------

(use-package yasnippet
  :config
  ;; (yas/initialize)
  (yas/load-directory (concat user-emacs-directory "data/snippets")))


;; Disable yas tab key

;; It is crucial you first activate yasnippet's global mode.
;; (yas/global-mode 1)

;; This illustrates how to redefine yas-expand to S-TAB.
;; (define-key yas-minor-mode-map [backtab]     'yas-expand)

;; Strangely, just redefining one of the variations below won't work.
;; All rebinds seem to be needed.
;; (define-key yas-minor-mode-map [(tab)]        nil)
;; (define-key yas-minor-mode-map (kbd "TAB")    nil)
;; (define-key yas-minor-mode-map (kbd "<tab>")  nil)
